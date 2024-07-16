// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class ImprentaPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_lugarDePublicacao,
      $b_nomeDoEditor,
      $c_dataDePublicacao,
      $e_lugarDeFabricacao,
      $f_nomeDoFabricante,
      $g_dataDeFabricacao,
      $3_materialEspecificado,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const ImprentaPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_lugarDePublicacao,
    required this.$b_nomeDoEditor,
    required this.$c_dataDePublicacao,
    required this.$e_lugarDeFabricacao,
    required this.$f_nomeDoFabricante,
    required this.$g_dataDeFabricacao,
    required this.$3_materialEspecificado,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<ImprentaPanel> createState() => _ImprentaPanelState();
}

class _ImprentaPanelState extends State<ImprentaPanel> {
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
                '(260) - Imprenta',
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
                  controller: widget.$a_lugarDePublicacao,
                  titulo: '\$a - Lugar da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_nomeDoEditor,
                  titulo: '\$b - Nome do editor',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_dataDePublicacao,
                  titulo: '\$c - Data de publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$e_lugarDeFabricacao,
                  titulo: '\$e - Lugar de fabricação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$f_nomeDoFabricante,
                  titulo: '\$f - Nome do fabricante',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_dataDeFabricacao,
                  titulo: '\$g - Data da fabricação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$3_materialEspecificado,
                  titulo: '\$3 - Material especificado',
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
