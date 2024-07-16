// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_controle_00X/class_campos_de_controle_autoridades_00X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_controle_00X/class_campos_fixos_autoridades_00X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/nome_pessoal/class_nome_pessoal_autoridade_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/dados_de_fontes_encontrados/class_dados_de_fontes_encontrados_667_68X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/nota_geral_nao_publica/class_nota_geral_nao_publica_667_68X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_numeros_e_codigos_01X_09X/fonte_catalogadora/class_fonte_catalogadora_01X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/lider/class_lider_autoridades_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/nome_pessoal/class_nome_pessoal_4XX_data.dart';
import 'package:w3biblioteca/app/modules/autoridade/repository/autoridade_repository.dart';

class AutoridadeController extends ChangeNotifier {
  // CONSTRUTORES
  final AutoridadeRepository autoridadeRepository;

  AutoridadeController(this.autoridadeRepository);

  // CONTROLADORES
  // LIDER
  final  etiquetaLiderAutoridadeController = TextEditingController();
  final  tamanhoLogicoDoRegistro_00_04LiderAutoridadeController = TextEditingController();
  final  statusDoRegistro_05LiderAutoridadeController = TextEditingController();
  final  tipoDeRegistro_06LiderAutoridadeController = TextEditingController();
  final  posicaoDosCaracteresIndefinida_07_08LiderAutoridadeController = TextEditingController();
  final  esquemaDeCodificacaoDeCaracteres_09LiderAutoridadeController = TextEditingController();
  final  contagemDeIndicadores_10LiderAutoridadeController = TextEditingController();
  final  contagemDeCodigosDeSubcampos_11LiderAutoridadeController = TextEditingController();
  final  enderecoDosDadosNaBase_12_16LiderAutoridadeController = TextEditingController();
  final  nivelDeCatalogacao_17LiderAutoridadeController = TextEditingController();
  final  politicaDePontuacao_18LiderAutoridadeController = TextEditingController();
  final  indefinido_19LiderAutoridadeController = TextEditingController();
  final  comprimentoDaParteDeComprimentoDeCampo_20LiderAutoridadeController = TextEditingController();
  final  comprimentoDaParteDaPosicaoDoCaractereInicial_21LiderAutoridadeController = TextEditingController();
  final  comprimentoDaParteDefinidaPelaImplementacao_22LiderAutoridadeController = TextEditingController();
  final  indefinido_23LiderAutoridadeController = TextEditingController();

  // CAMPOS DE CONTROLE
  final numeroDeControleAutoridadeController = TextEditingController();
  final identificadorDoNumeroDeControleAutoridadeController = TextEditingController();
  final dataEHoraDaUltimaAtualizacaoAutoridadeController = TextEditingController();

  // 008 - CAMPOS FIXOS
  final etiqueta_008CamposFixosAutoridadeController = TextEditingController();
  final dataInseridaNoArquivo_00_05CamposFixosAutoridadeController = TextEditingController();
  final subdivisaoGeograficaDiretaOuIndireta_06CamposFixosAutoridadeController = TextEditingController();
  final esquemaDeLatinizacao_07CamposFixosAutoridadeController = TextEditingController();
  final idiomaDoCatalogo_08CamposFixosAutoridadeController = TextEditingController();
  final tipoDeRegistro_09CamposFixosAutoridadeController = TextEditingController();
  final regrasDescritivasDeCatalogacao_10CamposFixosAutoridadeController = TextEditingController();
  final sistemaDeCabecalhoDeAssunto_11CamposFixosAutoridadeController = TextEditingController();
  final tipoDeSerie_12CamposFixosAutoridadeController = TextEditingController();
  final serieNumeradaOuNaoNumerada_13CamposFixosAutoridadeController = TextEditingController();
  final cabecalhoAplicadoEntradaPrincipalOuSecundaria_14CamposFixosAutoridadeController = TextEditingController();
  final cabecalhoAplicadoEntradaDeAssunto_15CamposFixosAutoridadeController = TextEditingController();
  final seriePrincipalESerieSecundaria_16CamposFixosAutoridadeController = TextEditingController();
  final tipoDeSubdivisaoDeAssunto_17CamposFixosAutoridadeController = TextEditingController();
  final posicoesDeCaracteresIndifinidas_18_27CamposFixosAutoridadeController = TextEditingController();
  final tipoDeAgenciaGovernamental_28CamposFixosAutoridadeController = TextEditingController();
  final avaliacaoDeReferencias_29CamposFixosAutoridadeController = TextEditingController();
  final posicaoDeCaractereIndefinido_30CamposFixosAutoridadeController = TextEditingController();
  final processoDeAtualizacaoDoRegistro_31CamposFixosAutoridadeController = TextEditingController();
  final nomePessoalNaoDiferenciado_32CamposFixosAutoridadeController = TextEditingController();
  final nivelDeAutorizacao_33CamposFixosAutoridadeController = TextEditingController();
  final posicoesDeCaracteresIndefinidas_34_37CamposFixosAutoridadeController = TextEditingController();
  final registroModificado_38CamposFixosAutoridadeController = TextEditingController();
  final fonteDeCatalogacao_39CamposFixosAutoridadeController = TextEditingController(); 

