// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class FonteCatalogadoraAutoridadePanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_agenciaDeCatalogacaoOriginal,
      $b_idiomaDaCatalogacao,
      $c_agenciaDeTrancricao,
      $d_agenciaModificadora,
      $e_convencoesDeDescricao,
      $f_convencoesDeCabecalhoDeAssunto,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const FonteCatalogadoraAutoridadePanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_agenciaDeCatalogacaoOriginal,
    required this.$b_idiomaDaCatalogacao,
    required this.$c_agenciaDeTrancricao,
    required this.$d_agenciaModificadora,
    required this.$e_convencoesDeDescricao,
    required this.$f_convencoesDeCabecalhoDeAssunto,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<FonteCatalogadoraAutoridadePanel> createState() => _FonteCatalogadoraAutoridadePanelState();
}

class _FonteCatalogadoraAutoridadePanelState extends State<FonteCatalogadoraAutoridadePanel> {
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
                  controller: widget.$a_agenciaDeCatalogacaoOriginal,
                  titulo: '\$a - Agência de catalogação original',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_idiomaDaCatalogacao,
                  titulo: '\$b - Idioma da catalogação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_agenciaDeTrancricao,
                  titulo: '\$c - Agência de trancrição',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_agenciaModificadora,
                  titulo: '\$d - Agência modificadora',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller:
                      widget.$e_convencoesDeDescricao,
                  titulo:
                      '\$e - Convenções de descrição',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller:
                      widget.$f_convencoesDeCabecalhoDeAssunto,
                  titulo:
                      '\$f - Convenções de cabeçalho de assunto',
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
