import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String titulo;
  final String? initialValue;
  final TextEditingController? controller;
  final bool validator;
  final double? width, height;
  final bool enabled;
  final int? length;
  final bool? obscureText;

  const CustomTextFormFieldWidget({
    super.key,
    required this.titulo,
    this.controller,
    this.initialValue,
    this.width,
    this.height, 
    this.length, 
    this.validator = false,
    this.enabled = true,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(length),
        ],
        obscureText: obscureText ?? false,
        initialValue: initialValue,
        controller: controller,
        enabled: enabled,
        keyboardType: TextInputType.multiline,
        maxLength: null,
        minLines: null,
        maxLines: null,
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
        style: const TextStyle(
          fontSize: 20.0,
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