  // 040 FONTE CATALOGADORA
  final etiquetaFonteCatalogadoraAutoridadeController = TextEditingController();
  final primeiroIndicadorFonteCatalogadoraAutoridadeController = TextEditingController();
  final segundoIndicadorFonteCatalogadoraAutoridadeController = TextEditingController();
  final $a_agenciaDeCatalogacaoOriginalFonteCatalogadoraAutoridadeController = TextEditingController();
  final $b_idiomaDaCatalogacaoFonteCatalogadoraAutoridadeController = TextEditingController();
  final $c_agenciaDeTrancricaoFonteCatalogadoraAutoridadeController = TextEditingController();
  final $d_agenciaModificadoraFonteCatalogadoraAutoridadeController = TextEditingController();
  final $e_convencoesDeDescricaoFonteCatalogadoraAutoridadeController = TextEditingController();
  final $f_convencoesDeCabecalhoDeAssuntoFonteCatalogadoraAutoridadeController = TextEditingController();
  final $6_ligacaoFonteCatalogadoraAutoridadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraAutoridadeController = TextEditingController();

  // 100 NOME PESSOAL AUTORIDADE
  final etiqueta_100NomePessoalAutoridadeController = TextEditingController();
  final primeiroIndicadorNomePessoalAutoridadeController = TextEditingController();
  final segundoIndicadorNomePessoalAutoridadeController = TextEditingController();
  final $a_nomePessoalNomePessoalAutoridadeController = TextEditingController();
  final $b_numeracaoNomePessoalAutoridadeController = TextEditingController();
  final $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalAutoridadeController = TextEditingController();
  final $d_datasAssociadasAoNomeNomePessoalAutoridadeController = TextEditingController();
  final $e_termoDeRelacaoNomePessoalAutoridadeController = TextEditingController();
  final $f_dataDaObraNomePessoalAutoridadeController = TextEditingController();
  final $g_informacoesDiversasNomePessoalAutoridadeController = TextEditingController();
  final $h_meioNomePessoalAutoridadeController = TextEditingController();
  final $j_qualificadorDeAtribuicaoNomePessoalAutoridadeController = TextEditingController();
  final $k_subcabecalhoDeFormaNomePessoalAutoridadeController = TextEditingController();
  final $l_idiomaDaObraNomePessoalAutoridadeController = TextEditingController();
  final $m_meioDeExecucaoParaMusicaNomePessoalAutoridadeController = TextEditingController();
  final $n_numeroDaSecaoDaObraNomePessoalAutoridadeController = TextEditingController();
  final $o_arranjoMusicalNomePessoalAutoridadeController = TextEditingController();
  final $p_nomeDaSecaoDaObraNomePessoalAutoridadeController = TextEditingController();
  final $q_formaCompletaDoNomeNomePessoalAutoridadeController = TextEditingController();
  final $r_tonalidadeNomePessoalAutoridadeController = TextEditingController();
  final $s_versaoNomePessoalAutoridadeController = TextEditingController();
  final $t_tituloDaObraNomePessoalAutoridadeController = TextEditingController();
  final $v_subdivisaoDeFormaNomePessoalAutoridadeController = TextEditingController();
  final $x_subdivisaoGeralNomePessoalAutoridadeController = TextEditingController();
  final $y_subdivisaoCronologicaNomePessoalAutoridadeController = TextEditingController();
  final $z_subdivisaoGeograficaNomePessoalAutoridadeController = TextEditingController();
  final $6_ligacaoNomePessoalAutoridadeController = TextEditingController();
  final $7_provenienciaDosDadosNomePessoalAutoridadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNomePessoalAutoridadeController = TextEditingController();
  
  // 400 REMISSIVA "VER" - NOME PESSOAL AUTORIDADE
  final etiqueta_400RemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final primeiroIndicadorRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final segundoIndicadorRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $a_nomePessoalRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $b_numeracaoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $c_titulosEOutrasPalavrasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $d_datasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $e_termoDeRelacaoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $f_dataDaObraRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $g_informacoesDiversasRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $h_meioRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $i_informacaoDeRelacionamentoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $j_qualificadorDeAtribuicaoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $k_subcabecalhoDeFormaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $l_idiomaDaObraRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $m_meioDeExecucaoParaMusicaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $n_numeroDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $o_arranjoMusicalRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $p_nomeDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $q_formaCompletaDoNomeRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $r_tonalidadeRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $s_versaoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $t_tituloDaObraRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $v_subdivisaoDeFormaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $w_subcampoDeControleRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $x_subdivisaoGeralRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $y_subdivisaoCronologicaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $z_subdivisaoGeograficaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $4_relaciomanetoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $5_institutoAQualOCampoSeAplicaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $6_ligacaoRemissivaVerNomePessoal400AutoridadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaRemissivaVerNomePessoal400AutoridadeController = TextEditingController();

