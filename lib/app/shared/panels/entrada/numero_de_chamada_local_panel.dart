// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class NumeroDeChamadaLocalPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_classificacao,
      $b_numeroDeCutter,
      $c_tipoDeObra,
      $d_anoDePublicacao,
      $8_unidadeCatalogadora,
      siglaInstituicao;
  final Function()? onPressedCutter;

  const NumeroDeChamadaLocalPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_classificacao,
    required this.$b_numeroDeCutter,
    required this.$c_tipoDeObra,
    required this.$d_anoDePublicacao,
    required this.$8_unidadeCatalogadora,
    required this.siglaInstituicao,
    this.onPressedCutter,
  });

  @override
  State<NumeroDeChamadaLocalPanel> createState() => _NumeroDeChamadaLocalPanelState();
}

class _NumeroDeChamadaLocalPanelState extends State<NumeroDeChamadaLocalPanel> {
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
                '(090) - Numero de chamada local',
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
                  controller: widget.$a_classificacao,
                  titulo: '\$a - Classificação',
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomTextFormFieldWidget(
                        controller: widget.$b_numeroDeCutter,
                        titulo: '\$b - Nome cutter',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: widget.onPressedCutter, 
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)
                          ),
                        ),
                        child: const Text('Pegar cutter'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_tipoDeObra,
                  titulo: '\$c - Tipo de obra',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_anoDePublicacao,
                  titulo: '\$d - Ano de publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$8_unidadeCatalogadora,
                  titulo: '\$8 - Unidade catalogadora',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.siglaInstituicao,
                  titulo: 'Sigla instituição',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
