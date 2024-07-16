import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class BotaoLimparPesquisaWidget extends StatelessWidget {
  final void Function()? onPressed;
  const BotaoLimparPesquisaWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(
        'Limpar',
        style: ClassAppEstilosTexto.branco16w400Montserrat,
        overflow: TextOverflow.ellipsis,
      ),
      icon: const Icon(Icons.delete_rounded),
      style: ElevatedButton.styleFrom(
        backgroundColor: ClassAppColors.vermelho,
        fixedSize: const Size(145, 55)
      ),
    );
  }
}
