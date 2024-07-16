// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class AssuntoEntidadePanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_nomeDaEntidadeOuLugar,
      $b_unidadesSubordinadas,
      $c_LocalDeRealizacaoDoEncontro,
      $d_dataDeRealizacaoDoEvento,
      $e_termoDeRelacao,
      $f_dataDaPublicacaoDoTrabalho,
      $g_informacoesAdicionais,
      $h_meioDGM,
      $k_subcabecalho,
      $l_idiomaDaPublicacao,
      $m_instrumentosMusicais,
      $n_numeroDaSecaoOuEvento,
      $o_arranjoMusical,
      $p_nomeDaSecaoPublicada,
      $r_escalaMusical,
      $s_versao,
      $t_tituloDaPublicacao,
      $u_afiliacao,
      $v_subdivisaoDeForma,
      $x_subdivisaoGeral,
      $y_subdivisaoCronologica,
      $z_subdivisaoGeografica,
      $0_numeroDeControleDoRegistroDeAutoridade,
      $2_fonteDoCabecalhoOuTermo,
      $3_materialEspecificado,
      $4_relacao,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const AssuntoEntidadePanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_nomeDaEntidadeOuLugar,
    required this.$b_unidadesSubordinadas,
    required this.$c_LocalDeRealizacaoDoEncontro,
    required this.$d_dataDeRealizacaoDoEvento,
    required this.$e_termoDeRelacao,
    required this.$f_dataDaPublicacaoDoTrabalho,
    required this.$g_informacoesAdicionais,
    required this.$h_meioDGM,
    required this.$k_subcabecalho,
    required this.$l_idiomaDaPublicacao,
    required this.$m_instrumentosMusicais,
    required this.$n_numeroDaSecaoOuEvento,
    required this.$o_arranjoMusical,
    required this.$p_nomeDaSecaoPublicada,
    required this.$r_escalaMusical,
    required this.$s_versao,
    required this.$t_tituloDaPublicacao,
    required this.$u_afiliacao,
    required this.$v_subdivisaoDeForma,
    required this.$x_subdivisaoGeral,
    required this.$y_subdivisaoCronologica,
    required this.$z_subdivisaoGeografica,
    required this.$0_numeroDeControleDoRegistroDeAutoridade,
    required this.$2_fonteDoCabecalhoOuTermo,
    required this.$3_materialEspecificado,
    required this.$4_relacao,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<AssuntoEntidadePanel> createState() => _AssuntoEntidadePanelState();
}

class _AssuntoEntidadePanelState extends State<AssuntoEntidadePanel> {
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
                '(610) - Assunto - Entidade',
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
                  length: 3,
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
                  controller: widget.$a_nomeDaEntidadeOuLugar,
                  titulo: '\$a - Nome da entidade ou lugar',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_unidadesSubordinadas,
                  titulo: '\$b - Unidades subordinadas',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_LocalDeRealizacaoDoEncontro,
                  titulo: '\$c - Local de realização do encontro',
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
                  controller: widget.$f_dataDaPublicacaoDoTrabalho,
                  titulo: '\$f - Data da publicacao do trabalho',
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
                  controller: widget.$m_instrumentosMusicais,
                  titulo: '\$m - Instrumentos musicais',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$n_numeroDaSecaoOuEvento,
                  titulo: '\$n - Número da seção ou evento',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$o_arranjoMusical,
                  titulo: '\$o - Arranjo musical',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoPublicada,
                  titulo: '\$p - Nome da seção publicada',
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
                  controller: widget.$0_numeroDeControleDoRegistroDeAutoridade,
                  titulo: '\$0 - Número de controle do registro de autoridade',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$2_fonteDoCabecalhoOuTermo,
                  titulo: '\$2 - Fonte do cabeçalho ou termo',
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
