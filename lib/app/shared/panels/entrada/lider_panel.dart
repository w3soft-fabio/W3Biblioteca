// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class LiderPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      tamanhoDoRegistro_00_04,
      statusDoRegistro_05,
      tipoDeRegistro_06,
      nivelBibliografico_07,
      tipodeControle_08,
      esquemaDeCodificacaoDeCaractere_09,
      numeroDeIndicadores_10,
      numeroDeSubcampos_11,
      enderecoDeDados_12_16,
      nivelDeCodificacao_17,
      formaDeCatalogacaoDescritiva_18,
      nivelDeRegistroDeRecurso_19,
      tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20,
      tamanhoDaPosicaoDoCaractereDeInicio_21,
      tamanhoDaParteDefinidaParaImplementacao_22,
      entradaNaoDefinida_23;

  const LiderPanel({
    super.key,
    required this.etiqueta,
    required this.tamanhoDoRegistro_00_04,
    required this.statusDoRegistro_05,
    required this.tipoDeRegistro_06,
    required this.nivelBibliografico_07,
    required this.tipodeControle_08,
    required this.esquemaDeCodificacaoDeCaractere_09,
    required this.numeroDeIndicadores_10,
    required this.numeroDeSubcampos_11,
    required this.enderecoDeDados_12_16,
    required this.nivelDeCodificacao_17,
    required this.formaDeCatalogacaoDescritiva_18,
    required this.nivelDeRegistroDeRecurso_19,
    required this.tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20,
    required this.tamanhoDaPosicaoDoCaractereDeInicio_21,
    required this.tamanhoDaParteDefinidaParaImplementacao_22,
    required this.entradaNaoDefinida_23,
  });

  @override
  State<LiderPanel> createState() => _LiderPanelState();
}

class _LiderPanelState extends State<LiderPanel> {
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
                '(000) - Lider',
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
                    LengthLimitingTextInputFormatter(3),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.tamanhoDoRegistro_00_04,
                  titulo: '(00-04) - Tamanho do registro ',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(5),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.statusDoRegistro_05,
                  titulo: '(05) - Status do registro',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipoDeRegistro_06,
                  titulo: '(06) - Tipo de registro',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.nivelBibliografico_07,
                  titulo: '(07) - Nível bibliografico',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipodeControle_08,
                  titulo: '(08) - Tipo de Controle',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.esquemaDeCodificacaoDeCaractere_09,
                  titulo: '(09) - Esquema de codificação',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.numeroDeIndicadores_10,
                  titulo: '(10) - Número de indicadores',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.numeroDeSubcampos_11,
                  titulo: '(11) - Número de subcampos',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.enderecoDeDados_12_16,
                  titulo: '(12-16) - Endereço de dados',
                  length: 5,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.nivelDeCodificacao_17,
                  titulo: '(17) - Nível de codificação',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.formaDeCatalogacaoDescritiva_18,
                  titulo: '(18) - Forma de catalocação descritiva',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.nivelDeRegistroDeRecurso_19,
                  titulo: '(19) - Nível de registro de recurso',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20,
                  titulo: '(20) - Tamanho da parte correspondente ao tamanho do campo',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.tamanhoDaPosicaoDoCaractereDeInicio_21,
                  titulo: '(21) - Tamanho da posição do caractere de início',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.tamanhoDaParteDefinidaParaImplementacao_22,
                  titulo: '(22) - Endereço de dados',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.entradaNaoDefinida_23,
                  titulo: '(23) - Entrada não definida',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
