import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../classes/classes_do_app/class_app_colors.dart';
import '../../classes/classes_do_app/class_app_estilos_texto.dart';
import '../../shared/widgets/custom_elevated_button_widget.dart';
import '../../shared/widgets/custom_text_form_field_widget.dart';
import '../../shared/widgets/snack_bar_widget.dart';
import '../buscas/controllers/buscas_controller.dart';
import '../login/widgets/text_form_field_widget.dart';
import 'controllers/emprestimo_controller.dart';

class EmprestimoPage extends StatelessWidget {
  final EmprestimoController emprestimoController;
  final BuscasController buscasController;
  final int index;

  const EmprestimoPage({
    super.key,
    required this.emprestimoController,
    required this.buscasController,
    required this.index,
  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32),
          child: Form(
            key: emprestimoController.formKey,
            child: StatefulBuilder(builder: (context, setState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: TextFormFieldWidget(
                          titulo: 'CPF',
                          controller: emprestimoController.emprestimoCPFController,
                          validator: true,
                          inputFormatters: [
                            emprestimoController.maskCpf,
                            LengthLimitingTextInputFormatter(14),
                          ],
                          width: 250,
                          length: 11,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Flexible(
                        child: CustomElevatedButtonWidget(
                            titulo: 'Pesquisar',
                            icone: Icons.search_rounded,
                            cor: ClassAppColors.verde,
                            onPressed: () async {
                              if (buscasController.lstLivros[index].livroReservado == 'True') {
                                await context.read<EmprestimoController>().getReservaEmprestimoLivro(
                                  livroDataID: buscasController.lstLivros[index].livrosDataID.toString(),
                                ).then((value) {
                                  if (value.cpf.isEmpty) {
                                    showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Opps!',
                                            style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                                        content: Text(
                                            'Reserva não encontrada, por favor tente novamente.',
                                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                                        actions: [
                                          CustomElevatedButtonWidget(
                                            titulo: 'Ok',
                                            icone: Icons.check_circle_rounded,
                                            onPressed: () {
                                              context.read<EmprestimoController>().limparControllers();
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                                  } else {
                                    emprestimoController.nomeController.text = value.nome;
                                    emprestimoController.emailController.text = value.email;
                                    emprestimoController.celularController.text = value.celular;
                                  }
                                });
                              } else {
                                await context.read<EmprestimoController>().getEmprestimoLivro().then((value) {
                                  if (value.erro.isNotEmpty) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('Opps!',
                                                style: ClassAppEstilosTexto.preto16w400Montserrat),
                                            content: Text(
                                                'CPF não encontrado, por favor tente novamente.',
                                                style: ClassAppEstilosTexto.preto16w400Montserrat),
                                            actions: [
                                              CustomElevatedButtonWidget(
                                                titulo: 'Ok',
                                                icone: Icons.check_circle_rounded,
                                                onPressed: () {
                                                  context.read<EmprestimoController>().limparControllers();
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                    } else {
                                      emprestimoController.nomeController.text = value.nome ?? '';
                                      emprestimoController.emailController.text = value.email ?? '';
                                      emprestimoController.celularController.text = value.telefone ?? '';
                                  }
                                });
                              }
                            },
                        height: 55.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    titulo: 'Nome',
                    width: 500,
                    validator: true,
                    controller: emprestimoController.nomeController,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    titulo: 'Email',
                    width: 600,
                    validator: true,
                    controller: emprestimoController.emailController,
                  ),
                  const SizedBox(height: 16.0),
                  TextFormFieldWidget(
                    titulo: 'Telefone',
                    controller: emprestimoController.telefoneController,
                    width: 300,
                    inputFormatters: [
                    emprestimoController.maskTelefone,
                    LengthLimitingTextInputFormatter(9),
                  ],
                  ),
                  const SizedBox(height: 16.0),
                  TextFormFieldWidget(
                    titulo: 'Celular',
                    controller: emprestimoController.celularController,
                    width: 300,
                    inputFormatters: [
                    emprestimoController.maskCelular,
                    LengthLimitingTextInputFormatter(15),
                  ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Flexible(
                        child: TextFormFieldWidget(
                          titulo: 'Data empréstimo',
                          controller: emprestimoController.dataEmprestimoController..text = DateFormat('dd/MM/yyyy').format(DateTime.now()),
                          width: 250,
                          validator: true,
                          length: 10,
                          inputFormatters: [
                            emprestimoController.maskData,
                            LengthLimitingTextInputFormatter(10),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Flexible(
                          child: TextFormFieldWidget(
                        titulo: 'Entrega prevista',
                        validator: true,
                        controller: emprestimoController.dataEntregaPrevistaController..text = DateFormat('dd/MM/yyyy').format(DateTime.now().add(const Duration(days: 5))),
                        width: 250,
                        length: 10,
                        inputFormatters: [
                            emprestimoController.maskData,
                            LengthLimitingTextInputFormatter(10),
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    titulo: 'Observações',
                    controller: emprestimoController.observacoesEmprestimoController,
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: CustomElevatedButtonWidget(
                            titulo: 'Emprestar',
                            icone: Icons.check_circle_rounded,
                            onPressed: () async {
                              if (buscasController.lstLivros[index].livroSituacao == 'Emprestado') {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Opps!', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                        content: Text('Este livro já está emprestado!', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                        actions: [
                                          CustomElevatedButtonWidget(
                                            titulo: 'Ok',
                                            icone: Icons.check_circle_rounded,
                                            onPressed: () {
                                              context.read<EmprestimoController>().limparControllers();
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              }
                              if (buscasController.lstLivros[index].livroSituacao == 'Disponível' && buscasController.lstLivros[index].livroReservado == 'False') {
                                  await context.read<EmprestimoController>().setEmprestimoLivro(
                                    livroDataID: buscasController.lstLivros[index].livrosDataID.toString(), 
                                    exemplarNumero: buscasController.lstLivros[index].exemplarNumero.toString(),
                                    ).then((response) async {
                                    if (response.codigoRetorno.toString() == "201") {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45));
                                      context.read<EmprestimoController>().limparControllers();
                                      Navigator.pop(context);
                                      context.read<BuscasController>().limparListaLivros();
                                      await context.read<BuscasController>().getLivroPorNome(
                                        nome: buscasController.pesquisarController.text.trim()
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBarWidget( cor: ClassAppColors.vermelho, mensagem: 'Falha ao realizar empréstimo.', largura: size.width * 0.37,altura: size.height * 0.45));
                                  } 
                                });
                              }
                              else if (buscasController.lstLivros[index].livroSituacao == 'Disponível' && buscasController.lstLivros[index].livroReservado == 'True') {
                                await context.read<EmprestimoController>().getReservaEmprestimoLivro(
                                    livroDataID: buscasController.lstLivros[index].livrosDataID.toString(),
                                  ).then((response) async {
                                    if (response.cpf == emprestimoController.emprestimoCPFController.text) {
                                       await context.read<EmprestimoController>().setEmprestimoLivro(
                                        livroDataID: buscasController.lstLivros[index].livrosDataID.toString(), 
                                        exemplarNumero: buscasController.lstLivros[index].exemplarDataID.toString(),
                                        ).then((response) async {
                                        if (response.codigoRetorno.toString() == "201") {
                                          ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45));
                                          context.read<EmprestimoController>().limparControllers();
                                          Navigator.pop(context);
                                          context.read<BuscasController>().limparListaLivros();
                                          await context.read<BuscasController>().getLivroPorNome(
                                            nome: buscasController.pesquisarController.text.trim()
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBarWidget( cor: ClassAppColors.vermelho, mensagem: 'Falha ao realizar empréstimo.', largura: size.width * 0.37,altura: size.height * 0.45));
                                      } 
                                    }); 
                                  } else {
                                    showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Opps!',
                                            style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                                        content: Text(
                                            'A reserva do livro não foi para o CPF informado, por favor tente novamente.',
                                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                                        actions: [
                                          CustomElevatedButtonWidget(
                                            titulo: 'Ok',
                                            icone: Icons.check_circle_rounded,
                                            onPressed: () {
                                              context.read<EmprestimoController>().limparControllers();
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    });
                                  }
                                }   
                              );
                            }
                          }),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
