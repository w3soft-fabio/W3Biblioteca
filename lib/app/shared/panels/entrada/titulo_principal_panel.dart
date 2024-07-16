// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class TituloPrincipalPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_tituloPrincipal,
      $b_subtitulo,
      $c_indicacaoDeResponsabilidade,
      $f_datasDeAbrangencia,
      $g_conjuntoDeDatas,
      $h_meioDGM,
      $k_formaDoMaterial,
      $n_numeroDaSecaoDaPublicacao,
      $p_nomeDaSecaoDaPublicacao,
      $s_versao,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const TituloPrincipalPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_tituloPrincipal,
    required this.$b_subtitulo,
    required this.$c_indicacaoDeResponsabilidade,
    required this.$f_datasDeAbrangencia,
    required this.$g_conjuntoDeDatas,
    required this.$h_meioDGM,
    required this.$k_formaDoMaterial,
    required this.$n_numeroDaSecaoDaPublicacao,
    required this.$p_nomeDaSecaoDaPublicacao,
    required this.$s_versao,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<TituloPrincipalPanel> createState() => _TituloPrincipalPanelState();
}

class _TituloPrincipalPanelState extends State<TituloPrincipalPanel> {
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
                '(245) - Título principal',
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
                  controller: widget.$a_tituloPrincipal,
                  titulo: '\$a - Título principal',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_subtitulo,
                  titulo: '\$b - Subtítulo',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_indicacaoDeResponsabilidade,
                  titulo: '\$c - Indicação de responsabilidade',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$f_datasDeAbrangencia,
                  titulo: '\$f - Datas de abrangência',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_conjuntoDeDatas,
                  titulo: '\$g - Conjunto de datas',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$h_meioDGM,
                  titulo: '\$h - Meio (DGM)',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$k_formaDoMaterial,
                  titulo: '\$k - Forma do material',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$n_numeroDaSecaoDaPublicacao,
                  titulo: '\$n - Número da seção da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoDaPublicacao,
                  titulo: '\$p - Nome da seção da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$s_versao,
                  titulo: '\$s - Versão',
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