  // 667 NOTA GERAL NAO PUBLICA
  final etiqueta_667NotaGeralNaoPublicaAutoridadeController = TextEditingController();
  final primeiroIndicadorNotaGeralNaoPublicaAutoridadeController = TextEditingController();
  final segundoIndicadorNotaGeralNaoPublicaAutoridadeController = TextEditingController();
  final $a_notaGeralNaoPublicaNotaGeralNaoPublicaAutoridadeController = TextEditingController();
  final $5_instituicaoAQueCampoSeAplicaNotaGeralNaoPublicaAutoridadeController = TextEditingController();
  final $6_ligacaoNotaGeralNaoPublicaAutoridadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNotaGeralNaoPublicaAutoridadeController = TextEditingController();

  // 670 DADOS DE FONTES ENCONTRADOS
  final etiqueta_670DadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final primeiroIndicadorDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final segundoIndicadorDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final $a_citacaoDeFonteDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final $b_informacaoEncontradaDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final $u_URIDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final $w_numeroDeControleDoRegistroBibliograficoDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final $6_ligacaoDadosDeFontesEncontradosAutoridadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaDadosDeFontesEncontradosAutoridadeController = TextEditingController();

  // FORMKEY PARA FORMULÁRIO
  final formKey = GlobalKey<FormState>();

