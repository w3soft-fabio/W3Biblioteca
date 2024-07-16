// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class CamposFixosAutoridadePanel extends StatefulWidget {
  final TextEditingController etiqueta_008,
      dataInseridaNoArquivo_00_05,
      subdivisaoGeograficaDiretaOuIndireta_06,
      esquemaDeLatinizacao_07,
      idiomaDoCatalogo_08,
      tipoDeRegistro_09,
      regrasDescritivasDeCatalogacao_10,
      sistemaDeCabecalhoDeAssunto_11,
      tipoDeSerie_12,
      serieNumeradaOuNaoNumerada_13,
      cabecalhoAplicadoEntradaPrincipalOuSecundaria_14,
      cabecalhoAplicadoEntradaDeAssunto_15,
      seriePrincipalESerieSecundaria_16,
      tipoDeSubdivisaoDeAssunto_17,
      posicoesDeCaracteresIndifinidas_18_27,
      tipoDeAgenciaGovernamental_28,
      avaliacaoDeReferencias_29,
      posicaoDeCaractereIndefinido_30,
      processoDeAtualizacaoDoRegistro_31,
      nomePessoalNaoDiferenciado_32,
      nivelDeAutorizacao_33,
      posicoesDeCaracteresIndefinidas_34_37,
      registroModificado_38,
      fonteDeCatalogacao_39;

  const CamposFixosAutoridadePanel({
    super.key,
    required this.etiqueta_008,
    required this.dataInseridaNoArquivo_00_05,
    required this.subdivisaoGeograficaDiretaOuIndireta_06,
    required this.esquemaDeLatinizacao_07,
    required this.idiomaDoCatalogo_08,
    required this.tipoDeRegistro_09,
    required this.regrasDescritivasDeCatalogacao_10,
    required this.sistemaDeCabecalhoDeAssunto_11,
    required this.tipoDeSerie_12,
    required this.serieNumeradaOuNaoNumerada_13,
    required this.cabecalhoAplicadoEntradaPrincipalOuSecundaria_14,
    required this.cabecalhoAplicadoEntradaDeAssunto_15,
    required this.seriePrincipalESerieSecundaria_16,
    required this.tipoDeSubdivisaoDeAssunto_17,
    required this.posicoesDeCaracteresIndifinidas_18_27,
    required this.tipoDeAgenciaGovernamental_28,
    required this.avaliacaoDeReferencias_29,
    required this.posicaoDeCaractereIndefinido_30,
    required this.processoDeAtualizacaoDoRegistro_31,
    required this.nomePessoalNaoDiferenciado_32,
    required this.nivelDeAutorizacao_33,
    required this.posicoesDeCaracteresIndefinidas_34_37,
    required this.registroModificado_38,
    required this.fonteDeCatalogacao_39,
  });

  @override
  State<CamposFixosAutoridadePanel> createState() =>
      _CamposFixosAutoridadePanelState();
}

class _CamposFixosAutoridadePanelState
    extends State<CamposFixosAutoridadePanel> {
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
                '(008) - Campos fixos ',
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
                  controller: widget.etiqueta_008,
                  titulo: 'Código',
                  enabled: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.dataInseridaNoArquivo_00_05,
                  titulo: '(00-05) - Data inserida no arquivo',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(6),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.subdivisaoGeograficaDiretaOuIndireta_06,
                  titulo: '(06) - Subdivisão geografica direta ou indireta',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.esquemaDeLatinizacao_07,
                  titulo: '(07) - Esquema de latinização',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.idiomaDoCatalogo_08,
                  titulo: '(08) - Idioma do catálogo',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipoDeRegistro_09,
                  titulo: '(09) - Tipo de registro',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.regrasDescritivasDeCatalogacao_10,
                  titulo: '(10) - Regras descritivas de catalogação',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.sistemaDeCabecalhoDeAssunto_11,
                  titulo: '(11) - Sistema de cabeçalho de assunto',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipoDeSerie_12,
                  titulo: '(12) - Tipo de série',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.serieNumeradaOuNaoNumerada_13,
                  titulo: '(13) - Série numerada ou não numerada',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.cabecalhoAplicadoEntradaPrincipalOuSecundaria_14,
                  titulo: '(14) - Cabeçalho aplicado - Entrada principal ou secundária',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.cabecalhoAplicadoEntradaDeAssunto_15,
                  titulo: '(15) - Cabeçalho aplicado - Entrada de assunto',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.seriePrincipalESerieSecundaria_16,
                  titulo: '(16) - Série principal e série secundária',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipoDeSubdivisaoDeAssunto_17,
                  titulo: '(17) - Tipo de subdivisão de assunto',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.posicoesDeCaracteresIndifinidas_18_27,
                  titulo: '(18-27) - Posições de caracteres indefinidas',
                  length: 10,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipoDeAgenciaGovernamental_28,
                  titulo: '(28) - Tipo de agência governamental',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.avaliacaoDeReferencias_29,
                  titulo: '(29) - Avaliação de referências',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.posicaoDeCaractereIndefinido_30,
                  titulo: '(30) - Posição de caractere indefinido',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.processoDeAtualizacaoDoRegistro_31,
                  titulo: '(31) - Processo de atualização do registro',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.nomePessoalNaoDiferenciado_32,
                  titulo: '(32) - Nome pessoal não diferenciado',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.nivelDeAutorizacao_33,
                  titulo: '(33) - Nível de autorização',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.posicoesDeCaracteresIndefinidas_34_37,
                  titulo: '(34-37) - Posição de caracteres indefinidas',
                  length: 4,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.registroModificado_38,
                  titulo: '(38) - Registro modificado',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.fonteDeCatalogacao_39,
                  titulo: '(39) - Fonte de catalogação',
                  length: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
