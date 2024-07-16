import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController? controller;
  const SearchWidget({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            'Pesquisar',
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
          isDense: true,
        ),
        style: const TextStyle(
          fontSize: 20.0,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'O campo é obrigatório.';
          }
          return null;
        },
      ),
    );
  }
}
