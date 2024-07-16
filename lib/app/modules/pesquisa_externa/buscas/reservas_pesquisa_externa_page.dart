import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/modules/email/controllers/configurar_email_controller.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/modules/pesquisa_externa/buscas/controllers/buscas_externa_controller.dart';
import '../../../classes/classes_do_app/class_app_colors.dart';
import '../../../classes/classes_do_app/class_app_estilos_texto.dart';
import '../../../shared/widgets/custom_elevated_button_widget.dart';
import '../../../shared/widgets/custom_text_form_field_widget.dart';
import '../../../shared/widgets/snack_bar_widget.dart';
import '../../login/widgets/text_form_field_widget.dart';
import '../../reservas/controllers/reservas_controller.dart';
class ReservasPesquisaExternaPage extends StatelessWidget {
  final BuscasExternaController buscasController;
  final ConfigurarEmailController emailController;
  final ReservasController reservasController;
  final int index;

  const ReservasPesquisaExternaPage({super.key, required this.buscasController, required this.index, required this.reservasController, required this.emailController});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32),
        child: Form(
          key: reservasController.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormFieldWidget(
                  titulo: 'CPF',
                  controller: reservasController.cpfReservaController,
                  validator: true,
                  inputFormatters: [
                    reservasController.maskCpf,
                    LengthLimitingTextInputFormatter(14),
                  ],
                  width: 250,
                  length: 11,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  titulo: 'Nome',
                  validator: true,
                  width: 500,
                  controller: reservasController.nomeController,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  titulo: 'Email',
                  width: 600,
                  controller: reservasController.emailController,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  titulo: 'Celular',
                  controller: reservasController.celularController,
                  width: 300,
                  inputFormatters: [
                    reservasController.maskCelular,
                    LengthLimitingTextInputFormatter(15),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  titulo: 'Data reserva',
                  enabled: false,
                  controller: reservasController.reservaDataController..text = DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  width: 300,
                   inputFormatters: [
                    reservasController.maskCelular,
                    LengthLimitingTextInputFormatter(15),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomElevatedButtonWidget(
                  titulo: 'Reservar',
                  cor: ClassAppColors.verde,
                  icone: Icons.check_circle_rounded,
                  onPressed: () async {
                    context.read<ReservasController>().checharReservaIgual(
                    livroDataID: buscasController.lstLivros[index].livrosDataID.toString(), 
                    cpf: reservasController.cpfReservaController.text.trim(),
                    ).then((value) async {
                      if (value.mensagem.isNotEmpty && buscasController.lstLivros[index].livroReservado == 'False') {
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Opps!', style: ClassAppEstilosTexto.preto16w400Montserrat),
                              content: Text(value.mensagem, style: ClassAppEstilosTexto.preto16w400Montserrat),
                              actions: [
                                CustomElevatedButtonWidget(
                                  titulo: 'Ok',
                                  icone: Icons.check_circle_rounded,
                                  onPressed: () {
                                    context.read<ReservasController>().limparControllers();
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        if ((buscasController.lstLivros[index].livroSituacao == 'Emprestado' || buscasController.lstLivros[index].livroSituacao == 'Disponível') && buscasController.lstLivros[index].livroReservado == 'False') {
                          //Envia email para usuário que fez reserva
                          await context.read<ConfigurarEmailController>().sendEmail(
                            contaID: session.clEmpresaLogada.contaID,
                            assunto: 'Reserva livro',
                            mensagem: 'O livro  ${buscasController.lstLivros[index].$a_nomePessoal_100} foi reservado com sucesso.',
                            lstDestinatarios: ['${reservasController.nomeController.text.trim()};${reservasController.emailController.text.trim()}'],
                          );
                          //Método de registrar a reserva e retornar resposta ao usuário na tela
                          await reservasController.reservarLivro(
                            exemplarNumero: buscasController.lstLivros[index].exemplarNumero.toString(),
                            livroDataID: buscasController.lstLivros[index].livrosDataID.toString(),
                          ).then((response) async {
                            if (response.codigoRetorno.toString() == "201") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45),
                              );
                              Navigator.pop(context);
                              context.read<ReservasController>().limparControllers();
                              context.read<BuscasExternaController>().limparListaLivros();
                              await context.read<BuscasExternaController>().getLivroPorNomePesquisaExterna( nome: buscasController.pesquisarController.text.trim());
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao realizar reserva.', largura: size.width * 0.37, altura: size.height * 0.45,
                              ));
                            }
                          });
                        } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Opps!',
                                  style: ClassAppEstilosTexto.preto16w400Montserrat),
                              content: Text('Este livro já está reservado!',
                                  style: ClassAppEstilosTexto.preto16w400Montserrat),
                              actions: [
                                CustomElevatedButtonWidget(
                                  titulo: 'Ok',
                                  icone: Icons.check_circle_rounded,
                                  onPressed: () {
                                    context.read<ReservasController>().limparControllers();
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                        }
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
