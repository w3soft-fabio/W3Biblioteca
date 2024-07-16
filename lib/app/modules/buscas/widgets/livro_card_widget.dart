import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class LivroCardWidget extends StatelessWidget {
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
  final void Function()? onPressedAtualizar;
  final void Function()? onPressedRemover;
  final void Function()? onPressedCopiar;
  final void Function()? onPressedEmprestar;
  final void Function()? onPressedAbrirLink;

  const LivroCardWidget({
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
    this.onPressedRemover,
    this.onPressedCopiar,
    this.onPressedEmprestar,
    this.onPressedAtualizar,
    this.onPressedAbrirLink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shadowColor: ClassAppColors.azul,
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
                IconButton(
                  onPressed: onPressedAtualizar,
                  icon: const Icon(Icons.edit_rounded),
                  tooltip: "Editar coleção",
                ),
                IconButton(
                  onPressed: onPressedRemover,
                  color: ClassAppColors.vermelho,
                  icon: const Icon(Icons.delete_rounded),
                  tooltip: "Remover coleção",
                ),
                IconButton(
                  onPressed: onPressedCopiar,
                  icon: const Icon(Icons.copy_rounded),
                  tooltip: "Copiar coleção",
                ),
                IconButton(
                  onPressed: onPressedEmprestar,
                  color: ClassAppColors.azul,
                  icon: const Icon(Icons.book_rounded),
                  tooltip: "Empréstimo",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
