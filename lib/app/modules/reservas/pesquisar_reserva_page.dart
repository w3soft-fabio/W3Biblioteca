import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/modules/reservas/controllers/reservas_controller.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import '../../classes/classes_do_app/class_app_colors.dart';
import '../../classes/classes_do_app/class_app_estilos_texto.dart';
import '../../shared/widgets/custom_elevated_button_widget.dart';
import '../../shared/widgets/snack_bar_widget.dart';
import '../buscas/widgets/botao_limpar_pesquisa_widget.dart';
import '../login/widgets/text_form_field_widget.dart';

class PesquisarReservaPage extends StatelessWidget {
  const PesquisarReservaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var reservasController = context.watch<ReservasController>();
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Reservas'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32.0),
        child: Form(
          key: reservasController.formKey,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: TextFormFieldWidget(
                        titulo: 'Nº exemplar',
                        width: 150,
                        controller: reservasController.exemplarNumeroController,
                        validator: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(7)
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Flexible(
                      child: CustomElevatedButtonWidget(
                        titulo: 'Pesquisar',
                        icone: Icons.search_rounded,
                        height: 55,
                        onPressed: () async {
                          if(reservasController.formKey.currentState!.validate()) {
                            await context.read<ReservasController>().pesquisarReserva().then((lista) {
                              if(lista.isEmpty){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Nenhuma reserva encontrada. Por favor, tente novamente.', largura: size.width * 0.3, altura: size.height * 0.45));
                              }
                            });
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    BotaoLimparPesquisaWidget(
                    onPressed: () {
                      context.read<ReservasController>().limparListaReservas();
                      context.read<ReservasController>().limparControllers();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                reservasController.isLoading == true ? const Center(child: CircularProgressIndicator()) : 
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: reservasController.lstReservas.length,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nome: ${reservasController.lstReservas.elementAt(index).nome}',
                                    style: ClassAppEstilosTexto.preto16w400Montserrat,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    'Situação: ${reservasController.lstReservas.elementAt(index).reservaSituacao}',
                                    style: ClassAppEstilosTexto.preto16w400Montserrat,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    'CPF: ${reservasController.lstReservas.elementAt(index).cpf}',
                                    style: ClassAppEstilosTexto.preto16w400Montserrat,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    'Email: ${reservasController.lstReservas.elementAt(index).email}',
                                    style: ClassAppEstilosTexto.preto16w400Montserrat,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    'Data reserva: ${DateFormat("dd/MM/yyyy").format(DateTime.parse(reservasController.lstReservas.elementAt(index).reservaData.substring(0, 10)))}',
                                    style: ClassAppEstilosTexto.preto16w400Montserrat,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: CustomElevatedButtonWidget(
                                titulo: 'Cancelar',
                                icone: Icons.cancel_rounded,
                                cor: ClassAppColors.vermelho,
                                onPressed: () async {
                                  showDialog(context: context, 
                                    builder: (context) {
                                      return AlertDialog(
                                        actionsAlignment: MainAxisAlignment.center,
                                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                                        title: Text('Tem certeza que deseja cancelar esta reserva?', style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                                        content:  Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text('Você está cancelando a reserva do(a): ${reservasController.lstReservas.elementAt(index).nome}', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          CustomElevatedButtonWidget(titulo: 'Sim', icone: Icons.check_circle_outline_rounded,
                                          cor: ClassAppColors.verde,
                                          onPressed: () async {
                                              await context.read<ReservasController>().cancelarReserva(
                                                exemplarNumero: reservasController.lstReservas.elementAt(index).exemplarNumero.toString(), 
                                                livroDataID: reservasController.lstReservas.elementAt(index).livroDataID.toString(), 
                                                reservasDataID: reservasController.lstReservas.elementAt(index).reservasDataID.toString(), 
                                                cpf: reservasController.lstReservas.elementAt(index).cpf,
                                              ).then((response) {
                                                if(response.codigoRetorno.toString() == "201"){
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                                  );
                                                  context.read<ReservasController>().limparListaReservas();
                                                  Navigator.pop(context);
                                                } else {
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao fazer cancelar reserva.', largura: size.width * 0.3, altura: size.height * 0.45)
                                                  );
                                                }
                                              });
                                            },
                                          ),
                                          CustomElevatedButtonWidget(titulo: 'Não', icone: Icons.cancel_rounded, 
                                            cor: ClassAppColors.vermelho, 
                                            onPressed: () => Navigator.pop(context),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    );
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
