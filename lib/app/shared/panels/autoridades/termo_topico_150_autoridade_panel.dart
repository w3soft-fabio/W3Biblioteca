// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class TermoTopico150AutoridadePanel extends StatefulWidget {
  final TextEditingController etiqueta_150,
      primeiroIndicador,
      segundoIndicador,
      $a_termoTopicoOuElementoDeEntradaDeNomeGeografico,
      $b_termoTopicoAposElementoDeEntradaDeNomeGeografico,
      $g_informacoesDiversas,
      $v_subdivisaoDeForma,
      $x_subdivisaoGeral,
      $y_subdivisaoCronologica,
      $z_subdivisaoGeografica,
      $6_ligacao,
      $7_provenienciaDosDados,
      $8_campoDeLigacaoENumeroDeSequencia;

  const TermoTopico150AutoridadePanel({
    super.key,
    required this.etiqueta_150,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_termoTopicoOuElementoDeEntradaDeNomeGeografico,
    required this.$b_termoTopicoAposElementoDeEntradaDeNomeGeografico,
    required this.$g_informacoesDiversas,
    required this.$v_subdivisaoDeForma,
    required this.$x_subdivisaoGeral,
    required this.$y_subdivisaoCronologica,
    required this.$z_subdivisaoGeografica,
    required this.$6_ligacao,
    required this.$7_provenienciaDosDados,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<TermoTopico150AutoridadePanel> createState() =>
      _TermoTopico150AutoridadePanelState();
}

class _TermoTopico150AutoridadePanelState
    extends State<TermoTopico150AutoridadePanel> {
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
                '(150) - Cabeçalho – Termo tópico',
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
                  controller: widget.etiqueta_150,
                  titulo: 'Código',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller:
                      widget.$a_termoTopicoOuElementoDeEntradaDeNomeGeografico,
                  titulo: '\$a - Termo tópico ou elemento de entrade de nome geográfico',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget
                      .$b_termoTopicoAposElementoDeEntradaDeNomeGeografico,
                  titulo: '\$b - Termo tópico após elemento de entrada de nome geográfico',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_informacoesDiversas,
                  titulo: '\$g - Informações diversas',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$v_subdivisaoDeForma,
                  titulo: '\$v - Subdivisão de forma',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$x_subdivisaoGeral,
                  titulo: '\$x - Subdivisão geral',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$y_subdivisaoCronologica,
                  titulo: '\$y - Subdivisão cronológica',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$z_subdivisaoGeografica,
                  titulo: '\$z - Subdivisão geográfica',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$6_ligacao,
                  titulo: '\$6 - Ligação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$7_provenienciaDosDados,
                  titulo: '\$7 -  Proveniência dos dados',
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
