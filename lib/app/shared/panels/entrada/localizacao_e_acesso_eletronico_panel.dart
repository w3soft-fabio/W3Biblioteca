// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class LocalizacaoEAcessoEletronicoPanel extends StatefulWidget {
  final TextEditingController etiqueta_856,
      primeiroIndicador,
      segundoIndicador,
      $a_nomeDoServidor,
      $b_numeroDoAcesso,
      $c_informacoesSobreCompactacao,
      $d_caminho,
      $f_nomeDoArquivoEletronico,
      $h_username,
      $i_instrucao,
      $j_bitsPorSegundo,
      $k_password,
      $l_login,
      $m_contatoParaObterAjuda,
      $n_nomeDaLocalizacaoDoServidor,
      $o_sistemaOperativo,
      $p_porta,
      $q_tipoDoFormatoEletronico,
      $r_configuracao,
      $s_tamanhoDoArquivo,
      $t_emulacaoDeTerminal,
      $u_identificadorUniformeDeRecursoURI,
      $v_horarioDeAcesso,
      $w_numeroDeControleDeUmRegistro,
      $x_notaInterna,
      $y_textoDoLink,
      $z_notaDoPublico,
      $2_metodoDeAcesso,
      $3_materialEspecificado,
      $6_ligacao,
      $8_campoDeLigacaoENumeroDeSequencia;

  const LocalizacaoEAcessoEletronicoPanel({
    super.key,
    required this.etiqueta_856,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_nomeDoServidor,
    required this.$b_numeroDoAcesso,
    required this.$c_informacoesSobreCompactacao,
    required this.$d_caminho,
    required this.$f_nomeDoArquivoEletronico,
    required this.$h_username,
    required this.$i_instrucao,
    required this.$j_bitsPorSegundo,
    required this.$k_password,
    required this.$l_login,
    required this.$m_contatoParaObterAjuda,
    required this.$n_nomeDaLocalizacaoDoServidor,
    required this.$o_sistemaOperativo,
    required this.$p_porta,
    required this.$q_tipoDoFormatoEletronico,
    required this.$r_configuracao,
    required this.$s_tamanhoDoArquivo,
    required this.$t_emulacaoDeTerminal,
    required this.$u_identificadorUniformeDeRecursoURI,
    required this.$v_horarioDeAcesso,
    required this.$w_numeroDeControleDeUmRegistro,
    required this.$x_notaInterna,
    required this.$y_textoDoLink,
    required this.$z_notaDoPublico,
    required this.$2_metodoDeAcesso,
    required this.$3_materialEspecificado,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  @override
  State<LocalizacaoEAcessoEletronicoPanel> createState() =>
      _LocalizacaoEAcessoEletronicoPanelState();
}

class _LocalizacaoEAcessoEletronicoPanelState
    extends State<LocalizacaoEAcessoEletronicoPanel> {
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
                '(856) - Localização e acesso eletrônico',
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
                  controller: widget.etiqueta_856,
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
                  controller: widget.$a_nomeDoServidor,
                  titulo: '\$a - Nome do servidor',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$b_numeroDoAcesso,
                  titulo: '\$b - Número do acesso',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$c_informacoesSobreCompactacao,
                  titulo: '\$c - Informações sobre compactação',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$d_caminho,
                  titulo: '\$d - Caminho',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$f_nomeDoArquivoEletronico,
                  titulo: '\$f - Nome do arquivo eletrônico',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$h_username,
                  titulo: '\$h - Username',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$i_instrucao,
                  titulo: '\$i - Instrução',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$j_bitsPorSegundo,
                  titulo: '\$j - Bits por segundo',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$k_password,
                  titulo: '\$k - Password',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$l_login,
                  titulo: '\$l - Login',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$m_contatoParaObterAjuda,
                  titulo: '\$m - Contato para obter ajuda',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$n_nomeDaLocalizacaoDoServidor,
                  titulo: '\$n - Nome da localização do servidor',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$o_sistemaOperativo,
                  titulo: '\$o - Sistema operativo',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$p_porta,
                  titulo: '\$p - Porta',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$q_tipoDoFormatoEletronico,
                  titulo: '\$q - Tipo do formato eletrônico',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$r_configuracao,
                  titulo: '\$r - Configuração',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$s_tamanhoDoArquivo,
                  titulo: '\$s - Tamanho do arquivo',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$t_emulacaoDeTerminal,
                  titulo: '\$t - Emulação de terminal',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$u_identificadorUniformeDeRecursoURI,
                  titulo: '\$u - Identificador uniforme de recurso - URI',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$v_horarioDeAcesso,
                  titulo: '\$v - Horário de acesso',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$w_numeroDeControleDeUmRegistro,
                  titulo: '\$w - Número de controle de um registro',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$x_notaInterna,
                  titulo: '\$x - Nota interna',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$y_textoDoLink,
                  titulo: '\$y - Texto do link',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$z_notaDoPublico,
                  titulo: '\$z - Nota do público',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$2_metodoDeAcesso,
                  titulo: '\$2 - Método de acesso',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.$3_materialEspecificado,
                  titulo: '\$3 - Material especificado',
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
