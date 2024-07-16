import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_icon_button_widget.dart';

class AutoridadeCardWidget extends StatelessWidget {
  final String fonteDeCatalogacao,
      nomePessoal,
      nomePessoalRemissivaVer,
      notasGeraisNaoDisponiveis,
      uri,
      dadosDeFontesEncontrados;
  final Widget tabBarDetalhesAutoridade, tabMarcAutoridade;
  final void Function()? onPressedRemover, onPressedAtualizar, onTapAbrirLink;

  const AutoridadeCardWidget({
    super.key,
    required this.fonteDeCatalogacao,
    required this.nomePessoal,
    required this.nomePessoalRemissivaVer,
    required this.notasGeraisNaoDisponiveis,
    required this.uri,
    required this.dadosDeFontesEncontrados,
    required this.tabBarDetalhesAutoridade,
    required this.tabMarcAutoridade,
    this.onPressedRemover,
    this.onPressedAtualizar,
    this.onTapAbrirLink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shadowColor: ClassAppColors.vermelho,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Fonte da Catalogação: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: fonteDeCatalogacao,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Nome pessoal: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: nomePessoal,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Remissiva (Ver) - Nome pessoal: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: nomePessoalRemissivaVer,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Notas geral não pública: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: notasGeraisNaoDisponiveis,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Dados de fontes encontrados: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: dadosDeFontesEncontrados,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  InkWell(
                    onTap: onTapAbrirLink,
                    child: Text.rich(
                      TextSpan(
                        text: 'URI: ',
                        style:
                            ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                        children: [
                          TextSpan(
                            text: uri,
                            style: ClassAppEstilosTexto.azul16w400Montserrat,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CustomIconButtonWidget(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: DefaultTabController(
                            length: 2,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.85,
                              child: Scaffold(
                                appBar: AppBar(
                                  title: Text('Atualizar registro', style: ClassAppEstilosTexto.branco28w400Montserrat),
                                  centerTitle: true,
                                  toolbarHeight: 90.0,
                                  automaticallyImplyLeading: false,
                                  leading: Container(),
                                  actions: [
                                    IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close_rounded), padding: const EdgeInsets.only(right: 16.0))
                                  ],
                                  bottom: TabBar(
                                    labelStyle: ClassAppEstilosTexto.branco16w400Montserrat,
                                    tabs: [
                                      Tab(text: 'Detalhes Autoridade $nomePessoal'),
                                      const Tab(text: 'MARC'),
                                    ],
                                  ),
                                ),
                                body: TabBarView(
                                  children: [
                                  tabBarDetalhesAutoridade,
                                  tabMarcAutoridade,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icons.edit_rounded,
                ),
                CustomIconButtonWidget(
                  onPressed: onPressedRemover,
                  icon: Icons.delete_rounded,
                  corIcon: ClassAppColors.vermelho,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