  // LOADING
  bool isLoading = false;

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  // MÉTODOS [POST]
  Future<ClassGenericResponse> setAutoridades() async {
    if (formKey.currentState!.validate()) {
      try {
        carregando();
        var autoridade = await autoridadeRepository.setAutoridades(
         liderAutoridades: ClassLiderAutoridadesData(
          etiqueta_000: etiquetaLiderAutoridadeController.text.trim(),
          tamanhoLogicoDoRegistro_00_04: tamanhoLogicoDoRegistro_00_04LiderAutoridadeController.text.trim(),
          statusDoRegistro_05: statusDoRegistro_05LiderAutoridadeController.text.trim(),
          tipoDeRegistro_06: tipoDeRegistro_06LiderAutoridadeController.text.trim(),
          posicaoDeCaracteresIndefinida_07_08: posicaoDosCaracteresIndefinida_07_08LiderAutoridadeController.text.trim(),
          esquemaDeCodificacaoDeCaracteres_09: esquemaDeCodificacaoDeCaracteres_09LiderAutoridadeController.text.trim(),
          numeroDeIndicadores_10: contagemDeIndicadores_10LiderAutoridadeController.text.trim(),
          contagemDeCodigosDeSubcampos_11: contagemDeCodigosDeSubcampos_11LiderAutoridadeController.text.trim(),
          enderecoDeDadosNaBase_12_16: enderecoDosDadosNaBase_12_16LiderAutoridadeController.text.trim(),
          nivelDeCatalogacao_17: nivelDeCatalogacao_17LiderAutoridadeController.text.trim(),
          politicaDePontuacao_18: politicaDePontuacao_18LiderAutoridadeController.text.trim(),
          indefinido_19: indefinido_19LiderAutoridadeController.text.trim(),
          comprimentoDaParteDeComprimentoDeCampo_20: comprimentoDaParteDeComprimentoDeCampo_20LiderAutoridadeController.text.trim(),
          comprimentoDaParteDaPosicaoDoCaractereInicial_21: comprimentoDaParteDaPosicaoDoCaractereInicial_21LiderAutoridadeController.text.trim(),
          comprimentoDaParteDefinidaPelaImplementacao_22: comprimentoDaParteDefinidaPelaImplementacao_22LiderAutoridadeController.text.trim(),
          indefinido_23: indefinido_23LiderAutoridadeController.text.trim(),
         ),
         camposDeControle: ClassCamposDeControleAutoridades_00X_Data(
          numeroDeControle_001: numeroDeControleAutoridadeController.text.trim(),
          identificadorDoNumeroDeControle_003: identificadorDoNumeroDeControleAutoridadeController.text.trim(),
          dataEHoraDaUltimaAtualizacao_005: dataEHoraDaUltimaAtualizacaoAutoridadeController.text.trim(), 
         ),
         camposFixos: ClassCamposFixosAutoridades_00X_Data(
          etiqueta_008: etiqueta_008CamposFixosAutoridadeController.text.trim(),
          dataInseridaNoArquivo_00_05: dataInseridaNoArquivo_00_05CamposFixosAutoridadeController.text.trim(),
          subdivisaoGeograficaDiretaOuIndireta_06: subdivisaoGeograficaDiretaOuIndireta_06CamposFixosAutoridadeController.text.trim(),
          esquemaDeLatinizacao_07: esquemaDeLatinizacao_07CamposFixosAutoridadeController.text.trim(),
          idiomaDoCatalogo_08: idiomaDoCatalogo_08CamposFixosAutoridadeController.text.trim(),
          tipoDeRegistro_09: tipoDeRegistro_09CamposFixosAutoridadeController.text.trim(),
          regrasDescritivasDeCatalogacao_10: regrasDescritivasDeCatalogacao_10CamposFixosAutoridadeController.text.trim(),
          sistemaDeCabecalhoDeAssunto_11: sistemaDeCabecalhoDeAssunto_11CamposFixosAutoridadeController.text.trim(),
          tipoDeSerie_12: tipoDeSerie_12CamposFixosAutoridadeController.text.trim(),
          serieNumeradaOuNaoNumerada_13: serieNumeradaOuNaoNumerada_13CamposFixosAutoridadeController.text.trim(),
          cabecalhoAplicadoEntradaPrincipalOuSecundaria_14: cabecalhoAplicadoEntradaPrincipalOuSecundaria_14CamposFixosAutoridadeController.text.trim(),
          cabecalhoAplicadoEntradaDeAssunto_15: cabecalhoAplicadoEntradaDeAssunto_15CamposFixosAutoridadeController.text.trim(),
          seriePrincipalESerieSecundaria_16: seriePrincipalESerieSecundaria_16CamposFixosAutoridadeController.text.trim(),
          tipoDeSubdivisaoDeAssunto_17: tipoDeSubdivisaoDeAssunto_17CamposFixosAutoridadeController.text.trim(),
          posicoesDeCaracteresIndifinidas_18_27: posicoesDeCaracteresIndifinidas_18_27CamposFixosAutoridadeController.text.trim(),
          tipoDeAgenciaGovernamental_28: tipoDeAgenciaGovernamental_28CamposFixosAutoridadeController.text.trim(),
          avaliacaoDeReferencias_29: avaliacaoDeReferencias_29CamposFixosAutoridadeController.text.trim(),
          posicaoDeCaractereIndefinido_30: posicaoDeCaractereIndefinido_30CamposFixosAutoridadeController.text.trim(),
          processoDeAtualizacaoDoRegistro_31: processoDeAtualizacaoDoRegistro_31CamposFixosAutoridadeController.text.trim(),
          nomePessoalNaoDiferenciado_32: nomePessoalNaoDiferenciado_32CamposFixosAutoridadeController.text.trim(),
          nivelDeAutorizacao_33: nivelDeAutorizacao_33CamposFixosAutoridadeController.text.trim(),
          posicoesDeCaracteresIndefinidas_34_37: posicoesDeCaracteresIndefinidas_34_37CamposFixosAutoridadeController.text.trim(),
          registroModificado_38: registroModificado_38CamposFixosAutoridadeController.text.trim(),
          fonteDeCatalogacao_39: fonteDeCatalogacao_39CamposFixosAutoridadeController.text.trim(),
         ),
         fonteCatalogadora: ClassFonteCatalogadoraAutoridade_01X_09X_Data(
          etiqueta_040: etiquetaFonteCatalogadoraAutoridadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorFonteCatalogadoraAutoridadeController.text.trim(),
          segundoIndicador: segundoIndicadorFonteCatalogadoraAutoridadeController.text.trim(),
          $a_agenciaDeCatalogacaoOriginal: $a_agenciaDeCatalogacaoOriginalFonteCatalogadoraAutoridadeController.text.trim(),
          $b_idiomaDaCatalogacao: $b_idiomaDaCatalogacaoFonteCatalogadoraAutoridadeController.text.trim(),
          $c_agenciaDeTranscricao: $c_agenciaDeTrancricaoFonteCatalogadoraAutoridadeController.text.trim(),
          $d_agenciaModificadora: $d_agenciaModificadoraFonteCatalogadoraAutoridadeController.text.trim(),
          $e_convencoesDeDescricao: $e_convencoesDeDescricaoFonteCatalogadoraAutoridadeController.text.trim(),
          $f_convencoesDeCabecalhoDeAssunto: $f_convencoesDeCabecalhoDeAssuntoFonteCatalogadoraAutoridadeController.text.trim(),
          $6_ligacao: $6_ligacaoDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaDadosDeFontesEncontradosAutoridadeController.text.trim(),
         ),
         nomePessoal: ClassNomePessoalAutoridade_1XX_3XX_Data(
          etiqueta_100: etiqueta_100NomePessoalAutoridadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorNomePessoalAutoridadeController.text.trim(),
          segundoIndicador: segundoIndicadorNomePessoalAutoridadeController.text.trim(),
          $a_nomePessoal: $a_nomePessoalNomePessoalAutoridadeController.text.trim(),
          $b_numeracao: $b_numeracaoNomePessoalAutoridadeController.text.trim(),
          $c_titulosEOutrasPalavrasAssociadasAoNome: $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalAutoridadeController.text.trim(),
          $d_datasAssociadasAoNome: $d_datasAssociadasAoNomeNomePessoalAutoridadeController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoNomePessoalAutoridadeController.text.trim(),
          $f_dataDaObra: $f_dataDaObraNomePessoalAutoridadeController.text.trim(),
          $g_informacoesDiversas: $g_informacoesDiversasNomePessoalAutoridadeController.text.trim(),
          $h_meio: $h_meioNomePessoalAutoridadeController.text.trim(),
          $j_qualificadorDeAtribuicao: $j_qualificadorDeAtribuicaoNomePessoalAutoridadeController.text.trim(),
          $k_subcabecalhoDeForma: $k_subcabecalhoDeFormaNomePessoalAutoridadeController.text.trim(),
          $l_idiomaDaObra: $l_idiomaDaObraNomePessoalAutoridadeController.text.trim(),
          $m_meioDeExecucaoParaMusica: $m_meioDeExecucaoParaMusicaNomePessoalAutoridadeController.text.trim(),
          $n_numeroDaSecaoDaObra: $n_numeroDaSecaoDaObraNomePessoalAutoridadeController.text.trim(),
          $o_arranjoMusical: $o_arranjoMusicalNomePessoalAutoridadeController.text.trim(),
          $p_nomeDaSecaoDaObra: $p_nomeDaSecaoDaObraNomePessoalAutoridadeController.text.trim(),
          $q_formaCompletaDoNome: $q_formaCompletaDoNomeNomePessoalAutoridadeController.text.trim(),
          $r_tonalidade: $r_tonalidadeNomePessoalAutoridadeController.text.trim(),
          $s_versao: $s_versaoNomePessoalAutoridadeController.text.trim(),
          $t_tituloDaObra: $t_tituloDaObraNomePessoalAutoridadeController.text.trim(),
          $v_subdivisaoDeForma: $v_subdivisaoDeFormaNomePessoalAutoridadeController.text.trim(),
          $x_subdivisaoGeral: $x_subdivisaoGeralNomePessoalAutoridadeController.text.trim(),
          $y_subdivisaoCronologica: $y_subdivisaoCronologicaNomePessoalAutoridadeController.text.trim(),
          $z_subdivisaoGeografica: $z_subdivisaoGeograficaNomePessoalAutoridadeController.text.trim(),
          $6_ligacao: $6_ligacaoNomePessoalAutoridadeController.text.trim(),
          $7_provenienciaDosDados: $7_provenienciaDosDadosNomePessoalAutoridadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNomePessoalAutoridadeController.text.trim(),
         ),
         nomePessoalRemissivaVer: ClassNomePessoalAutoridade_4XX_Data(
          etiqueta_400: etiqueta_400RemissivaVerNomePessoal400AutoridadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          segundoIndicador: segundoIndicadorRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $a_nomePessoal: $a_nomePessoalRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $b_numeracao: $b_numeracaoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $c_titulosEOutrasPalavrasAssociadasAoNome: $c_titulosEOutrasPalavrasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $d_datasAssociadasAoNome: $d_datasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $f_dataDaObra: $f_dataDaObraRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $g_informacoesDiversas: $g_informacoesDiversasRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $h_meio: $h_meioRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $i_informacaoDeRelacionamento: $i_informacaoDeRelacionamentoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $j_qualificadorDeAtribuicao: $j_qualificadorDeAtribuicaoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $k_subcabecalhoDeForma: $k_subcabecalhoDeFormaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $l_idiomaDaObra: $l_idiomaDaObraRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $m_meioDeExecucaoParaMusica: $m_meioDeExecucaoParaMusicaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $n_numeroDaSecaoDaObra: $n_numeroDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $o_arranjoMusical: $o_arranjoMusicalRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $p_nomeDaSecaoDaObra: $p_nomeDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $q_formaCompletaDoNome: $q_formaCompletaDoNomeRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $r_tonalidade: $r_tonalidadeRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $s_versao: $s_versaoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $t_tituloDaObra: $t_tituloDaObraRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $v_subdivisaoDeForma: $v_subdivisaoDeFormaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $w_subcampoDeControle: $w_subcampoDeControleRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $x_subdivisaoGeral: $x_subdivisaoGeralRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $y_subdivisaoCronologica: $y_subdivisaoCronologicaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $z_subdivisaoGeografica: $z_subdivisaoGeograficaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $4_relaciomaneto: $4_relaciomanetoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $5_institutoAQualOCampoSeAplica: $5_institutoAQualOCampoSeAplicaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $6_ligacao: $6_ligacaoRemissivaVerNomePessoal400AutoridadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaRemissivaVerNomePessoal400AutoridadeController.text.trim(),
         ),
         notaGeralNaoPublica: ClassNotaGeralNaoPublicaAutoridade_667_68X_Data(
          etiqueta_667: etiqueta_667NotaGeralNaoPublicaAutoridadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorNotaGeralNaoPublicaAutoridadeController.text.trim(),
          segundoIndicador: segundoIndicadorNotaGeralNaoPublicaAutoridadeController.text.trim(),
          $a_notaGeralNaoPublica: $a_notaGeralNaoPublicaNotaGeralNaoPublicaAutoridadeController.text.trim(),
          $5_instituicaoAQueCampoSeAplica: $5_instituicaoAQueCampoSeAplicaNotaGeralNaoPublicaAutoridadeController.text.trim(),
          $6_ligacao: $6_ligacaoNotaGeralNaoPublicaAutoridadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNotaGeralNaoPublicaAutoridadeController.text.trim(),
         ),
         dadosDeFontesEcontrados: ClassDadosDeFontesEncontradosAutoridade_667_68X_Data(
          etiqueta_670: etiqueta_670DadosDeFontesEncontradosAutoridadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorDadosDeFontesEncontradosAutoridadeController.text.trim(),
          segundoIndicador: segundoIndicadorDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $a_citacaoDeFonte: $a_citacaoDeFonteDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $b_informacaoEncontrada: $b_informacaoEncontradaDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $u_URI: $u_URIDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $w_numeroDeControleDoRegistroBibliografico: $w_numeroDeControleDoRegistroBibliograficoDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $6_ligacao: $6_ligacaoDadosDeFontesEncontradosAutoridadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaDadosDeFontesEncontradosAutoridadeController.text.trim(),
         ),
        );
        carregado();
        notifyListeners();
        Future.delayed(const Duration(seconds: 1));
        return autoridade;
      } catch (error) {
        debugPrint(error.toString());
      }
    }
    throw Exception();
  }

