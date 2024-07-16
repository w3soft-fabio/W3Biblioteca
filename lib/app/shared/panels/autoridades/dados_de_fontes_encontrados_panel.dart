// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class DadosDeFontesEncontradosPanel extends StatefulWidget {
  final TextEditingController etiqueta_670,
      primeiroIndicador,
      segundoIndicador,
      $a_citacaoDeFonte,
      $b_informacaoEncontrada,
      $u_URI,
      $w_numeroDeControleDoRegistroBibliografico,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const DadosDeFontesEncontradosPanel({
    super.key,
    required this.etiqueta_670,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_citacaoDeFonte,
    required this.$b_informacaoEncontrada,
    required this.$u_URI,
    required this.$w_numeroDeControleDoRegistroBibliografico,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<DadosDeFontesEncontradosPanel> createState() =>
      _DadosDeFontesEncontradosPanelState();
}

class _DadosDeFontesEncontradosPanelState
    extends State<DadosDeFontesEncontradosPanel> {
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
                '(670) - Dados de fontes encontrados',
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
                  controller: widget.etiqueta_670,
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
                  titulo: '1º Indicador',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.segundoIndicador,
                  titulo: '2º Indicador',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$a_citacaoDeFonte,
                  titulo: '\$a - Citação de fonte',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_informacaoEncontrada,
                  titulo: '\$b - Informação encontrada',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$u_URI,
                  titulo: '\$u - URI',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$w_numeroDeControleDoRegistroBibliografico,
                  titulo: '\$w - Número de controle do registro bibliografico',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$6_ligacao,
                  titulo: '\$6 - Ligação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$8_campoDeLigacaoENumeroDeSequencia,
                  titulo: '\$8 - Campo de ligação e Número de sequência',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
