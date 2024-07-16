// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class LiderAutoridadePanel extends StatefulWidget {
  final TextEditingController etiqueta,
      tamanhoLogicoDoRegistro_00_04,
      statusDoRegistro_05,
      tipoDeRegistro_06,
      posicaoDosCaracteresIndefinida_07_08,
      esquemaDeCodificacaoDeCaracteres_09,
      contagemDeIndicadores_10,
      contagemDeCodigosDeSubcampos_11,
      enderecoDosDadosNaBase_12_16,
      nivelDeCatalogacao_17,
      politicaDePontuacao_18,
      indefinido_19,
      comprimentoDaParteDeComprimentoDeCampo_20,
      comprimentoDaParteDaPosicaoDoCaractereInicial_21,
      comprimentoDaParteDefinidaPelaImplementacao_22,
      indefinido_23;

  const LiderAutoridadePanel({
    super.key,
    required this.etiqueta,
    required this.tamanhoLogicoDoRegistro_00_04,
    required this.statusDoRegistro_05,
    required this.tipoDeRegistro_06,
    required this.posicaoDosCaracteresIndefinida_07_08,
    required this.esquemaDeCodificacaoDeCaracteres_09,
    required this.contagemDeIndicadores_10,
    required this.contagemDeCodigosDeSubcampos_11,
    required this.enderecoDosDadosNaBase_12_16,
    required this.nivelDeCatalogacao_17,
    required this.politicaDePontuacao_18,
    required this.indefinido_19,
    required this.comprimentoDaParteDeComprimentoDeCampo_20,
    required this.comprimentoDaParteDaPosicaoDoCaractereInicial_21,
    required this.comprimentoDaParteDefinidaPelaImplementacao_22,
    required this.indefinido_23,
  });

  @override
  State<LiderAutoridadePanel> createState() => _LiderAutoridadePanelState();
}

class _LiderAutoridadePanelState extends State<LiderAutoridadePanel> {
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
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.tamanhoLogicoDoRegistro_00_04,
                  titulo: '(00-04) - Tamanho lógico do registro',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(5),
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
                  controller: widget.posicaoDosCaracteresIndefinida_07_08,
                  titulo: '(07-08) - Posição dos caracteres indefinida',
                  length: 2,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.esquemaDeCodificacaoDeCaracteres_09,
                  titulo: '(09) - Esquema de codificação de caracterers',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.contagemDeIndicadores_10,
                  titulo: '(10) - Contagem de indicadores',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.contagemDeCodigosDeSubcampos_11,
                  titulo: '(11) - Contagem de codigos de subcampos',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.enderecoDosDadosNaBase_12_16,
                  titulo: '(12-16) - Endereço dos dados na base',
                  length: 5,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.nivelDeCatalogacao_17,
                  titulo: '(17) - Nível de catalogação',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.politicaDePontuacao_18,
                  titulo: '(18) - Política de pontuação',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.indefinido_19,
                  titulo: '(19) - Indefinido',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.comprimentoDaParteDeComprimentoDeCampo_20,
                  titulo: '(20) - Comprimento da parte de comprimento de campo',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.comprimentoDaParteDaPosicaoDoCaractereInicial_21,
                  titulo: '(21) - Comprimento da parte da posição do caractere inicial',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.comprimentoDaParteDefinidaPelaImplementacao_22,
                  titulo: '(22) - comprimento da parte definida pela implementação',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.indefinido_23,
                  titulo: '(23) - Indefinido',
                  length: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
