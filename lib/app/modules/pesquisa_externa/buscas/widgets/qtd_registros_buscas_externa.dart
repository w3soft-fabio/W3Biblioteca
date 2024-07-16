import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/buscas/controllers/buscas_externa_controller.dart';

import '../../../../classes/classes_do_app/class_app_colors.dart';
import '../../../../classes/classes_do_app/class_app_estilos_texto.dart';

class QtdRegistrosBuscasExternaWidget extends StatelessWidget {
  final BuscasExternaController controller;
  const QtdRegistrosBuscasExternaWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Qtd. registros: ',
            style: ClassAppEstilosTexto.azul16w400Montserrat),
        SizedBox(
          width: 75,
          height: 35,
          child: TextField(
            controller: controller.qtdRegistros,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ClassAppColors.azul,
                ),
              ),
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(5),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ],
    );
  }
}
