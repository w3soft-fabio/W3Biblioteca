import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class SnackBarWidget extends SnackBar {
  final Color cor;
  final String mensagem;
  final double altura;
  final double largura;

  SnackBarWidget({
    super.key,
    required this.cor,
    required this.mensagem,
    required this.altura,
    required this.largura
  }) : super(
          behavior: SnackBarBehavior.floating,
          elevation: 3.0,
          backgroundColor: cor,
          margin: EdgeInsets.symmetric(horizontal: largura, vertical: altura),
          duration: const Duration(seconds: 1),
          content: Text(
            mensagem,
            textAlign: TextAlign.center,
            style: ClassAppEstilosTexto.branco16w400Montserrat,
          ),
        );
}
