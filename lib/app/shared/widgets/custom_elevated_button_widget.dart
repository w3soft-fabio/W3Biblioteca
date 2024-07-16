import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final String titulo;
  final IconData icone;
  final void Function()? onPressed;
  final Color? cor;
  final double? width;
  final double? height;
  const CustomElevatedButtonWidget({
    super.key,
    required this.titulo,
    required this.icone,
    this.width,
    this.height,
    this.cor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icone),
      label: Text(
        titulo,
        style: ClassAppEstilosTexto.branco16w400Montserrat,
        overflow: TextOverflow.ellipsis,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: cor ?? ClassAppColors.azul,
        fixedSize: Size(width ?? 145, height ?? 45),
      ),
    );
  }
}
