// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class FonteCatalogadoraPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_codigoAgenciaCatalogadora,
      $b_idiomaDaCatalogacao,
      $c_agenciaQueTranscreveORegistro,
      $d_agenciaQueAlterouORegistro,
      $e_fontesConvencionaisDeDescricaoDeDados,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const FonteCatalogadoraPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_codigoAgenciaCatalogadora,
    required this.$b_idiomaDaCatalogacao,
    required this.$c_agenciaQueTranscreveORegistro,
    required this.$d_agenciaQueAlterouORegistro,
    required this.$e_fontesConvencionaisDeDescricaoDeDados,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<FonteCatalogadoraPanel> createState() => _FonteCatalogadoraPanelState();
}

class _FonteCatalogadoraPanelState extends State<FonteCatalogadoraPanel> {
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
                '(040) - Fonte catalogadora',
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
                  controller: widget.$a_codigoAgenciaCatalogadora,
                  titulo: '\$a - Código da agenência catalogadora',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_idiomaDaCatalogacao,
                  titulo: '\$b - Idioma da catalogação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_agenciaQueTranscreveORegistro,
                  titulo: '\$c - Agência que transcreve o registro',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_agenciaQueAlterouORegistro,
                  titulo: '\$d - Agência que alterou o registro',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller:
                      widget.$e_fontesConvencionaisDeDescricaoDeDados,
                  titulo:
                      '\$e - Fontes convencionais de descrição de dados',
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
