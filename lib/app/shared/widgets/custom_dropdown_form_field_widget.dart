import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class CustomDropdownFormFieldWidget<T> extends StatelessWidget {
  final Object? value;
  final String? titulo;
  final void Function(Object?)? onChanged;
  final List<DropdownMenuItem<Object>>? items;
  const CustomDropdownFormFieldWidget({
    super.key,
    this.value,
    this.titulo,
    required this.onChanged,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width <= 950 ? MediaQuery.of(context).size.width * 0.35 : MediaQuery.of(context).size.width * 0.25,
      child: DropdownButtonFormField(
        isExpanded: true,
        value: value,
        icon: const Icon(Icons.arrow_downward_rounded, color: ClassAppColors.azul),
        elevation: 16,
        style: ClassAppEstilosTexto.azul16w400Montserrat,
        decoration: InputDecoration(
          label: Text(titulo ?? '', style: ClassAppEstilosTexto.preto16w400Montserrat),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: ClassAppColors.azul),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ClassAppColors.azul),
          ),
        ),
        onChanged: onChanged,
        items: items,
      ),
    );
  }
}