  Future getCodigoAutoridade() async {
    carregando();
    var acervo = await autoridadeRepository.getCodigoAutoridade().then((valor) {
      if (valor.first.autoridadesDataID.toString() == 'null') {
        numeroDeControleAutoridadeController.text = "1";
      } else {
        numeroDeControleAutoridadeController.text = "${valor.first.autoridadesDataID + 1}";
        notifyListeners();
      }
    });
    carregado();
    notifyListeners();
    return acervo;
  }

  void limparControllersSetAutoridade() {
  //LÍDER
  etiquetaLiderAutoridadeController.clear();
  tamanhoLogicoDoRegistro_00_04LiderAutoridadeController.clear();
  statusDoRegistro_05LiderAutoridadeController.clear();
  tipoDeRegistro_06LiderAutoridadeController.clear();
  posicaoDosCaracteresIndefinida_07_08LiderAutoridadeController.clear();
  esquemaDeCodificacaoDeCaracteres_09LiderAutoridadeController.clear();
  contagemDeIndicadores_10LiderAutoridadeController.clear();
  contagemDeCodigosDeSubcampos_11LiderAutoridadeController.clear();
  enderecoDosDadosNaBase_12_16LiderAutoridadeController.clear();
  nivelDeCatalogacao_17LiderAutoridadeController.clear();
  politicaDePontuacao_18LiderAutoridadeController.clear();
  indefinido_19LiderAutoridadeController.clear();
  comprimentoDaParteDeComprimentoDeCampo_20LiderAutoridadeController.clear();
  comprimentoDaParteDaPosicaoDoCaractereInicial_21LiderAutoridadeController.clear();
  comprimentoDaParteDefinidaPelaImplementacao_22LiderAutoridadeController.clear();
  indefinido_23LiderAutoridadeController.clear();

  // CAMPOS DE CONTROLE
  numeroDeControleAutoridadeController.clear();
  identificadorDoNumeroDeControleAutoridadeController.clear();
  dataEHoraDaUltimaAtualizacaoAutoridadeController.clear();

  // 008 - CAMPOS FIXOS
  etiqueta_008CamposFixosAutoridadeController.clear();
  dataInseridaNoArquivo_00_05CamposFixosAutoridadeController.clear();
  subdivisaoGeograficaDiretaOuIndireta_06CamposFixosAutoridadeController.clear();
  esquemaDeLatinizacao_07CamposFixosAutoridadeController.clear();
  idiomaDoCatalogo_08CamposFixosAutoridadeController.clear();
  tipoDeRegistro_09CamposFixosAutoridadeController.clear();
  regrasDescritivasDeCatalogacao_10CamposFixosAutoridadeController.clear();
  sistemaDeCabecalhoDeAssunto_11CamposFixosAutoridadeController.clear();
  tipoDeSerie_12CamposFixosAutoridadeController.clear();
  serieNumeradaOuNaoNumerada_13CamposFixosAutoridadeController.clear();
  cabecalhoAplicadoEntradaPrincipalOuSecundaria_14CamposFixosAutoridadeController.clear();
  cabecalhoAplicadoEntradaDeAssunto_15CamposFixosAutoridadeController.clear();
  seriePrincipalESerieSecundaria_16CamposFixosAutoridadeController.clear();
  tipoDeSubdivisaoDeAssunto_17CamposFixosAutoridadeController.clear();
  posicoesDeCaracteresIndifinidas_18_27CamposFixosAutoridadeController.clear();
  tipoDeAgenciaGovernamental_28CamposFixosAutoridadeController.clear();
  avaliacaoDeReferencias_29CamposFixosAutoridadeController.clear();
  posicaoDeCaractereIndefinido_30CamposFixosAutoridadeController.clear();
  processoDeAtualizacaoDoRegistro_31CamposFixosAutoridadeController.clear();
  nomePessoalNaoDiferenciado_32CamposFixosAutoridadeController.clear();
  nivelDeAutorizacao_33CamposFixosAutoridadeController.clear();
  posicoesDeCaracteresIndefinidas_34_37CamposFixosAutoridadeController.clear();
  registroModificado_38CamposFixosAutoridadeController.clear();
  fonteDeCatalogacao_39CamposFixosAutoridadeController.clear(); 

  // 040 FONTE CATALOGADORA
  etiquetaFonteCatalogadoraAutoridadeController.clear();
  primeiroIndicadorFonteCatalogadoraAutoridadeController.clear();
  segundoIndicadorFonteCatalogadoraAutoridadeController.clear();
  $a_agenciaDeCatalogacaoOriginalFonteCatalogadoraAutoridadeController.clear();
  $b_idiomaDaCatalogacaoFonteCatalogadoraAutoridadeController.clear();
  $c_agenciaDeTrancricaoFonteCatalogadoraAutoridadeController.clear();
  $d_agenciaModificadoraFonteCatalogadoraAutoridadeController.clear();
  $e_convencoesDeDescricaoFonteCatalogadoraAutoridadeController.clear();
  $f_convencoesDeCabecalhoDeAssuntoFonteCatalogadoraAutoridadeController.clear();
  $6_ligacaoFonteCatalogadoraAutoridadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraAutoridadeController.clear();

  // 100 NOME PESSOAL AUTORIDADE
  etiqueta_100NomePessoalAutoridadeController.clear();
  primeiroIndicadorNomePessoalAutoridadeController.clear();
  segundoIndicadorNomePessoalAutoridadeController.clear();
  $a_nomePessoalNomePessoalAutoridadeController.clear();
  $b_numeracaoNomePessoalAutoridadeController.clear();
  $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalAutoridadeController.clear();
  $d_datasAssociadasAoNomeNomePessoalAutoridadeController.clear();
  $e_termoDeRelacaoNomePessoalAutoridadeController.clear();
  $f_dataDaObraNomePessoalAutoridadeController.clear();
  $g_informacoesDiversasNomePessoalAutoridadeController.clear();
  $h_meioNomePessoalAutoridadeController.clear();
  $j_qualificadorDeAtribuicaoNomePessoalAutoridadeController.clear();
  $k_subcabecalhoDeFormaNomePessoalAutoridadeController.clear();
  $l_idiomaDaObraNomePessoalAutoridadeController.clear();
  $m_meioDeExecucaoParaMusicaNomePessoalAutoridadeController.clear();
  $n_numeroDaSecaoDaObraNomePessoalAutoridadeController.clear();
  $o_arranjoMusicalNomePessoalAutoridadeController.clear();
  $p_nomeDaSecaoDaObraNomePessoalAutoridadeController.clear();
  $q_formaCompletaDoNomeNomePessoalAutoridadeController.clear();
  $r_tonalidadeNomePessoalAutoridadeController.clear();
  $s_versaoNomePessoalAutoridadeController.clear();
  $t_tituloDaObraNomePessoalAutoridadeController.clear();
  $v_subdivisaoDeFormaNomePessoalAutoridadeController.clear();
  $x_subdivisaoGeralNomePessoalAutoridadeController.clear();
  $y_subdivisaoCronologicaNomePessoalAutoridadeController.clear();
  $z_subdivisaoGeograficaNomePessoalAutoridadeController.clear();
  $6_ligacaoNomePessoalAutoridadeController.clear();
  $7_provenienciaDosDadosNomePessoalAutoridadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNomePessoalAutoridadeController.clear();
  
  // 400 REMISSIVA "VER" - NOME PESSOAL AUTORIDADE
  etiqueta_400RemissivaVerNomePessoal400AutoridadeController.clear();
  primeiroIndicadorRemissivaVerNomePessoal400AutoridadeController.clear();
  segundoIndicadorRemissivaVerNomePessoal400AutoridadeController.clear();
  $a_nomePessoalRemissivaVerNomePessoal400AutoridadeController.clear();
  $b_numeracaoRemissivaVerNomePessoal400AutoridadeController.clear();
  $c_titulosEOutrasPalavrasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController.clear();
  $d_datasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController.clear();
  $e_termoDeRelacaoRemissivaVerNomePessoal400AutoridadeController.clear();
  $f_dataDaObraRemissivaVerNomePessoal400AutoridadeController.clear();
  $g_informacoesDiversasRemissivaVerNomePessoal400AutoridadeController.clear();
  $h_meioRemissivaVerNomePessoal400AutoridadeController.clear();
  $i_informacaoDeRelacionamentoRemissivaVerNomePessoal400AutoridadeController.clear();
  $j_qualificadorDeAtribuicaoRemissivaVerNomePessoal400AutoridadeController.clear();
  $k_subcabecalhoDeFormaRemissivaVerNomePessoal400AutoridadeController.clear();
  $l_idiomaDaObraRemissivaVerNomePessoal400AutoridadeController.clear();
  $m_meioDeExecucaoParaMusicaRemissivaVerNomePessoal400AutoridadeController.clear();
  $n_numeroDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController.clear();
  $o_arranjoMusicalRemissivaVerNomePessoal400AutoridadeController.clear();
  $p_nomeDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController.clear();
  $q_formaCompletaDoNomeRemissivaVerNomePessoal400AutoridadeController.clear();
  $r_tonalidadeRemissivaVerNomePessoal400AutoridadeController.clear();
  $s_versaoRemissivaVerNomePessoal400AutoridadeController.clear();
  $t_tituloDaObraRemissivaVerNomePessoal400AutoridadeController.clear();
  $v_subdivisaoDeFormaRemissivaVerNomePessoal400AutoridadeController.clear();
  $w_subcampoDeControleRemissivaVerNomePessoal400AutoridadeController.clear();
  $x_subdivisaoGeralRemissivaVerNomePessoal400AutoridadeController.clear();
  $y_subdivisaoCronologicaRemissivaVerNomePessoal400AutoridadeController.clear();
  $z_subdivisaoGeograficaRemissivaVerNomePessoal400AutoridadeController.clear();
  $4_relaciomanetoRemissivaVerNomePessoal400AutoridadeController.clear();
  $5_institutoAQualOCampoSeAplicaRemissivaVerNomePessoal400AutoridadeController.clear();
  $6_ligacaoRemissivaVerNomePessoal400AutoridadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaRemissivaVerNomePessoal400AutoridadeController.clear();

  // 667 NOTA GERAL NAO PUBLICA
  etiqueta_667NotaGeralNaoPublicaAutoridadeController.clear();
  primeiroIndicadorNotaGeralNaoPublicaAutoridadeController.clear();
  segundoIndicadorNotaGeralNaoPublicaAutoridadeController.clear();
  $a_notaGeralNaoPublicaNotaGeralNaoPublicaAutoridadeController.clear();
  $5_instituicaoAQueCampoSeAplicaNotaGeralNaoPublicaAutoridadeController.clear();
  $6_ligacaoNotaGeralNaoPublicaAutoridadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNotaGeralNaoPublicaAutoridadeController.clear();

  // 670 DADOS DE FONTES ENCONTRADOS
  etiqueta_670DadosDeFontesEncontradosAutoridadeController.clear();
  primeiroIndicadorDadosDeFontesEncontradosAutoridadeController.clear();
  segundoIndicadorDadosDeFontesEncontradosAutoridadeController.clear();
  $a_citacaoDeFonteDadosDeFontesEncontradosAutoridadeController.clear();
  $b_informacaoEncontradaDadosDeFontesEncontradosAutoridadeController.clear();
  $u_URIDadosDeFontesEncontradosAutoridadeController.clear();
  $w_numeroDeControleDoRegistroBibliograficoDadosDeFontesEncontradosAutoridadeController.clear();
  $6_ligacaoDadosDeFontesEncontradosAutoridadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaDadosDeFontesEncontradosAutoridadeController.clear();
  }
}
