import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import '../../../classes/classes_do_app/class_app_estilos_texto.dart';

class CustomTextButtonRelatorioWidget extends StatelessWidget {
  final String titulo;
  final bool selected;
  final void Function()? onTap;

  const CustomTextButtonRelatorioWidget({
    super.key,
    required this.titulo,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      selected: selected,
      selectedTileColor: ClassAppColors.azul.withOpacity(0.2),
      leading: Image.asset(
        'assets/images/pdf_image.png',
        width: 28,
        height: 50,
      ),
      title: Text(
        titulo,
        style: ClassAppEstilosTexto.azul16w500Montserrat,
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
    );
  }
}
