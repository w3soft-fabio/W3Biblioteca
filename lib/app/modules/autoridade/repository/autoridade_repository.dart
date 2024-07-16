// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
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
import 'package:w3biblioteca/app/modules/autoridade/models/class_autoridades_data.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;
import 'package:w3biblioteca/app/services/http_service.dart';

class AutoridadeRepository {
  // declara httpService via construtor
  final HttpService http;

  AutoridadeRepository(this.http);

  // [MÉTODOS GET, POST, DELETE]
  Future<List<ClassAutoridadesData>> getAutoridades({required String nomeAutoridade, required int qtdRegistros}) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse('${HttpService.baseUrl}autoridades/getAutoridades/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$nomeAutoridade/$qtdRegistros'),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((element) => ClassAutoridadesData.fromMap(element)).toList();
      }
    } on Error catch (erro) {
      debugPrint(erro.toString());
    }
    throw Exception();
  }
  
  Future<List<ClassAutoridadesData>> getCodigoAutoridade() async {
    try {
      var request = await http.getHttp.get(
        Uri.parse('${HttpService.baseUrl}autoridades/getCodigoAutoridade/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((element) => ClassAutoridadesData.fromMap(element)).toList();
      }
    } on Error catch (erro) {
      debugPrint(erro.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> setAutoridades({
    required ClassLiderAutoridadesData liderAutoridades,
    required ClassCamposDeControleAutoridades_00X_Data camposDeControle,
    required ClassCamposFixosAutoridades_00X_Data camposFixos,
    required ClassFonteCatalogadoraAutoridade_01X_09X_Data fonteCatalogadora,
    required ClassNomePessoalAutoridade_1XX_3XX_Data nomePessoal,
    required ClassNomePessoalAutoridade_4XX_Data nomePessoalRemissivaVer,
    required ClassNotaGeralNaoPublicaAutoridade_667_68X_Data notaGeralNaoPublica,
    required ClassDadosDeFontesEncontradosAutoridade_667_68X_Data dadosDeFontesEcontrados,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}autoridades/setAutoridade/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, Map<String, dynamic>>{
          'liderAutoridade_000': {
            'etiqueta_000': liderAutoridades.etiqueta_000,
            'tamanhoLogicoDoRegistro_00_04': liderAutoridades.tamanhoLogicoDoRegistro_00_04,
            'statusDoRegistro_05': liderAutoridades.statusDoRegistro_05,
            'tipoDeRegistro_06': liderAutoridades.tipoDeRegistro_06,
            'posicaoDeCaracteresIndefinida_07_08': liderAutoridades.posicaoDeCaracteresIndefinida_07_08,
            'esquemaDeCodificacaoDeCaracteres_09': liderAutoridades.esquemaDeCodificacaoDeCaracteres_09,
            'numeroDeIndicadores_10': liderAutoridades.numeroDeIndicadores_10,
            'contagemDeCodigosDeSubcampos_11': liderAutoridades.contagemDeCodigosDeSubcampos_11,
            'enderecoDeDadosNaBase_12_16': liderAutoridades.enderecoDeDadosNaBase_12_16,
            'nivelDeCatalogacao_17': liderAutoridades.nivelDeCatalogacao_17,
            'politicaDePontuacao_18': liderAutoridades.politicaDePontuacao_18,
            'indefinido_19': liderAutoridades.indefinido_19,
            'comprimentoDaParteDeComprimentoDeCampo_20': liderAutoridades.comprimentoDaParteDeComprimentoDeCampo_20,
            'comprimentoDaParteDaPosicaoDoCaractereInicial_21': liderAutoridades.comprimentoDaParteDaPosicaoDoCaractereInicial_21,
            'comprimentoDaParteDefinidaPelaImplementacao_22': liderAutoridades.comprimentoDaParteDefinidaPelaImplementacao_22,
            'indefinido_23': liderAutoridades.indefinido_23,
          },
          'camposDeControleAutoridade': {
            'numeroDeControle_001': camposDeControle.numeroDeControle_001,
            'identificadorDoNumeroDeControle_003': camposDeControle.identificadorDoNumeroDeControle_003,
            'dataEHoraDaUltimaAtualizacao_005': camposDeControle.dataEHoraDaUltimaAtualizacao_005,
          },
          'camposFixosAutoridade_008': {
            'etiqueta_008': camposFixos.etiqueta_008,
            'dataInseridaNoArquivo_00_05': camposFixos.dataInseridaNoArquivo_00_05,
            'subdivisaoGeograficaDiretaOuIndireta_06': camposFixos.subdivisaoGeograficaDiretaOuIndireta_06,
            'esquemaDeLatinizacao_07': camposFixos.esquemaDeLatinizacao_07,
            'idiomaDoCatalogo_08': camposFixos.idiomaDoCatalogo_08,
            'tipoDeRegistro_09': camposFixos.tipoDeRegistro_09,
            'regrasDescritivasDeCatalogacao_10': camposFixos.regrasDescritivasDeCatalogacao_10,
            'sistemaDeCabecalhoDeAssunto_11': camposFixos.sistemaDeCabecalhoDeAssunto_11,
            'tipoDeSerie_12': camposFixos.tipoDeSerie_12,
            'serieNumeradaOuNaoNumerada_13': camposFixos.serieNumeradaOuNaoNumerada_13,
            'cabecalhoAplicadoEntradaPrincipalOuSecundaria_14': camposFixos.cabecalhoAplicadoEntradaPrincipalOuSecundaria_14,
            'cabecalhoAplicadoEntradaDeAssunto_15': camposFixos.cabecalhoAplicadoEntradaDeAssunto_15,
            'seriePrincipalESerieSecundaria_16': camposFixos.seriePrincipalESerieSecundaria_16,
            'tipoDeSubdivisaoDeAssunto_17': camposFixos.tipoDeSubdivisaoDeAssunto_17,
            'posicoesDeCaracteresIndifinidas_18_27': camposFixos.posicoesDeCaracteresIndifinidas_18_27,
            'tipoDeAgenciaGovernamental_28': camposFixos.tipoDeAgenciaGovernamental_28,
            'avaliacaoDeReferencias_29': camposFixos.avaliacaoDeReferencias_29,
            'posicaoDeCaractereIndefinido_30': camposFixos.posicaoDeCaractereIndefinido_30,
            'processoDeAtualizacaoDoRegistro_31': camposFixos.processoDeAtualizacaoDoRegistro_31,
            'nomePessoalNaoDiferenciado_32': camposFixos.nomePessoalNaoDiferenciado_32,
            'nivelDeAutorizacao_33': camposFixos.nivelDeAutorizacao_33,
            'posicoesDeCaracteresIndefinidas_34_37': camposFixos.posicoesDeCaracteresIndefinidas_34_37,
            'registroModificado_38': camposFixos.registroModificado_38,
            'fonteDeCatalogacao_39': camposFixos.fonteDeCatalogacao_39,
          },
          'fonteCatalogadoraAutoridade_040': {
            'etiqueta_040': fonteCatalogadora.etiqueta_040,
            'primeiroIndicador': fonteCatalogadora.primeiroIndicador,
            'segundoIndicador': fonteCatalogadora.segundoIndicador,
            'a_agenciaDeCatalogacaoOriginal': fonteCatalogadora.$a_agenciaDeCatalogacaoOriginal,
            'b_idiomaDaCatalogacao': fonteCatalogadora.$b_idiomaDaCatalogacao,
            'c_agenciaDeTranscricao': fonteCatalogadora.$c_agenciaDeTranscricao,
            'd_agenciaModificadora': fonteCatalogadora.$d_agenciaModificadora,
            'e_convencoesDeDescricao': fonteCatalogadora.$e_convencoesDeDescricao,
            'f_convencoesDeCabecalhoDeAssunto': fonteCatalogadora.$f_convencoesDeCabecalhoDeAssunto,
            'ligacao_6': fonteCatalogadora.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': fonteCatalogadora.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'nomePessoalAutoridade_100': {
            'etiqueta_100': nomePessoal.etiqueta_100,
            'primeiroIndicador': nomePessoal.primeiroIndicador,
            'segundoIndicador': nomePessoal.segundoIndicador,
            'a_nomePessoal': nomePessoal.$a_nomePessoal,
            'b_numeracao': nomePessoal.$b_numeracao,
            'c_titulosEOutrasPalavrasAssociadasAoNome': nomePessoal.$c_titulosEOutrasPalavrasAssociadasAoNome,
            'd_datasAssociadasAoNome': nomePessoal.$d_datasAssociadasAoNome,
            'e_termoDeRelacao': nomePessoal.$e_termoDeRelacao,
            'f_dataDaObra': nomePessoal.$f_dataDaObra,
            'g_informacoesDiversas': nomePessoal.$g_informacoesDiversas,
            'h_meio': nomePessoal.$h_meio,
            'j_qualificadorDeAtribuicao': nomePessoal.$j_qualificadorDeAtribuicao,
            'k_subcabecalhoDeForma': nomePessoal.$k_subcabecalhoDeForma,
            'l_idiomaDaObra': nomePessoal.$l_idiomaDaObra,
            'm_meioDeExecucaoParaMusica': nomePessoal.$m_meioDeExecucaoParaMusica,
            'n_numeroDaSecaoDaObra': nomePessoal.$n_numeroDaSecaoDaObra,
            'o_arranjoMusical': nomePessoal.$o_arranjoMusical,
            'p_nomeDaSecaoDaObra': nomePessoal.$p_nomeDaSecaoDaObra,
            'q_formaCompletaDoNome': nomePessoal.$q_formaCompletaDoNome,
            'r_tonalidade': nomePessoal.$r_tonalidade,
            's_versao': nomePessoal.$s_versao,
            't_tituloDaObra': nomePessoal.$t_tituloDaObra,
            'v_subdivisaoDeForma': nomePessoal.$v_subdivisaoDeForma,
            'x_subdivisaoGeral': nomePessoal.$x_subdivisaoGeral,
            'y_subdivisaoCronologica': nomePessoal.$y_subdivisaoCronologica,
            'z_subdivisaoGeografica': nomePessoal.$z_subdivisaoGeografica,
            'ligacao_6': nomePessoal.$6_ligacao,
            'provenienciaDosDados_7': nomePessoal.$7_provenienciaDosDados,
            'campoDeLigacaoENumeroDeSequencia_8': nomePessoal.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'nomePessoalRemissivaVer_400': {
            'etiqueta_400': nomePessoalRemissivaVer.etiqueta_400,
            'primeiroIndicador': nomePessoalRemissivaVer.primeiroIndicador,
            'segundoIndicador': nomePessoalRemissivaVer.segundoIndicador,
            'a_nomePessoal': nomePessoalRemissivaVer.$a_nomePessoal,
            'b_numeracao': nomePessoalRemissivaVer.$b_numeracao,
            'c_titulosEOutrasPalavrasAssociadasAoNome': nomePessoalRemissivaVer.$c_titulosEOutrasPalavrasAssociadasAoNome,
            'd_datasAssociadasAoNome': nomePessoalRemissivaVer.$d_datasAssociadasAoNome,
            'e_termoDeRelacao': nomePessoalRemissivaVer.$e_termoDeRelacao,
            'f_dataDaObra': nomePessoalRemissivaVer.$f_dataDaObra,
            'g_informacoesDiversas': nomePessoalRemissivaVer.$g_informacoesDiversas,
            'h_meio': nomePessoalRemissivaVer.$h_meio,
            'i_informacaoDeRelacionamento': nomePessoalRemissivaVer.$i_informacaoDeRelacionamento,
            'j_qualificadorDeAtribuicao': nomePessoalRemissivaVer.$j_qualificadorDeAtribuicao,
            'k_subcabecalhoDeForma': nomePessoalRemissivaVer.$k_subcabecalhoDeForma,
            'l_idiomaDaObra': nomePessoalRemissivaVer.$l_idiomaDaObra,
            'm_meioDeExecucaoParaMusica': nomePessoalRemissivaVer.$m_meioDeExecucaoParaMusica,
            'n_numeroDaSecaoDaObra': nomePessoalRemissivaVer.$n_numeroDaSecaoDaObra,
            'o_arranjoMusical': nomePessoalRemissivaVer.$o_arranjoMusical,
            'p_nomeDaSecaoDaObra': nomePessoalRemissivaVer.$p_nomeDaSecaoDaObra,
            'q_formaCompletaDoNome': nomePessoalRemissivaVer.$q_formaCompletaDoNome,
            'r_tonalidade': nomePessoalRemissivaVer.$r_tonalidade,
            's_versao': nomePessoalRemissivaVer.$s_versao,
            't_tituloDaObra': nomePessoalRemissivaVer.$t_tituloDaObra,
            'v_subdivisaoDeForma': nomePessoalRemissivaVer.$v_subdivisaoDeForma,
            'w_subcampoDeControle': nomePessoalRemissivaVer.$w_subcampoDeControle,
            'x_subdivisaoGeral': nomePessoalRemissivaVer.$x_subdivisaoGeral,
            'y_subdivisaoCronologica': nomePessoalRemissivaVer.$y_subdivisaoCronologica,
            'z_subdivisaoGeografica': nomePessoalRemissivaVer.$z_subdivisaoGeografica,
            'relaciomaneto_4': nomePessoalRemissivaVer.$4_relaciomaneto,
            'institutoAQualOCampoSeAplica_5': nomePessoalRemissivaVer.$5_institutoAQualOCampoSeAplica,
            'ligacao_6': nomePessoalRemissivaVer.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': nomePessoalRemissivaVer.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'notaGeralNaoPublica_667': {
            'etiqueta_667': notaGeralNaoPublica.etiqueta_667,
            'primeiroIndicador': notaGeralNaoPublica.primeiroIndicador,
            'segundoIndicador': notaGeralNaoPublica.segundoIndicador,
            'a_notaGeralNaoPublica': notaGeralNaoPublica.$a_notaGeralNaoPublica,
            'instituicaoAQueCampoSeAplica_5': notaGeralNaoPublica.$5_instituicaoAQueCampoSeAplica,
            'ligacao_6': notaGeralNaoPublica.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': notaGeralNaoPublica.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'dadosDeFontesEncontrados_670': {
            'etiqueta_670': dadosDeFontesEcontrados.etiqueta_670,
            'primeiroIndicador': dadosDeFontesEcontrados.primeiroIndicador,
            'segundoIndicador': dadosDeFontesEcontrados.segundoIndicador,
            'a_citacaoDeFonte': dadosDeFontesEcontrados.$a_citacaoDeFonte,
            'b_informacaoEncontrada': dadosDeFontesEcontrados.$b_informacaoEncontrada,
            'u_URI': dadosDeFontesEcontrados.$u_URI,
            'w_numeroDeControleDoRegistroBibliografico': dadosDeFontesEcontrados.$w_numeroDeControleDoRegistroBibliografico,
            'ligacao_6': dadosDeFontesEcontrados.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': dadosDeFontesEcontrados.$8_campoDeLigacaoENumeroDeSequencia,
          },
        },
      ));
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } on Error catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> updateAutoridade({required ClassAutoridadesData autoridade }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}autoridades/updateAutoridade/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, Map<String, dynamic>>{
          'fonteCatalogadoraAutoridade_040': {
            'fonteCatalogadoraAutoridade_01X_09X_DataID': autoridade.fonteCatalogadoraAutoridade_01X_09X_DataID,
            'etiqueta_040': autoridade.etiqueta_040,
            'primeiroIndicador': autoridade.primeiroIndicador_040,
            'segundoIndicador': autoridade.segundoIndicador_040,
            'a_agenciaDeCatalogacaoOriginal': autoridade.$a_agenciaDeCatalogacaoOriginal,
            'b_idiomaDaCatalogacao': autoridade.$b_idiomaDaCatalogacao,
          },
          'nomePessoalAutoridade_100': {
            'nomePessoalAutoridade_1XX_3XX_DataID': autoridade.nomePessoalAutoridade_1XX_3XX_DataID,
            'etiqueta_100': autoridade.etiqueta_100,
            'primeiroIndicador': autoridade.primeiroIndicador_100,
            'segundoIndicador': autoridade.segundoIndicador_100,
            'a_nomePessoal': autoridade.$a_nomePessoal_100,
            'd_datasAssociadasAoNome': autoridade.$d_datasAssociadasAoNome_100,
          },
          'nomePessoalRemissivaVer_400': {
           'nomePessoalAutoridade_4XX_DataID': autoridade.nomePessoalAutoridade_4XX_DataID,
            'etiqueta_400': autoridade.etiqueta_400,
            'primeiroIndicador': autoridade.primeiroIndicador_400,
            'segundoIndicador': autoridade.segundoIndicador_400,
            'a_nomePessoal': autoridade.$a_nomePessoal_400,
            'd_datasAssociadasAoNome': autoridade.$d_datasAssociadasAoNome_400,
          },
          'notaGeralNaoPublica_667': {
            'notaGeralNaoPublicaAutoridade_667_68X_DataID': autoridade.notaGeralNaoPublicaAutoridade_667_68X_DataID,
            'etiqueta_667': autoridade.etiqueta_667,
            'primeiroIndicador': autoridade.primeiroIndicador_667,
            'segundoIndicador': autoridade.segundoIndicador_667,
            'a_notaGeralNaoPublica': autoridade.$a_notaGeralNaoPublica,
          },
          'dadosDeFontesEncontrados_670': {
            'dadosDeFontesEncontradosAutoridade_667_68X_DataID': autoridade.dadosDeFontesEncontradosAutoridade_667_68X_DataID,
            'etiqueta_670': autoridade.etiqueta_670,
            'primeiroIndicador': autoridade.primeiroIndicador_670,
            'segundoIndicador': autoridade.segundoIndicador_670,
            'a_citacaoDeFonte': autoridade.$a_citacaoDeFonte,
            'u_URI': autoridade.$u_URI,
          },
        }),
      );
      if (request.statusCode == 200){
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> removerAutoridade({
    required String autoridadeID,
    required String autoridadeNome,
    required String liderAutoridadesDataID,
    required String camposDeControleAutoridades_00X_DataID,
    required String camposFixosAutoridades_00X_DataID,
    required String fonteCatalogadoraAutoridade_01X_09X_DataID,
    required String nomePessoalAutoridade_1XX_3XX_DataID,
    required String nomePessoalAutoridade_4XX_DataID,
    required String notaGeralNaoPublicaAutoridade_667_68X_DataID,
    required String dadosDeFontesEncontradosAutoridade_667_68X_DataID,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}autoridades/removerAutoridade/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
         headers: {"Content-Type": "application/json"},
         body: jsonEncode(<String, String>{
          'autoridadeID': autoridadeID,
          'autoridadeNome': autoridadeNome,
          'liderAutoridadesDataID': liderAutoridadesDataID,
          'camposDeControleAutoridades_00X_DataID': camposDeControleAutoridades_00X_DataID,
          'camposFixosAutoridades_00X_DataID': camposFixosAutoridades_00X_DataID,
          'fonteCatalogadoraAutoridade_01X_09X_DataID': fonteCatalogadoraAutoridade_01X_09X_DataID,
          'nomePessoalAutoridade_1XX_3XX_DataID': nomePessoalAutoridade_1XX_3XX_DataID,
          'nomePessoalAutoridade_4XX_DataID': nomePessoalAutoridade_4XX_DataID,
          'notaGeralNaoPublicaAutoridade_667_68X_DataID': notaGeralNaoPublicaAutoridade_667_68X_DataID,
          'dadosDeFontesEncontradosAutoridade_667_68X_DataID': dadosDeFontesEncontradosAutoridade_667_68X_DataID,
        },
      ));
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } on Error catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
