// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class NumeroDeClassificacaoDecimalDeweyPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_numeroDeClassificacao,
      $b_numeroDoItem,
      $m_designacaoPadraoOuOpcional,
      $q_agenciaQueAtribuiNumeroDeClassificacao,
      $2_numeroDaEdicao,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const NumeroDeClassificacaoDecimalDeweyPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_numeroDeClassificacao,
    required this.$b_numeroDoItem,
    required this.$m_designacaoPadraoOuOpcional,
    required this.$q_agenciaQueAtribuiNumeroDeClassificacao,
    required this.$2_numeroDaEdicao,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<NumeroDeClassificacaoDecimalDeweyPanel> createState() =>
      _NumeroDeClassificacaoDecimalDeweyPanelState();
}

class _NumeroDeClassificacaoDecimalDeweyPanelState
    extends State<NumeroDeClassificacaoDecimalDeweyPanel> {
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
                '(082) - CDD',
                style: ClassAppEstilosTexto.azul18w500Montserrat,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  controller: widget.etiqueta,
                  titulo: 'Código',
                  length: 3,
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
                  controller: widget.$a_numeroDeClassificacao,
                  titulo: '\$a - Número de classificação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_numeroDoItem,
                  titulo: '\$b - Número do item',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$m_designacaoPadraoOuOpcional,
                  titulo: '\$m - Designação padrão ou opcional',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller:
                      widget.$q_agenciaQueAtribuiNumeroDeClassificacao,
                  titulo:
                      '\$q - Agência que atribui o número de classificação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$2_numeroDaEdicao,
                  titulo: '\$2 - Número da edição',
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
