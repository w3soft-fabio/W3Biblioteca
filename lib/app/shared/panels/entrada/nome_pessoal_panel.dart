// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class NomePessoalPanel extends StatefulWidget {
  final TextEditingController etiqueta,
      primeiroIndicador,
      segundoIndicador,
      $a_nomePessoal,
      $b_algarismosRomanosQueSeguemPrenome,
      $c_titulosEOutrasPalavrasAssociadasAoNome,
      $d_datasAssociadasAoNome,
      $e_termoDeRelacao,
      $f_dataDaPublicacaoDoTrabalho,
      $g_informacoesAdicionais,
      $j_atributoQualificador,
      $k_subcabecalho,
      $l_idiomaDaPublicacao,
      $n_numeroDaSecaoDaPublicacao,
      $p_nomeDaSecaoDaPublicacao,
      $q_formaCompletaDoNome,
      $t_tituloDaPublicacao,
      $u_afiliacao,
      $0_numeroDeControleDoRegistroDeAutoridade,
      $4_relacao,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const NomePessoalPanel({
    super.key,
    required this.etiqueta,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_nomePessoal,
    required this.$b_algarismosRomanosQueSeguemPrenome,
    required this.$c_titulosEOutrasPalavrasAssociadasAoNome,
    required this.$d_datasAssociadasAoNome,
    required this.$e_termoDeRelacao,
    required this.$f_dataDaPublicacaoDoTrabalho,
    required this.$g_informacoesAdicionais,
    required this.$j_atributoQualificador,
    required this.$k_subcabecalho,
    required this.$l_idiomaDaPublicacao,
    required this.$n_numeroDaSecaoDaPublicacao,
    required this.$p_nomeDaSecaoDaPublicacao,
    required this.$q_formaCompletaDoNome,
    required this.$t_tituloDaPublicacao,
    required this.$u_afiliacao,
    required this.$0_numeroDeControleDoRegistroDeAutoridade,
    required this.$4_relacao,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<NomePessoalPanel> createState() => _NomePessoalPanelState();
}

class _NomePessoalPanelState extends State<NomePessoalPanel> {
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
                  controller: widget.$b_algarismosRomanosQueSeguemPrenome,
                  titulo: '\$b - Algorismos romanos que seguem prenome',
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
                  titulo: '\$f - Data da publicacao do trabalho',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$g_informacoesAdicionais,
                  titulo: '\$g - Informações adicionais',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$j_atributoQualificador,
                  titulo: '\$j - Atributo qualificador',
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
                  controller: widget.$n_numeroDaSecaoDaPublicacao,
                  titulo: '\$n - Número de seção da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_nomeDaSecaoDaPublicacao,
                  titulo: '\$p - Nome da seção da publicação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$q_formaCompletaDoNome,
                  titulo: '\$q - Forma completa do nome',
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
                  controller: widget.$0_numeroDeControleDoRegistroDeAutoridade,
                  titulo: '\$0 - Número de controle do registro de autoridade',
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
