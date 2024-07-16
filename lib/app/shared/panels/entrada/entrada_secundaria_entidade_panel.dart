// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class EntradaSecundariaEntidadePanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_nomeDaEntidadeOuDoLugar,
      $b_unidadesSubordinadas,
      $c_localDeRealizacaoDoEvento,
      $d_dataDeRealizacaoDoEvento,
      $e_termoDeRelacao,
      $f_dataDePublicacao,
      $g_informacoesAdicionais,
      $h_meioDGM,
      $i_informacoesSobreRelacoes,
      $k_subcabecalho,
      $l_idiomaDaPublicacao,
      $m_meioDeExecucaoParaMusica,
      $n_numeroDaSecao,
      $o_arranjoMusical,
      $p_nomeDaSecaoDaPublicacao,
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

  const EntradaSecundariaEntidadePanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_nomeDaEntidadeOuDoLugar,
    required this.$b_unidadesSubordinadas,
    required this.$c_localDeRealizacaoDoEvento,
    required this.$d_dataDeRealizacaoDoEvento,
    required this.$e_termoDeRelacao,
    required this.$f_dataDePublicacao,
    required this.$g_informacoesAdicionais,
    required this.$h_meioDGM,
    required this.$i_informacoesSobreRelacoes,
    required this.$k_subcabecalho,
    required this.$l_idiomaDaPublicacao,
    required this.$m_meioDeExecucaoParaMusica,
    required this.$n_numeroDaSecao,
    required this.$o_arranjoMusical,
    required this.$p_nomeDaSecaoDaPublicacao,
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
  State<EntradaSecundariaEntidadePanel> createState() =>
      _EntradaSecundariaEntidadePanelState();
}

class _EntradaSecundariaEntidadePanelState
    extends State<EntradaSecundariaEntidadePanel> {
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
                '(710) - Entrada secundária - Entidade',
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
                  controller: widget.$a_nomeDaEntidadeOuDoLugar,
                  titulo: '\$a - Nome da entidade ou do lugar',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_unidadesSubordinadas,
                  titulo: '\$b - Unidades subordinadas',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_localDeRealizacaoDoEvento,
                  titulo: '\$c - Local de realização do evento',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_dataDeRealizacaoDoEvento,
                  titulo: '\$d - Data de realização do evento',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$e_termoDeRelacao,
                  titulo: '\$e - Termo de relação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$f_dataDePublicacao,
                  titulo: '\$f - Data de publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_informacoesAdicionais,
                  titulo: '\$g - Informações adicionais',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$h_meioDGM,
                  titulo: '\$h - Meio(DGM)',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$i_informacoesSobreRelacoes,
                  titulo: '\$i - Informações sobre relações',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$k_subcabecalho,
                  titulo: '\$k - subcabeçalho',
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
                  controller: widget.$n_numeroDaSecao,
                  titulo: '\$n - Número da seção',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$o_arranjoMusical,
                  titulo: '\$o - Arranjo musical',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoDaPublicacao,
                  titulo: '\$p - Nome da seção da publicação',
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
                  controller: widget.$t_tituloDaPublicacao,
                  titulo: '\$t - Título da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$u_afiliacao,
                  titulo: '\$u - Afiliação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$x_ISSN,
                  titulo: '\$x - ISSN',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$0_numeroDeControleDoRegistroDeAutoridade,
                  titulo: '\$0 - Número de controle do registro de autoridade',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$3_materialEspecificado,
                  titulo: '\$3 - Material especificado',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$4_relacao,
                  titulo: '\$4 - Relação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$5_codigoDaInstituicao,
                  titulo: '\$5 - Código da instituição',
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
