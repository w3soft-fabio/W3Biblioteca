// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class NomePessoalAutoridadePanel extends StatefulWidget {
  final TextEditingController etiqueta_100,
      primeiroIndicador,
      segundoIndicador,
      $a_nomePessoal,
      $b_numeracao,
      $c_titulosEOutrasPalavrasAssociadasAoNome,
      $d_datasAssociadasAoNome,
      $e_termoDeRelacao,
      $f_dataDaObra,
      $g_informacoesDiversas,
      $h_meio,
      $j_qualificadorDeAtribuicao,
      $k_subcabecalhoDeForma,
      $l_idiomaDaObra,
      $m_meioDeExecucaoParaMusica,
      $n_numeroDaSecaoDaObra,
      $o_arranjoMusical,
      $p_nomeDaSecaoDaObra,
      $q_formaCompletaDoNome,
      $r_tonalidade,
      $s_versao,
      $t_tituloDaObra,
      $v_subdivisaoDeForma,
      $x_subdivisaoGeral,
      $y_subdivisaoCronologica,
      $z_subdivisaoGeografica,
      $6_ligacao,
      $7_provenienciaDosDados,
      $8_campoDeLigacaoENumeroDeSequencia;

  const NomePessoalAutoridadePanel({
    super.key,
    required this.etiqueta_100,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_nomePessoal,
    required this.$b_numeracao,
    required this.$c_titulosEOutrasPalavrasAssociadasAoNome,
    required this.$d_datasAssociadasAoNome,
    required this.$e_termoDeRelacao,
    required this.$f_dataDaObra,
    required this.$g_informacoesDiversas,
    required this.$h_meio,
    required this.$j_qualificadorDeAtribuicao,
    required this.$k_subcabecalhoDeForma,
    required this.$l_idiomaDaObra,
    required this.$m_meioDeExecucaoParaMusica,
    required this.$n_numeroDaSecaoDaObra,
    required this.$o_arranjoMusical,
    required this.$p_nomeDaSecaoDaObra,
    required this.$q_formaCompletaDoNome,
    required this.$r_tonalidade,
    required this.$s_versao,
    required this.$t_tituloDaObra,
    required this.$v_subdivisaoDeForma,
    required this.$x_subdivisaoGeral,
    required this.$y_subdivisaoCronologica,
    required this.$z_subdivisaoGeografica,
    required this.$6_ligacao,
    required this.$7_provenienciaDosDados,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<NomePessoalAutoridadePanel> createState() =>
      _NomePessoalAutoridadePanelState();
}

class _NomePessoalAutoridadePanelState
    extends State<NomePessoalAutoridadePanel> {
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
                '(100) - Nome Pessoal',
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
                  controller: widget.etiqueta_100,
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
                  controller: widget.$a_nomePessoal,
                  titulo: '\$a - Nome pessoal',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_numeracao,
                  titulo: '\$b - Numeração',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_titulosEOutrasPalavrasAssociadasAoNome,
                  titulo: '\$c - Títulos e outras palavras associadas ao nome',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_datasAssociadasAoNome,
                  titulo: '\$d - Datas associadas ao nome',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$e_termoDeRelacao,
                  titulo: '\$e - Termo de relação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$f_dataDaObra,
                  titulo: '\$f - Data da obra',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_informacoesDiversas,
                  titulo: '\$g - Informações diversas',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$h_meio,
                  titulo: '\$h - Meio (NR)',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$j_qualificadorDeAtribuicao,
                  titulo: '\$j - Qualificador de atribuição',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$k_subcabecalhoDeForma,
                  titulo: '\$k - Subcabeçalho de forma',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$l_idiomaDaObra,
                  titulo: '\$l - Idioma da obra',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$m_meioDeExecucaoParaMusica,
                  titulo: '\$m - Meio de execução para música',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$n_numeroDaSecaoDaObra,
                  titulo: '\$n - Número de seção da obra',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$o_arranjoMusical,
                  titulo: '\$o - Arranjo musical',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoDaObra,
                  titulo: '\$p - Nome da seção da obra',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$q_formaCompletaDoNome,
                  titulo: '\$q - Forma completa do nome',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$r_tonalidade,
                  titulo: '\$r - Tonalidade',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$s_versao,
                  titulo: '\$s - Versão',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$t_tituloDaObra,
                  titulo: '\$t - Título da obra',
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
                  titulo: '\$7 - Proveniência dos dados',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$8_campoDeLigacaoENumeroDeSequencia,
                  titulo: '\$8 - Campo de ligação e numero de sequência',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
