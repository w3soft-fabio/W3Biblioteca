import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../classes/classes_do_app/class_app_colors.dart';
import '../../../classes/classes_do_app/class_app_estilos_texto.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String titulo;
  final String? initialValue;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final bool validator;
  final double? width, height, fontSize;
  final bool enabled;
  final int? length;
  final int? maxLines;
  final bool? obscureText;

  const TextFormFieldWidget({
    super.key,
    required this.titulo,
    this.controller,
    this.inputFormatters,
    this.initialValue,
    this.width,
    this.height, 
    this.length, 
    this.maxLines, 
    this.fontSize, 
    this.validator = false,
    this.enabled = true,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        inputFormatters:inputFormatters,
        obscureText: obscureText ?? false,
        initialValue: initialValue,
        controller: controller,
        enabled: enabled,
        keyboardType: TextInputType.multiline,
        maxLength: null,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: ClassAppColors.branco,
          label: Text(
            titulo,
            style: ClassAppEstilosTexto.preto16w400Montserrat,
            overflow: TextOverflow.ellipsis,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ClassAppColors.azul,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ClassAppColors.azul,
            ),
          ),
        ),
        style: TextStyle(
          fontSize: fontSize ?? 20.0,
        ),
        validator: validator == true ? (value) {
          if (value == null || value.isEmpty) {
            return 'O campo é obrigatório.';
          }
          return null;
        } : null,
      ),
    );
  }
}
