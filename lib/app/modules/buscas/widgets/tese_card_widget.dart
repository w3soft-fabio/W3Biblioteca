import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_icon_button_widget.dart';

class TeseCardWidget extends StatelessWidget {
  final String nomePessoal, tituloPrincipal, lugarDePublicacao, notaGeral, notaDeDissertacaoOuTese, nomePessoalSecundario;
  final void Function()? onPressedAtualizar, onPressedRemover;
  
  const TeseCardWidget({
    super.key,
    required this.nomePessoal, 
    required this.tituloPrincipal, 
    required this.lugarDePublicacao, 
    required this.notaGeral, 
    required this.notaDeDissertacaoOuTese, 
    required this.nomePessoalSecundario, 
    this.onPressedAtualizar,  this.onPressedRemover
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
                ],
              ),
            ),
            Column(
            children: [
              CustomIconButtonWidget(
                icon: Icons.edit_rounded,
                onPressed: onPressedAtualizar,
                ),
                CustomIconButtonWidget(
                  icon: Icons.delete_rounded, 
                  onPressed: onPressedRemover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
