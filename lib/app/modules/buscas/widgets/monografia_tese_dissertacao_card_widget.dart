import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_icon_button_widget.dart';

class MonografiaTeseDissertacaoCardWidget extends StatelessWidget {
  final String nomePessoal , codAcervo, tituloPrincipal, lugarDePublicacao, notaGeral, notaDeDissertacaoOuTese, nomePessoalSecundario, uri, exemplarNumero;
  final void Function()? onPressedAtualizar, onPressedRemover, onPressedCopiar;
  final Widget tabDetalhesMonografiaTeseDissertacao, tabCodigoMarcMonografiaTeseDissertacao;
  final void Function()? onPressedAbrirLink;

  const MonografiaTeseDissertacaoCardWidget({
    super.key,
    required this.codAcervo, 
    required this.nomePessoal, 
    required this.exemplarNumero, 
    required this.tituloPrincipal, 
    required this.lugarDePublicacao, 
    required this.notaGeral, 
    required this.uri, 
    required this.notaDeDissertacaoOuTese, 
    required this.nomePessoalSecundario, 
    this.onPressedAtualizar,  this.onPressedRemover, this.onPressedCopiar,
    required this.tabDetalhesMonografiaTeseDissertacao,  
    required this.tabCodigoMarcMonografiaTeseDissertacao,
    this.onPressedAbrirLink,
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shadowColor: ClassAppColors.verde,
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
                      text: 'Código acervo: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: codAcervo,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Nome: ',
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
                      text: 'Título: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: tituloPrincipal,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Lugar de publicação: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: lugarDePublicacao,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Nota geral: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: notaGeral,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Nota de dissertação ou tese: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: notaDeDissertacaoOuTese,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Nome pessoal - Secundário: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: nomePessoalSecundario,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  InkWell(
                    onTap: onPressedAbrirLink,
                    child: Text.rich(
                      TextSpan(
                        text: 'URI: ',
                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                        children: [
                          TextSpan(
                            text: uri,
                            style: ClassAppEstilosTexto.azul16w400Montserrat,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Nº exemplar: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: exemplarNumero,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
            children: [
              CustomIconButtonWidget(
                icon: Icons.edit_rounded,
                tooltip: 'Editar registro',
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
                                      Tab(text: 'Detalhes registro $nomePessoal'),
                                      const Tab(text: 'MARC'),
                                    ],
                                  ),
                                ),
                                body: TabBarView(
                                  children: [
                                  tabDetalhesMonografiaTeseDissertacao,
                                  tabCodigoMarcMonografiaTeseDissertacao,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                CustomIconButtonWidget(
                  icon: Icons.delete_rounded, 
                  onPressed: onPressedRemover,
                  corIcon: ClassAppColors.vermelho,
                  tooltip: 'Remover registro',
                ),
                CustomIconButtonWidget(
                  icon: Icons.copy_rounded, 
                  onPressed: onPressedCopiar,
                  corIcon: ClassAppColors.azul,
                  tooltip: 'Copiar registro',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
