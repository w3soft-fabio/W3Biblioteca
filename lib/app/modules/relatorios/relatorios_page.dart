import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/modules/relatorios/controllers/relatorio_controller.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';
import '../../classes/classes_do_app/class_app_estilos_texto.dart';
import 'widgets/custom_text_button_relatorio_widget.dart';

class RelatoriosPage extends StatelessWidget {
  const RelatoriosPage({super.key});

  @override
  Widget build(BuildContext context) {
    var relatorioController = context.watch<RelatorioController>();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Relatórios'),
      body: relatorioController.isLoading == true ? const Center(child: CircularProgressIndicator()) : 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //1ª Panel
                  SizedBox(
                    width: size.width * 0.35,
                    child: ExpansionPanelList(
                      expansionCallback: (panelIndex, isExpanded) {
                        context.read<RelatorioController>().expandirPanel_1();
                      },
                      children: [
                        ExpansionPanel(
                          isExpanded: relatorioController.valuePanel_1,
                          headerBuilder: (context, isExpanded) {
                            return ListTile(
                              title: Text(
                                'Empréstimos',
                                style: ClassAppEstilosTexto.azul18w500Montserrat,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          },
                          body: ListView(
                            shrinkWrap: true,
                            children: [
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Empréstimos em aberto',
                                selected: relatorioController.relatorioEmprestimo_1,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioEmprestimo_1();
                                  if (relatorioController.relatorioEmprestimo_1 == true) {
                                    relatorioController.relatorioID.text = "0";
                                    context.read<RelatorioController>().visualizarFiltroDeEmprestimo();
                                  } else {
                                    relatorioController.relatorioID.clear();
                                    context.read<RelatorioController>().visualizarFiltroDeEmprestimo();
                                  }
                                },
                              ),const SizedBox(height: 8.0),
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Empréstimos em atraso',
                                selected: relatorioController.relatorioEmprestimo_2,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioEmprestimo_2();
                                  if (relatorioController.relatorioEmprestimo_2 == true) {
                                    relatorioController.relatorioID.text = "1";
                                  } else {
                                     relatorioController.relatorioID.clear();
                                  }
                                },
                              ),
                              const SizedBox(height: 8.0),
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Títulos nunca emprestados',
                                selected: relatorioController.relatorioEmprestimo_3,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioEmprestimo_3();
                                  if (relatorioController.relatorioEmprestimo_3) {
                                    relatorioController.relatorioID.text = "2";
                                  } else {
                                     relatorioController.relatorioID.clear();
                                  }
                                },
                              ),
                              const SizedBox(height: 8.0),
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Títulos mais emprestados',
                                selected: relatorioController.relatorioEmprestimo_4,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioEmprestimo_4();
                                  if (relatorioController.relatorioEmprestimo_4) {
                                    relatorioController.relatorioID.text = "3";
                                  } else {
                                     relatorioController.relatorioID.clear();
                                  }
                                },
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  //2ª Panel
                  SizedBox(
                    width: size.width * 0.35,
                    child: ExpansionPanelList(
                      expansionCallback: (panelIndex, isExpanded) {
                        context.read<RelatorioController>().expandirPanel_2();
                      },
                      children: [
                        ExpansionPanel(
                          isExpanded: relatorioController.valuePanel_2,
                          headerBuilder: (context, isExpanded) {
                            return ListTile(
                              title: Text(
                                'Reservas',
                                style: ClassAppEstilosTexto.azul18w500Montserrat,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          },
                          body: ListView(
                            shrinkWrap: true,
                            children: [
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Títulos com reservas em aberto',
                                selected: relatorioController.relatorioReserva_1,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioReserva_1();
                                  if (relatorioController.relatorioReserva_1 == true) {
                                    relatorioController.relatorioID.text = "4";
                                  } else {
                                     relatorioController.relatorioID.clear();
                                  }
                                },
                              ),
                              const SizedBox(height: 8.0),
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Títulos mais reservados',
                                selected: relatorioController.relatorioReserva_2,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioReserva_2();
                                  if (relatorioController.relatorioReserva_2 == true) {
                                    relatorioController.relatorioID.text = "5";
                                  } else {
                                     relatorioController.relatorioID.clear();
                                  }
                                },
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  //3ª Panel
                  SizedBox(
                    width: size.width * 0.35,
                    child: ExpansionPanelList(
                      expansionCallback: (panelIndex, isExpanded) {
                        context.read<RelatorioController>().expandirPanel_3();
                      },
                      children: [
                        ExpansionPanel(
                          isExpanded: relatorioController.valuePanel_3,
                          headerBuilder: (context, isExpanded) {
                            return ListTile(
                              title: Text(
                                'Multas',
                                style: ClassAppEstilosTexto.azul18w500Montserrat,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          },
                          body: ListView(
                            shrinkWrap: true,
                            children: [
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Multas pagas',
                                selected: relatorioController.relatorioMultas_1,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioMultas_1();
                                  if (relatorioController.relatorioMultas_1 == true) {} else {relatorioController.relatorioID.clear();}
                                  // relatorioController.relatorioID.text = "6";
                                },
                              ),
                              const SizedBox(height: 8.0),
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Multas em aberto',
                                selected: relatorioController.relatorioMultas_2,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioMultas_2();
                                  if (relatorioController.relatorioMultas_2 == true) {} else { relatorioController.relatorioID.clear();}
                                  // relatorioController.relatorioID.text = "7";
                                },
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    width: size.width * 0.35,
                    child: ExpansionPanelList(
                      expansionCallback: (panelIndex, isExpanded) {
                        context.read<RelatorioController>().expandirPanel_4();
                      },
                      children: [
                        ExpansionPanel(
                          isExpanded: relatorioController.valuePanel_4,
                          headerBuilder: (context, isExpanded) {
                            return ListTile(
                              title: Text(
                                'Livros',
                                style: ClassAppEstilosTexto.azul18w500Montserrat,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          },
                          body: ListView(
                            shrinkWrap: true,
                            children: [
                              CustomTextButtonRelatorioWidget(
                                titulo: 'Livros cadastrados',
                                selected: relatorioController.relatorioLivrosCadastrados_1,
                                onTap: () {
                                  context.read<RelatorioController>().marcarRelatorioLivrosCadastrados_1();
                                  if (relatorioController.relatorioLivrosCadastrados_1 == true) {
                                    relatorioController.relatorioID.text = "6";
                                  } else {
                                     relatorioController.relatorioID.clear();
                                  }
                                },
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Visibility(
              visible: relatorioController.eEmprestimoInicial,
              child: Flexible(
                child: TextFormFieldWidget(
                  titulo: 'Data inicial', 
                  width: 145,
                  height: 45,
                  controller: relatorioController.dataInicial,
                  fontSize: 15,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(14),
                    relatorioController.maskData
                  ],
                  ),
                ),
            ),
            const SizedBox(width: 16.0),
            Visibility(
              visible: relatorioController.eEmprestimoFinal,
              child: Flexible(
                child: TextFormFieldWidget(
                  titulo: 'Data final', 
                  width: 145,
                  height: 45,
                  controller: relatorioController.dataFinal,
                  fontSize: 15,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(14),
                    relatorioController.maskData
                  ],
                  ),
                ),
            ),
            const SizedBox(width: 16.0),
            Flexible(
              child: CustomElevatedButtonWidget(
                titulo: 'Obter relatório', 
                icone: Icons.check_circle_rounded,
                cor: ClassAppColors.verde,
                width: 180,
                onPressed: () async {
                  await context.read<RelatorioController>().getRelatorio().then((response) {
                    if (response.reportErrorMessage.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBarWidget(cor: ClassAppColors.verde, mensagem: 'Relatório gerado com sucesso!', largura: size.width * 0.37, altura: size.height * 0.45));
                      context.read<RelatorioController>().limparControllers();
                      context.read<RelatorioController>().limparRelatorioSelecionado();
                      context.read<RelatorioController>().desabilitarFiltroDeEmprestimo();
                      context.read<RelatorioController>().abrirUrl(Uri.parse("https://www.w3soft3.com.br/w3bibliotecaAPI/reportsTemp/${response.reportFileName}"));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: response.reportErrorMessage, largura: size.width * 0.37, altura: size.height * 0.45));
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
