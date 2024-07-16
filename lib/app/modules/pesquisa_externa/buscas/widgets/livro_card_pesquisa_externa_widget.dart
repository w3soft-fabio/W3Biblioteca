import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import '../../../../shared/widgets/custom_icon_button_widget.dart';

class LivroCardPesquisaExternaWidget extends StatelessWidget {
  final String tituloPrincipal,
      codigoAcergo,
      exemplarNumero,
      nomePessoal,
      numeroISBN,
      codigoDaAgenciaCatalogadora,
      uri,
      livroSituacao,
      livroReservado,
      numeroDeClassificacao;
  final Widget reservar;
  final Widget tabMarcLivro;
  final void Function()? onPressedAbrirLink;

  const LivroCardPesquisaExternaWidget({
    super.key,
    required this.codigoAcergo,
    required this.exemplarNumero,
    required this.tituloPrincipal,
    required this.nomePessoal,
    required this.numeroISBN,
    required this.codigoDaAgenciaCatalogadora,
    required this.uri,
    required this.livroSituacao,
    required this.livroReservado,
    required this.numeroDeClassificacao,
    required this.tabMarcLivro,
    required this.reservar,
    this.onPressedAbrirLink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
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
                          text: codigoAcergo,
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
                      text: 'Titulo principal: ',
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
                      text: 'Número ISBN: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: numeroISBN,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Código da agência catalogadora: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: codigoDaAgenciaCatalogadora,
                          style: ClassAppEstilosTexto.preto16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Número de classificação: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: numeroDeClassificacao,
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
                      text: 'Livro situação: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: livroSituacao,
                          style: livroSituacao == 'Disponível' ? ClassAppEstilosTexto.verde16w400Montserrat : 
                                 livroSituacao == 'Excluído'? ClassAppEstilosTexto.vermelho16w400Montserrat : 
                                 livroSituacao == 'Emprestado'? ClassAppEstilosTexto.vermelho16w400Montserrat : 
                                 livroSituacao == 'Processamento técnico'? ClassAppEstilosTexto.laranja16w400Montserrat : 
                                 ClassAppEstilosTexto.azul16w400Montserrat,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      text: 'Livro reservado: ',
                      style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                      children: [
                        TextSpan(
                          text: livroReservado == 'True' ? 'Sim' : 'Não',
                          style: livroReservado == 'True' ? ClassAppEstilosTexto.vermelho16w400Montserrat : ClassAppEstilosTexto.verde16w400Montserrat,
                        ),
                      ],
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
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.85,
                            child: Scaffold(
                              appBar: AppBar(
                                title: Text('MARC', style: ClassAppEstilosTexto.branco28w400Montserrat),
                                centerTitle: true,
                                toolbarHeight: 90.0,
                                automaticallyImplyLeading: false,
                                leading: Container(),
                                actions: [
                                  IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close_rounded), padding: const EdgeInsets.only(right: 16.0))
                                ],
                              ),
                              body: tabMarcLivro,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icons.search_rounded,
                  corIcon: ClassAppColors.azul,
                  tooltip: 'Detalhes',
                ),
                CustomIconButtonWidget(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.65,
                            child: Scaffold(
                              appBar: AppBar(
                                title: Text('Reservar', style: ClassAppEstilosTexto.branco28w400Montserrat),
                                centerTitle: true,
                                toolbarHeight: 90.0,
                                automaticallyImplyLeading: false,
                                leading: Container(),
                                actions: [
                                  IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close_rounded), padding: const EdgeInsets.only(right: 16.0))
                                ],
                              ),
                              body: reservar,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icons.book_rounded,
                  corIcon: ClassAppColors.verde,
                  tooltip: 'Reservar',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
