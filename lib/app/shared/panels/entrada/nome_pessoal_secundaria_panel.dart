// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class NomePessoalSecundariaPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_nomePessoal,
      $b_algarismosRomanosQueSeguemOPrenome,
      $c_titulosEOutrasPalavrasAssociadasAoNome,
      $d_datasAssociadasAoNome,
      $e_termoDeRelacao,
      $f_dataDaPublicacaoDoTrabalho,
      $g_informacoesAdicionais,
      $h_meioDGM,
      $i_informacoesSobreRelacoes,
      $j_atributo,
      $k_subcabecalhos,
      $l_idiomaDaPublicacao,
      $m_instrumentosMusicais,
      $n_numeroDaSecaoDaPublicacao,
      $o_arranjoMusical,
      $p_nomeDaSecaoDaPublicacao,
      $q_formaCompletaDoNome,
      $r_escalaMusical,
      $s_versao,
      $t_tituloDaPublicacao,
      $u_afiliacao,
      $x_ISSN,
      $0_numeroDeControleDoRegistroDeAutoridade,
      $3_materialEspecificado,
      $4_relacao,
      $5_codigoDaInstituicao,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const NomePessoalSecundariaPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_nomePessoal,
    required this.$b_algarismosRomanosQueSeguemOPrenome,
    required this.$c_titulosEOutrasPalavrasAssociadasAoNome,
    required this.$d_datasAssociadasAoNome,
    required this.$e_termoDeRelacao,
    required this.$f_dataDaPublicacaoDoTrabalho,
    required this.$g_informacoesAdicionais,
    required this.$h_meioDGM,
    required this.$i_informacoesSobreRelacoes,
    required this.$j_atributo,
    required this.$k_subcabecalhos,
    required this.$l_idiomaDaPublicacao,
    required this.$m_instrumentosMusicais,
    required this.$n_numeroDaSecaoDaPublicacao,
    required this.$o_arranjoMusical,
    required this.$p_nomeDaSecaoDaPublicacao,
    required this.$q_formaCompletaDoNome,
    required this.$r_escalaMusical,
    required this.$s_versao,
    required this.$t_tituloDaPublicacao,
    required this.$u_afiliacao,
    required this.$x_ISSN,
    required this.$0_numeroDeControleDoRegistroDeAutoridade,
    required this.$3_materialEspecificado,
    required this.$4_relacao,
    required this.$5_codigoDaInstituicao,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<NomePessoalSecundariaPanel> createState() =>
      _NomePessoalSecundariaPanelState();
}

class _NomePessoalSecundariaPanelState
    extends State<NomePessoalSecundariaPanel> {
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
                '(700) - Entrada secundária - Nome pessoal',
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
                  controller: widget.$a_nomePessoal,
                  titulo: '\$a - Nome pessoal',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_algarismosRomanosQueSeguemOPrenome,
                  titulo: '\$b - Algarismos romanos que seguem o prenome',
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
                  controller: widget.$f_dataDaPublicacaoDoTrabalho,
                  titulo: '\$f - Data da publicação do trabalho',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_informacoesAdicionais,
                  titulo: '\$g - Informações adicionais',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$h_meioDGM,
                  titulo: '\$h - Meio (DGM)',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$i_informacoesSobreRelacoes,
                  titulo: '\$i - Informações sobre relações',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$j_atributo,
                  titulo: '\$j - Atributo ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$k_subcabecalhos,
                  titulo: '\$k - Subcabeçalhos  ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$l_idiomaDaPublicacao,
                  titulo: '\$l - Idioma da publicação ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$m_instrumentosMusicais,
                  titulo: '\$m - Instrumentos musicais ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$n_numeroDaSecaoDaPublicacao,
                  titulo: '\$n - Número da seção da publicação ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$o_arranjoMusical,
                  titulo: '\$o - Arranjo musical ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoDaPublicacao,
                  titulo: '\$p - Nome da seção da publicação ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$q_formaCompletaDoNome,
                  titulo: '\$q - Forma completa do nome ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$r_escalaMusical,
                  titulo: '\$r - Escala musical ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$s_versao,
                  titulo: '\$s - Versão  ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$t_tituloDaPublicacao,
                  titulo: '\$t - Título da publicação ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$u_afiliacao,
                  titulo: '\$u - Afiliação ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$x_ISSN,
                  titulo: '\$x - ISSN ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$0_numeroDeControleDoRegistroDeAutoridade,
                  titulo: '\$0 - Número de controle do registro de autoridade ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$3_materialEspecificado,
                  titulo: '\$3 - Material especificado ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$4_relacao,
                  titulo: '\$4 - Relação  ',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$5_codigoDaInstituicao,
                  titulo: '\$5 - Código da Instituição ',
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
