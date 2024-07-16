// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class TituloOriginalPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_tituloUniforme,
      $d_dataDaAssinaturaDoTratado,
      $f_dataDaPublicacaoDoTrabalho,
      $g_informacaoesAdicionais,
      $h_meioDGM,
      $k_subcabecalho,
      $l_idiomaDaPublicacao,
      $m_meioDeExecucaoParaMusica,
      $n_numeroDaSecaoDaPublicacao,
      $o_arranjoMusical,
      $p_nomeDaSecaoDePublicacao,
      $r_escalaMusical,
      $s_versao,
      $0_numeroDeControleDoRegistroDeAutoridade,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const TituloOriginalPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_tituloUniforme,
    required this.$d_dataDaAssinaturaDoTratado,
    required this.$f_dataDaPublicacaoDoTrabalho,
    required this.$g_informacaoesAdicionais,
    required this.$h_meioDGM,
    required this.$k_subcabecalho,
    required this.$l_idiomaDaPublicacao,
    required this.$m_meioDeExecucaoParaMusica,
    required this.$n_numeroDaSecaoDaPublicacao,
    required this.$o_arranjoMusical,
    required this.$p_nomeDaSecaoDePublicacao,
    required this.$r_escalaMusical,
    required this.$s_versao,
    required this.$0_numeroDeControleDoRegistroDeAutoridade,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<TituloOriginalPanel> createState() => _TituloOriginalPanelState();
}

class _TituloOriginalPanelState extends State<TituloOriginalPanel> {
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
                '(240) - Título uniforme/original',
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
                  controller: widget.$a_tituloUniforme,
                  titulo: '\$a - Título principal',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_dataDaAssinaturaDoTratado,
                  titulo: '\$d - Datas da assinatura do tratado',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$f_dataDaPublicacaoDoTrabalho,
                  titulo: '\$f - Data da publicação do trabalho',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_informacaoesAdicionais,
                  titulo: '\$g - Informações adicionais',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$h_meioDGM,
                  titulo: '\$h - Meio (DGM)',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$k_subcabecalho,
                  titulo: '\$k - Subcabeçalho',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$l_idiomaDaPublicacao,
                  titulo: '\$l - Idioma da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$m_meioDeExecucaoParaMusica,
                  titulo: '\$m - Meio de execução para música',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$n_numeroDaSecaoDaPublicacao,
                  titulo: '\$n - Número da seção da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$o_arranjoMusical,
                  titulo: '\$o - Arranjo musical',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoDePublicacao,
                  titulo: '\$p - Nome da seção de publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$r_escalaMusical,
                  titulo: '\$r - Escala musical',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$s_versao,
                  titulo: '\$s - Versão',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$0_numeroDeControleDoRegistroDeAutoridade,
                  titulo: '\$0 - Número de controle do registro de autoridade',
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
