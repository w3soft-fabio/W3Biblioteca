// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class IsbnPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_numeroIsbn,
      $c_modalidadesDeAquisicao,
      $q_informacaoQualificadora,
      $z_isbnInvalido,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;
  

  const IsbnPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_numeroIsbn,
    required this.$c_modalidadesDeAquisicao,
    required this.$q_informacaoQualificadora,
    required this.$z_isbnInvalido,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<IsbnPanel> createState() => _IsbnPanelState();
}

class _IsbnPanelState extends State<IsbnPanel> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
                '(020) - ISBN',
                style: ClassAppEstilosTexto.azul18w500Montserrat,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormFieldWidget(
                  controller: widget.etiqueta,
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
                  controller: widget.$a_numeroIsbn,
                  titulo: '\$a - Número do ISBN',
                  length: 13,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_modalidadesDeAquisicao,
                  titulo: '\$c - Modalidades de aquisição',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$q_informacaoQualificadora,
                  titulo: '\$q - Informação qualificadora',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$z_isbnInvalido,
                  titulo: '\$z - ISBN cancelado/inválido',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$6_ligacao,
                  titulo: '\$6 - Ligação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$8_campoDeLigacaoENumeroDeSequencia,
                  titulo: '\$8 - Campo de ligação e numero de sequência',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
