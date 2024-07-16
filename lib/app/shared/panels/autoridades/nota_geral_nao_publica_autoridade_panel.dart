// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class NotaGeralNaoPublicaAutoridadePanel extends StatefulWidget {
  final TextEditingController etiqueta_667,
      primeiroIndicador,
      segundoIndicador,
      $a_notaGeralNaoPublica,
      $5_instituicaoAQueCampoSeAplica,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const NotaGeralNaoPublicaAutoridadePanel({
    super.key,
    required this.etiqueta_667,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_notaGeralNaoPublica,
    required this.$5_instituicaoAQueCampoSeAplica,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<NotaGeralNaoPublicaAutoridadePanel> createState() =>
      _NotaGeralNaoPublicaAutoridadePanelState();
}

class _NotaGeralNaoPublicaAutoridadePanelState
    extends State<NotaGeralNaoPublicaAutoridadePanel> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          value = !value;
        });
      },
      children: [
        ExpansionPanel(
          isExpanded: value,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(
                '(667) - Nota geral não pública',
                style: ClassAppEstilosTexto.azul18w500Montserrat,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormFieldWidget(
                  controller: widget.etiqueta_667,
                  titulo: 'Código',
                  enabled: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.primeiroIndicador,
                  titulo: '1º indicador',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.segundoIndicador,
                  titulo: '2º indicador',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$a_notaGeralNaoPublica,
                  titulo: '\$a - Nota geral não publica',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$5_instituicaoAQueCampoSeAplica,
                  titulo: '\$5 - Instituição à que campo se aplica',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$6_ligacao,
                  titulo: '\$6 - Ligação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$8_campoDeLigacaoENumeroDeSequencia,
                  titulo: '\$8 - Campo de ligação e número de sequência',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
