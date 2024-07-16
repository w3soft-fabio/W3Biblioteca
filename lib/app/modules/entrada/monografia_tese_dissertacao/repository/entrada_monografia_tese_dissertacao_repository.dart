// ignore_for_file: avoid_print, non_constant_identifier_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/entidade/class_entidade_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/campo_de_tamanho_fixo_008/classes_008_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/fonte_de_catalogacao/class_fonte_de_catalogacao_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_chamada_local/class_numero_de_chamada_local_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_classificacao_decimal_universal/class_numero_de_classificacao_decimal_universal_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/classes_marc21_bibliografico_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/descricao_fisica/class_descricao_fisica_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/imprenta/class_imprenta_25X_28X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/entidade/class_entidade_70X_75X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/nome_pessoal/class_nome_pessoal_70X_75X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/nome_pessoal/class_nome_pessoal_1XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/classes_notas_5XX_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20X_24X/titulo_principal/class_titulo_principal_20X_24X_data.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_topico_650_data_items.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/models/class_monografia_tese_dissertacao_data.dart';
import '../../../../classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/localizacao_e_acesso_eletronico/class_localizacao_e_acesso_eletronico_841_88X_data.dart';

class EntradaMonograTeseDissertacaoRepository {
  final HttpService http;

  EntradaMonograTeseDissertacaoRepository(this.http);

  // MÉTODOS [POST, GET]
  Future<ClassGenericResponse> getCutter({required String nome}) async {
    try {
      var request = await http.getHttp.get(
         Uri.parse('${HttpService.baseUrl}cutter/getCutter/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$nome')
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> setMonografiaTeseEDissertacao({
    required ClassLiderData lider,
    required ClassCamposDeControle_00X_Data camposDeControle,
    required ClassTodosOsMateriais_008_Data todosOsMateriais,
    required ClassLivros_008_Data livros_008_data,
    required ClassFonteDeCatalogacao_02X_09X_Data fonteDeCatalogacao,
    required ClassNumeroDeClassificacaoDecimalUniversal_02X_09X_Data cdu,
    required ClassNumeroDeChamadaLocal_02X_09X_Data numeroDeChamadaLocal,
    required ClassNomePessoal_1XX_Data nomePessoal,
    required ClassTituloPrincipal_20X_24X_Data tituloPrincipal,
    required ClassImprenta_25X_28XData imprenta,
    required ClassDescricaoFisica_3XX_Data descricaoFisica,
    required ClassNotaGeral_5XX_Data notaGeral,
    required ClassNotaDeDissertacaoOuTese_5XX_Data notaDeDissertacaoOuTese,
    required ClassNotaDeBibliografia_5XX_Data notaDeBibliografia,
    required ClassNotaDeResumo_5XX_Data notaDeResumo,
    required ClassNotaDeOutrosFormatosDisponiveis_5XX_Data notaDeOutrosFormatosDisponiveis,
    required ClassEntidade_6XX_Data entidade,
    required ClassTopico_650_DataItems topico,
    required ClassNomePessoal_70X_75X_Data entradaSecundariaNomePessoal,
    required ClassEntidade_70X_75X_Data entradaSecundariaEntidade,
    required ClassLocalizacaoEAcessoEletronico_841_88X_Data localizacaoEAcessoEletronico,
    required String codigoAcervo,
    required String exemplarDataID,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}monografiaTeseEDissertacao/setMonografiaTeseEDissertacao/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$codigoAcervo/$exemplarDataID'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, Map<String, dynamic>>{
          'lider_000_Data': {
            'etiqueta_000': lider.etiqueta_000,
            'tamanhoDoRegistro': lider.tamanhoDoRegistro_00_04,
            'statusDoRegistro': lider.statusDoRegistro_05,
            'tipoDeRegistro': lider.tipoDeRegistro_06,
            'nivelBibliografico': lider.nivelBibliografico_07,
            'tipoDeControle': lider.tipodeControle_08,
            'esquemaDeCodificacaoDeCaractere': lider.esquemaDeCodificacaoDeCaractere_09,
            'numeroDeIndicadores': lider.numeroDeIndicadores_10,
            'numeroDeSubcampos': lider.numeroDeSubcampos_11,
            'enderecoDeDados': lider.enderecoDeDados_12_16,
            'nivelDeCodificacao': lider.nivelDeCodificacao_17,
            'formaDeCatalogacaoDescritiva': lider.formaDeCatalogacaoDescritiva_18,
            'nivelDeRegistroDeRecurso': lider.nivelDeRegistroDeRecurso_19,
            'tamanhoDaParteCorrespondenteAoTamanhoDoCampo': lider.tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20,
            'tamanhoDaPosicaoDoCaractereDeInicio': lider.tamanhoDaPosicaoDoCaractereDeInicio_21,
            'tamanhoDaParteDefinidaParaImplementacao': lider.tamanhoDaParteDefinidaParaImplementacao_22,
            'entradaNaoDefinida': lider.entradaNaoDefinida_23,
          },
          'camposDeControleData' : {
            'numeroDeControle': camposDeControle.numeroDeControle_001,
            'codigoMarcAgenciaCatalogadora': camposDeControle.codigoAgenciaCatalogadora_003,
            'dataEHoraUltimaAtualizacao': camposDeControle.dataEHoraUltimaAtualizacao_005,
          },
          'todosOsMateriaisData': {
            'etiqueta_008': todosOsMateriais.etiqueta_008,
            'dataDeEntradaDoRegistro': todosOsMateriais.dataDeEntradaDoRegistroNoArquivo_00_05,
            'tipoDeData': todosOsMateriais.tipodeDataOuStatusDePublicacao_06,
            'data1': todosOsMateriais.data1_07_10,
            'data2': todosOsMateriais.data2_11_14,
            'lugarDePublicacao': todosOsMateriais.lugarDePublicacaoProducaoExecucao_15_17,
            'idiomaDoTextoDoDocumento': todosOsMateriais.idiomaDoTextoDoDocumento_35_37,
            'registroModificado': todosOsMateriais.registroModificado_38,
            'fonteDeCatalogacao': todosOsMateriais.fonteDeCatalogacao_39,
          },
          'campo_008_LivroData': {
            'ilustracoes': livros_008_data.ilustracoes_18_21,
            'publicoAlvo': livros_008_data.publicoAlvo_22,
            'formaDoDocumento': livros_008_data.formaDoDocumento_23,
            'naturezaDoConteudo': livros_008_data.naturezaDoConteudo_24_27,
            'publicacaoGovernamental': livros_008_data.publicacaoGovernamental_28,
            'publicacaoDeConferencia': livros_008_data.publicacaoDeConferencia_29,
            'obraComemorativa': livros_008_data.obraComemorativa_30,
            'indice': livros_008_data.indice_31,
            'indefinido': livros_008_data.indefinido_32,
            'formaLiteraria': livros_008_data.formaLiteraria_33,
            'biografia': livros_008_data.biografia_34,
          },
          'fonteDeCatalogacao_040_Data': {
            'etiqueta_040': fonteDeCatalogacao.etiqueta_040,
            'primeiroIndicador': fonteDeCatalogacao.primeiroIndicador,
            'segundoIndicador': fonteDeCatalogacao.segundoIndicador,
            'a_codigoDaAgenciaCatalogadora': fonteDeCatalogacao.$a_codigoDaAgenciaCatalogadora,
            'b_idiomaCatalogacao': fonteDeCatalogacao.$b_idiomaCatalogacao,
            'c_agenciaQueTranscreveuORegistro': fonteDeCatalogacao.$c_agenciaQueTranscreveuORegistro,
            'd_agenciaQueAlterouORegistro': fonteDeCatalogacao.$d_agenciaQueAlterouORegistro,
            'e_fontesConvencionaisDedescricaoDeDados': fonteDeCatalogacao.$e_fontesConvencionaisDedescricaoDeDados,
            'ligacao_6': fonteDeCatalogacao.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': fonteDeCatalogacao.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'numeroDeClassificacaoDecimalUniversal_080_Data': {
            'etiqueta_080': cdu.etiqueta_080,
            'primeiroIndicador': cdu.primeiroIndicador,
            'segundoIndicador': cdu.segundoIndicador,
            'a_numeroDeClassificacaoDecimalUniversal': cdu.$a_numeroDeClassificacaoDecimalUniversal,
            'b_numeroDoItem': cdu.$b_numeroDoItem,
            'x_subdivisaoAuxiliarComum': cdu.$x_subdivisaoAuxiliarComun,
            'numeroDeControleDoRegistroDeAutoridade_0': cdu.$0_numeroDeControleDoRegistroDeAutoridades,
            'numeroDaEdicao_2': cdu.$2_numeroDeEdicao,
            'ligacao_6': cdu.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': cdu.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'numeroDeChamadaLocal_090_Data': {
            'etiqueta_090': numeroDeChamadaLocal.etiqueta_90,
            'primeiroIndicador': numeroDeChamadaLocal.primeiroIndicador,
            'segundoIndicador': numeroDeChamadaLocal.segundoIndicador,
            'a_classificacao': numeroDeChamadaLocal.$a_classificacao,
            'b_numeroDeCutter': numeroDeChamadaLocal.$b_numeroDeCutter,
            'c_tipoDeObra': numeroDeChamadaLocal.$c_tipoDeObra,
            'd_anoDePublicacao': numeroDeChamadaLocal.$d_anoDePublicacao,
            'unidadeCatalogadora_8': numeroDeChamadaLocal.$8_unidadeCatalogadora,
            'siglaInstituicao': numeroDeChamadaLocal.siglaInstituicao,
          },
          'nomePessoal_100_Data': {
            'etiqueta_100': nomePessoal.etiqueta_100,
            'primeiroIndicador': nomePessoal.primeiroIndicador,
            'segundoIndicador': nomePessoal.segundoIndicador,
            'a_nomePessoal': nomePessoal.$a_nomePessoal,
            'b_algarismosRomanosQueSeguemPrenome': nomePessoal.$b_algarismosRomanosQueSeguemPrenome,
            'c_titulosEOutrasPalavrasAssociadasAoNome': nomePessoal.$c_titulosEOutrasPalavrasAssociadasAoNome,
            'd_datasAssociadasAoNome': nomePessoal.$d_datasAssociadasAoNome,
            'e_termoDeRelacao': nomePessoal.$e_termoDeRelacao,
            'f_dataDaPublicacaoDoTrabalho': nomePessoal.$f_dataDaPublicacaoDoTrabalho,
            'g_informacoesAdicionais': nomePessoal.$g_informacoesAdicionais,
            'j_atributoQualificador': nomePessoal.$j_atributoQualificador,
            'k_subcabecalho': nomePessoal.$k_subcabecalho,
            'l_idiomaDaPublicacao': nomePessoal.$l_idiomaDaPublicacao,
            'n_numeroDaSecaoDaPublicacao': nomePessoal.$n_numeroDaSecaoDaPublicacao,
            'p_nomeDaSecaoDaPublicacao': nomePessoal.$p_nomeDaSecaoDaPublicacao,
            'q_formaCompletaDoNome': nomePessoal.$q_formaCompletaDoNome,
            't_tituloDaPublicacao': nomePessoal.$t_tituloDaPublicacao,
            'u_afiliacao': nomePessoal.$u_afiliacao,
            'numeroDeControleDoRegistroDeAutoridade_0': nomePessoal.$0_numeroDeControleDoRegistroDeAutoridade,
            'relacao_4': nomePessoal.$4_relacao,
            'ligacao_6': nomePessoal.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': nomePessoal.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'tituloPrincipal_245_Data': {
            'etiqueta_245': tituloPrincipal.etiqueta_245,
            'primeiroIndicador': tituloPrincipal.primeiroIndicador,
            'segundoIndicador': tituloPrincipal.segundoIndicador,
            'a_tituloPrincipal': tituloPrincipal.$a_tituloPrincipal,
            'b_subtitulo': tituloPrincipal.$b_subtitulo,
            'c_indicacaoDeResponsabilidade': tituloPrincipal.$c_indicacaoDeResponsabilidade,
            'f_datasDeAbrangencia': tituloPrincipal.$f_datasDeAbrangencia,
            'g_conjuntoDeDatas': tituloPrincipal.$g_conjuntoDeDatas,
            'h_meioDGM': tituloPrincipal.$h_meioDGM,
            'k_formaDoMaterial': tituloPrincipal.$k_formaDoMaterial,
            'n_numeroDaSecaoDaPublicacao': tituloPrincipal.$n_numeroDaSecaoDaPublicacao,
            'p_nomeDaSecaoDaPublicacao': tituloPrincipal.$p_nomeDaSecaoDaPublicacao,
            's_versao': tituloPrincipal.$s_versao,
            'ligacao_6': tituloPrincipal.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': tituloPrincipal.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'imprenta_260_Data': {
            'etiqueta_260': imprenta.etiqueta_260,
            'primeiroIndicador': imprenta.primeiroIndicador,
            'segundoIndicador': imprenta.segundoIndicador,
            'a_lugarDePublicacao': imprenta.$a_lugarDePublicacao,
            'b_nomeDoEditor': imprenta.$b_nomeDoEditor,
            'c_dataDePublicacao': imprenta.$c_dataDePublicacao,
            'e_lugarDeFabricacao': imprenta.$e_lugarDeFabricacao,
            'f_nomeDoFabricante': imprenta.$f_nomeDoFabricante,
            'g_dataDeFabricacao': imprenta.$g_dataDeFabricacao,
            'materialEspecificado_3': imprenta.$3_materialEspecificado,
            'ligacao_6': imprenta.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': imprenta.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'descricaoFisica_300_Data': {
            'etiqueta_300': descricaoFisica.etiqueta_300,
            'primeiroIndicador': descricaoFisica.primeiroIndicador,
            'segundoIndicador': descricaoFisica.segundoIndicador,
            'a_extensao': descricaoFisica.$a_extensao,
            'b_detalhesFisicosAdicionais': descricaoFisica.$b_detalhesFisicosAdicionais,
            'c_dimensoes': descricaoFisica.$c_dimensoes,
            'e_materialAdicional': descricaoFisica.$e_materialAdicional,
            'f_tipoDeUnidade': descricaoFisica.$f_tipoDeUnidade,
            'g_tamanhoDaUnidade': descricaoFisica.$g_tamanhoDaUnidade,
            'materialEspecificado_3': descricaoFisica.$3_materialEspecificado,
            'ligacao_6': descricaoFisica.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': descricaoFisica.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'notaGeral_500_Data': {
            'etiqueta_500': notaGeral.etiqueta_500,
            'primeiroIndicador': notaGeral.primeiroIndicador,
            'segundoIndicador': notaGeral.segundoIndicador,
            'a_notaGeral': notaGeral.$a_notaGeral,
            'materialEspecificado_3': notaGeral.$3_materialEspecificado,
            'codigoDaInstituicao_5': notaGeral.$5_codigoDaInstituicao,
            'ligacao_6': notaGeral.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': notaGeral.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'notaDeDissertacaoOuTese_502_Data': {
            'etiqueta_502': notaDeDissertacaoOuTese.etiqueta_502,
            'primeiroIndicador': notaDeDissertacaoOuTese.primeiroIndicador,
            'segundoIndicador': notaDeDissertacaoOuTese.segundoIndicador,
            'a_notaDeDissertacaoOuTese': notaDeDissertacaoOuTese.$a_notaDeDissertacaoOuTese,
            'ligacao_6': notaDeDissertacaoOuTese.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': notaDeDissertacaoOuTese.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'notaDeBibliografia_504_Data': {
            'etiqueta_504': notaDeBibliografia.etiqueta_504,
            'primeiroIndicador': notaDeBibliografia.primeiroIndicador,
            'segundoIndicador': notaDeBibliografia.segundoIndicador,
            'a_notaDeBibliografia': notaDeBibliografia.$a_notaDeBibliografia,
            'b_numeroDeReferencias': notaDeBibliografia.$b_numeroDeReferencias,
            'ligacao_6': notaDeBibliografia.$6_ligacao,
            'campoDeLigacoesENumeroDeSequencia_8': notaDeBibliografia.$8_campoDeLigacoesENumeroDeSequencia,
          },
          'notaDeResumo_520_Data': {
            'etiqueta_520': notaDeResumo.etiqueta_520,
            'primeiroIndicador': notaDeResumo.primeiroIndicador,
            'segundoIndicador': notaDeResumo.segundoIndicador,
            'a_notaDeResumo': notaDeResumo.$a_notaDeResumo,
            'b_expansaoDaNotaDeResumo': notaDeResumo.$b_expansaoDaNotaDeResumo,
            'c_agenciaDepositaria': notaDeResumo.$c_agenciaDepositaria,
            'u_URI': notaDeResumo.$u_URI,
            'fonte_2': notaDeResumo.$2_fonte,
            'materialEspecificado_3': notaDeResumo.$3_materialEspecificado,
            'ligacao_6': notaDeResumo.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': notaDeResumo.$8_campoDeLigacaoENumeroDeSequencia
          },
          'notaDeOutrosFormatosDisponiveis_530_Data': {
            'etiqueta_530': notaDeOutrosFormatosDisponiveis.etiqueta_530,
            'primeiroIndicador': notaDeOutrosFormatosDisponiveis.primeiroIndicador,
            'segundoIndicador': notaDeOutrosFormatosDisponiveis.segundoIndicador,
            'a_outroFormatoDisponivel': notaDeOutrosFormatosDisponiveis.$a_outroFormatoDisponivel,
            'b_fonte': notaDeOutrosFormatosDisponiveis.$b_fonte,
            'c_condicoes': notaDeOutrosFormatosDisponiveis.$c_condicoes,
            'd_numeroDeOrdem': notaDeOutrosFormatosDisponiveis.$d_numeroDeOrdem,
            'u_URI': notaDeOutrosFormatosDisponiveis.$u_URI,
            'materialEspecificado_3': notaDeOutrosFormatosDisponiveis.$3_materialEspecificado,
            'ligacao_6': notaDeOutrosFormatosDisponiveis.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': notaDeOutrosFormatosDisponiveis.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'assuntoEntidade_610_Data': {
            'etiqueta_610': entidade.etiqueta_610,
            'primeiroIndicador': entidade.primeiroIndicador,
            'segundoIndicador': entidade.segundoIndicador,
            'a_nomeDaEntidadeOuLugar': entidade.$a_nomeDaEntidadeOuLugar,
            'b_unidadesSubordinadas': entidade.$b_unidadesSubordinadas,
            'c_LocalDeRealizacaoDoEncontro': entidade.$c_LocalDeRealizacaoDoEncontro,
            'd_dataDeRealizacaoDoEvento': entidade.$d_dataDeRealizacaoDoEvento,
            'e_termoDeRelacao': entidade.$e_termoDeRelacao,
            'f_dataDaPublicacaoDoTrabalho': entidade.$f_dataDaPublicaacoDoTrabalho,
            'g_informacoesAdicionais': entidade.$g_informacoesAdicionais,
            'h_meioDGM': entidade.$h_meioDGM,
            'k_subcabecalho': entidade.$k_subcabecalho,
            'l_idiomaDaPublicacao': entidade.$l_idiomaDaPublicacao,
            'm_instrumentosMusicais': entidade.$m_instrumentosMusicais,
            'n_numeroDaSecaoOuEvento': entidade.$n_numeroDaSecaoOuEvento,
            'o_arranjoMusical': entidade.$o_arranjoMusical,
            'p_nomeDaSecaoPublicada': entidade.$p_nomeDaSecaoPublicada,
            'r_escalaMusical': entidade.$r_escalaMusical,
            's_versao': entidade.$s_versao,
            't_tituloDaPublicacao': entidade.$t_tituloDaPublicacao,
            'u_afiliacao': entidade.$u_afiliacao,
            'v_subdivisaoDeForma': entidade.$v_subdivisaoDeForma,
            'x_subdivisaoGeral': entidade.$x_subdivisaoGeral,
            'y_subdivisaoCronologica': entidade.$y_subdivisaoCronologica,
            'z_subdivisaoGeografica': entidade.$z_subdivisaoGeografica,
            'numeroDeControleDoRegistroDeAutoridade_0': entidade.$0_numeroDeControleDoRegistroDeAutoridade,
            'fonteDoCabecalhoOuTermo_2': entidade.$2_fonteDoCabecalhoOuTermo,
            'materialEspecificado_3': entidade.$3_materialEspecificado,
            'relacao_4': entidade.$4_relacao,
            'ligacao_6': entidade.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': entidade.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'assuntoTopico_650_Data': {
            'etiqueta_650': topico.etiqueta_650,
            'primeiroIndicador': topico.primeiroIndicador,
            'segundoIndicador': topico.segundoIndicador,
            'a_cabecalhoTopicoOuNomeGeografico': topico.$a_cabecalhoTopicoOuNomeGeografico,
            'b_cabecalhoTopicoSeguindoNomeGeografico': topico.$b_cabecalhoTopicoSeguindoNomeGeografico,
            'c_localDoEvento': topico.$c_localDoEvento,
            'd_dataDeRealizacaoDoEvento': topico.$d_dataDeRealizacaoDoEvento,
            'e_termoDeRelacao': topico.$e_termoDeRelacao,
            'g_informacoesAdicionais': topico.$g_informacoesAdicionais,
            'v_subdivisaoDeForma': topico.$v_subdivisaoDeForma,
            'x_subdivisaoGeral': topico.$x_subdivisaoGeral,
            'y_subdivisaoCronologica': topico.$y_subdivisaoCronologica,
            'z_subdivisaoGeografica': topico.$z_subdivisaoGeografica,
            'numeroDeControleDoRegistroDeAutoridade_0': topico.$0_numeroDeControleDoRegistroDeAutoridade,
            'fonteDoCabecalhoOuTermo_2': topico.$2_fonteDoCabecalhoOuTermo,
            'materialEspecificado_3': topico.$3_materialEspecificado,
            'relacao_4': topico.$4_relacao,
            'ligacao_6': topico.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': topico.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'nomePessoal_700_Data': {
            'etiqueta_700': entradaSecundariaNomePessoal.etiqueta_700,
            'primeiroIndicador': entradaSecundariaNomePessoal.primeiroIndicador,
            'segundoIndicador': entradaSecundariaNomePessoal.segundoIndicador,
            'a_nomePessoal': entradaSecundariaNomePessoal.$a_nomePessoal,
            'b_algarismosRomanosQueSeguemOPrenome': entradaSecundariaNomePessoal.$b_algarismosRomanosQueSeguemOPrenome,
            'c_titulosEOutrasPalavrasAssociadasAoNome': entradaSecundariaNomePessoal.$c_titulosEOutrasPalavrasAssociadasAoNome,
            'd_datasAssociadasAoNome': entradaSecundariaNomePessoal.$d_datasAssociadasAoNome,
            'e_termoDeRelacao': entradaSecundariaNomePessoal.$e_termoDeRelacao,
            'f_dataDaPublicacaoDoTrabalho': entradaSecundariaNomePessoal.$f_dataDaPublicacaoDoTrabalho,
            'g_informacoesAdicionais': entradaSecundariaNomePessoal.$g_informacoesAdicionais,
            'h_meioDGM': entradaSecundariaNomePessoal.$h_meioDGM,
            'i_informacoesSobreRelacoes': entradaSecundariaNomePessoal.$i_informacoesSobreRelacoes,
            'j_atributo': entradaSecundariaNomePessoal.$j_atributo,
            'k_subcabecalhos': entradaSecundariaNomePessoal.$k_subcabecalhos,
            'l_idiomaDaPublicacao': entradaSecundariaNomePessoal.$l_idiomaDaPublicacao,
            'm_instrumentosMusicais': entradaSecundariaNomePessoal.$m_instrumentosMusicais,
            'n_numeroDaSecaoDaPublicacao': entradaSecundariaNomePessoal.$n_numeroDaSecaoDaPublicacao,
            'o_arranjoMusical': entradaSecundariaNomePessoal.$o_arranjoMusical,
            'p_nomeDaSecaoDaPublicacao': entradaSecundariaNomePessoal.$p_nomeDaSecaoDaPublicacao,
            'q_formaCompletaDoNome': entradaSecundariaNomePessoal.$q_formaCompletaDoNome,
            'r_escalaMusical': entradaSecundariaNomePessoal.$r_escalaMusical,
            's_versao': entradaSecundariaNomePessoal.$s_versao,
            't_tituloDaPublicacao': entradaSecundariaNomePessoal.$t_tituloDaPublicacao,
            'u_afiliacao': entradaSecundariaNomePessoal.$u_afiliacao,
            'x_ISSN': entradaSecundariaNomePessoal.$x_ISSN,
            'numeroDeControleDoRegistroDeAutoridade_0': entradaSecundariaNomePessoal.$0_numeroDeControleDoRegistroDeAutoridade,
            'materialEspecificado_3': entradaSecundariaNomePessoal.$3_materialEspecificado,
            'relacao_4': entradaSecundariaNomePessoal.$4_relacao,
            'codigoDaInstituicao_5': entradaSecundariaNomePessoal.$5_codigoDaInstituicao,
            'ligacao_6': entradaSecundariaNomePessoal.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': entradaSecundariaNomePessoal.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'entradaSecundariaEntidade_710_Data': {
            'etiqueta_710': entradaSecundariaEntidade.etiqueta_710,
            'primeiroIndicador': entradaSecundariaEntidade.primeiroIndicador,
            'segundoIndicador': entradaSecundariaEntidade.segundoIndicador,
            'a_nomeDaEntidadeOuDoLugar': entradaSecundariaEntidade.$a_nomeDaEntidadeOuDoLugar,
            'b_unidadesSubordinadas': entradaSecundariaEntidade.$b_unidadesSubordinadas,
            'c_localDeRealizacaoDoEvento': entradaSecundariaEntidade.$c_localDeRealizacaoDoEvento,
            'd_dataDeRealizacaoDoEvento': entradaSecundariaEntidade.$d_dataDeRealizacaoDoEvento,
            'e_termoDeRelacao': entradaSecundariaEntidade.$e_termoDeRelacao,
            'f_dataDePublicacao': entradaSecundariaEntidade.$f_dataDePublicacao,
            'g_informacoesAdicionais': entradaSecundariaEntidade.$g_informacoesAdicionais,
            'h_meioDGM': entradaSecundariaEntidade.$h_meioDGM,
            'i_informacoesSobreRelacoes': entradaSecundariaEntidade.$i_informacoesSobreRelacoes,
            'k_subcabecalho': entradaSecundariaEntidade.$k_subcabecalho,
            'l_idiomaDaPublicacao': entradaSecundariaEntidade.$l_idiomaDaPublicacao,
            'm_meioDeExecucaoParaMusica': entradaSecundariaEntidade.$m_meioDeExecucaoParaMusica,
            'n_numeroDaSecao': entradaSecundariaEntidade.$n_numeroDaSecao,
            'o_arranjoMusical': entradaSecundariaEntidade.$o_arranjoMusical,
            'p_nomeDaSecaoDaPublicacao': entradaSecundariaEntidade.$p_nomeDaSecaoDaPublicacao,
            'r_escalaMusical': entradaSecundariaEntidade.$r_escalaMusical,
            's_versao': entradaSecundariaEntidade.$s_versao,
            't_tituloDaPublicacao': entradaSecundariaEntidade.$t_tituloDaPublicacao,
            'u_afiliacao': entradaSecundariaEntidade.$u_afiliacao,
            'x_ISSN': entradaSecundariaEntidade.$x_ISSN,
            'numeroDeControleDoRegistroDeAutoridade_0': entradaSecundariaEntidade.$0_numeroDeControleDoRegistroDeAutoridade,
            'materialEspecificado_3': entradaSecundariaEntidade.$3_materialEspecificado,
            'relacao_4': entradaSecundariaEntidade.$4_relacao,
            'codigoDaInstituicao_5': entradaSecundariaEntidade.$5_codigoDaInstituicao,
            'ligacao_6': entradaSecundariaEntidade.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': entradaSecundariaEntidade.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'localizacaoEAcessoEletronico_856_Data': {
            'etiqueta_856': localizacaoEAcessoEletronico.etiqueta_856,
            'primeiroIndicador': localizacaoEAcessoEletronico.primeiroIndicador,
            'segundoIndicador': localizacaoEAcessoEletronico.segundoIndicador,
            'a_nomeDoServidor': localizacaoEAcessoEletronico.$a_nomeDoServidor,
            'b_numeroDoAcesso': localizacaoEAcessoEletronico.$b_numeroDoAcesso,
            'c_informacoesSobreCompactacao': localizacaoEAcessoEletronico.$c_informacoesSobreCompactacao,
            'd_caminho': localizacaoEAcessoEletronico.$d_caminho,
            'f_nomeDoArquivoEletronico': localizacaoEAcessoEletronico.$f_nomeDoArquivoEletronico,
            'h_username': localizacaoEAcessoEletronico.$h_username,
            'i_instrucao': localizacaoEAcessoEletronico.$i_instrucao,
            'j_bitsPorSegundo': localizacaoEAcessoEletronico.$j_bitsPorSegundo,
            'k_password': localizacaoEAcessoEletronico.$k_password,
            'l_login': localizacaoEAcessoEletronico.$l_login,
            'm_contatoParaObterAjuda': localizacaoEAcessoEletronico.$m_contatoParaObterAjuda,
            'n_nomeDaLocalizacaoDoServidor': localizacaoEAcessoEletronico.$n_nomeDaLocalizacaoDoServidor,
            'o_sistemaOperativo': localizacaoEAcessoEletronico.$o_sistemaOperativo,
            'p_porta': localizacaoEAcessoEletronico.$p_porta,
            'q_tipoDoFormatoEletronico': localizacaoEAcessoEletronico.$q_tipoDoFormatoEletronico,
            'r_configuracao': localizacaoEAcessoEletronico.$r_configuracao,
            's_tamanhoDoArquivo': localizacaoEAcessoEletronico.$s_tamanhoDoArquivo,
            't_emulacaoDeTerminal': localizacaoEAcessoEletronico.$t_emulacaoDeTerminal,
            'u_identificadorUniformeDeRecursoURI': localizacaoEAcessoEletronico.$u_identificadorUniformeDeRecursoURI,
            'v_horarioDeAcesso': localizacaoEAcessoEletronico.$v_horarioDeAcesso,
            'w_numeroDeControleDeUmRegistro': localizacaoEAcessoEletronico.$w_numeroDeControleDeUmRegistro,
            'x_notaInterna': localizacaoEAcessoEletronico.$x_notaInterna,
            'y_textoDoLink': localizacaoEAcessoEletronico.$y_textoDoLink,
            'z_notaDoPublico': localizacaoEAcessoEletronico.$z_notaDoPublico,
            'metodoDeAcesso_2': localizacaoEAcessoEletronico.$2_metodoDeAcesso,
            'materialEspecificado_3': localizacaoEAcessoEletronico.$3_materialEspecificado,
            'ligacao_6': localizacaoEAcessoEletronico.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': localizacaoEAcessoEletronico.$8_campoDeLigacaoENumeroDeSequencia,
          },
        },
      ));
      if(request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      print(error.toString());
    }
    throw Exception();
  }

  Future<List<ClassMonografiaTeseDissertacaoData>> getMonografiaTeseEDissertacaoPorNome({ required String nomeMonografiaTeseEDissertacao, required int qtdRegistros }) async {
    try {
      var request = await http.getHttp.get(Uri.parse("${HttpService.baseUrl}monografiaTeseEDissertacao/getMonografiaTeseEDissertacaoPorNome/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$nomeMonografiaTeseEDissertacao/$qtdRegistros"));
      if (request.statusCode == 200 ) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassMonografiaTeseDissertacaoData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> copiarMonografiaTeseEDissertacao({
      required String monografiaTeseEDissertacaoDataID,                 
      required String liderID,                                          
      required String camposDeControle_00X_DataID,                      
      required String todosOsMateriais_008_DataID,                      
      required String livros_008_DataID,                                
      required String fonteDeCatalogacao_040_DataID,                    
      required String numeroDeClassificacaoDecimalUniversal_080_DataID, 
      required String numeroDeChamadaLocal_090_DataID,                  
      required String nomePessoal_100_DataID,                           
      required String tituloPrincipal_245_DataID,                       
      required String imprenta_260_DataID,                              
      required String descricaoFisica_300_DataID,                       
      required String notaGeral_500_DataID,                             
      required String notaDeDissertacaoOuTese_502_DataID,               
      required String notaDeBibliografia_504_DataID,                    
      required String notaDeResumo_520_DataID,                          
      required String notaDeOutrosFormatosDisponiveis_530_DataID,       
      required String entidade_610_DataID,                              
      required String topico_650_DataID,                                
      required String nomePessoal_700_DataID,                           
      required String entidade_710_DataID,                              
      required String exemplarNumero,                                   
      required String exemplarDataID,                                   
      required String acervoDataID,                                     
      required String localizacaoEAcessoEletronico_856_DataID,          
    }) async {
    try {
      var request = await http.getHttp.post(Uri.parse('${HttpService.baseUrl}monografiaTeseEDissertacao/copiarMonografiaTeseEDissertacao/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'), 
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{
        'monografiaTeseEDissertacaoDataID': monografiaTeseEDissertacaoDataID,
        'liderID': liderID,
        'camposDeControle_00X_DataID': camposDeControle_00X_DataID,
        'todosOsMateriais_008_DataID': todosOsMateriais_008_DataID,
        'livros_008_DataID': livros_008_DataID,
        'fonteDeCatalogacao_040_DataID': fonteDeCatalogacao_040_DataID,
        'numeroDeClassificacaoDecimalUniversal_080_DataID': numeroDeClassificacaoDecimalUniversal_080_DataID,
        'numeroDeChamadaLocal_090_DataID': numeroDeChamadaLocal_090_DataID,
        'nomePessoal_100_DataID': nomePessoal_100_DataID,
        'tituloPrincipal_245_DataID': tituloPrincipal_245_DataID,
        'imprenta_260_DataID': imprenta_260_DataID,
        'descricaoFisica_300_DataID': descricaoFisica_300_DataID,
        'notaGeral_500_DataID': notaGeral_500_DataID,
        'notaDeDissertacaoOuTese_502_DataID': notaDeDissertacaoOuTese_502_DataID,
        'notaDeBibliografia_504_DataID': notaDeBibliografia_504_DataID,
        'notaDeResumo_520_DataID': notaDeResumo_520_DataID,
        'notaDeOutrosFormatosDisponiveis_530_DataID': notaDeOutrosFormatosDisponiveis_530_DataID,
        'entidade_610_DataID': entidade_610_DataID,
        'topico_650_DataID': topico_650_DataID,
        'nomePessoal_700_DataID': nomePessoal_700_DataID,
        'entidade_710_DataID': entidade_710_DataID,
        'exemplarNumero': exemplarNumero,
        'exemplarDataID': exemplarDataID,
        'acervoDataID': acervoDataID,
        'localizacaoEAcessoEletronico_856_DataID': localizacaoEAcessoEletronico_856_DataID,
      }),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> updateMonografiaTeseEDissertacao({ required ClassMonografiaTeseDissertacaoData tese, required int monografiaTeseEDissertacaoID }) async {
    try {
      var request = await http.getHttp.post(Uri.parse('${HttpService.baseUrl}monografiaTeseEDissertacao/updateMonografiaTeseEDissertacao/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$monografiaTeseEDissertacaoID'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, Map<String, dynamic>>{
          'nomePessoal_100_Data': {
              'nomePessoal_100_DataID': tese.nomePessoal_100_DataID,
              'etiqueta_100': tese.etiqueta_100,
              'primeiroIndicador': tese.primeiroIndicador_100,
              'segundoIndicador': tese.segundoIndicador_100,
              'a_nomePessoal': tese.$a_nomePessoal_100,
              'c_titulosEOutrasPalavrasAssociadasAoNome': tese.$c_titulosEOutrasPalavrasAssociadasAoNome_100,
              'd_datasAssociadasAoNome': tese.$d_datasAssociadasAoNome_100,
          },
          'tituloPrincipal_245_Data': {
            'tituloPrincipal_245_DataID': tese.tituloPrincipal_245_DataID,
            'etiqueta_245': tese.etiqueta_245,
            'primeiroIndicador': tese.primeiroIndicador_245,
            'segundoIndicador': tese.segundoIndicador_245,
            'a_tituloPrincipal': tese.$a_tituloPrincipal,
            'b_subtitulo': tese.$b_subtitulo,
            'c_indicacaoDeResponsabilidade': tese.$c_indicacaoDeResponsabilidade,
          },
          'imprenta_260_Data': {
            'imprenta_260_DataID': tese.imprenta_260_DataID,
            'etiqueta_260': tese.etiqueta_260,
            'primeiroIndicador': tese.primeiroIndicador_260,
            'segundoIndicador': tese.segundoIndicador_260,
            'a_lugarDePublicacao': tese.$a_lugarDePublicacao,
            'b_nomeDoEditor': tese.$b_nomeDoEditor,
            'c_dataDePublicacao': tese.$c_dataDePublicacao,
          },
          'descricaoFisica_300_Data': {
            'descricaoFisica_300_DataID': tese.descricaoFisica_300_DataID,
            'etiqueta_300': tese.etiqueta_300,
            'primeiroIndicador': tese.primeiroIndicador_300,
            'segundoIndicador': tese.segundoIndicador_300,
            'a_extensao': tese.$a_extensao,
            'c_dimensoes': tese.$c_dimensoes,
          },
          'notaGeral_500_Data' : {
            'notaGeral_500_DataID': tese.notaGeral_500_DataID,
            'etiqueta_500': tese.etiqueta_500,
            'primeiroIndicador': tese.primeiroIndicador_500,
            'segundoIndicador': tese.segundoIndicador_500,
            'a_notaGeral': tese.$a_notaGeral,
          },
          'notaDeDissertacaoOuTese_502_Data' : {
            'notaDeDissertacaoOuTese_502_DataID': tese.notaDeDissertacaoOuTese_502_DataID,
            'etiqueta_502': tese.etiqueta_502,
            'primeiroIndicador': tese.primeiroIndicador_502,
            'segundoIndicador': tese.segundoIndicador_502,
            'a_notaDeDissertacaoOuTese': tese.$a_notaDeDissertacaoOuTese,
          },
          'nomePessoal_700_Data' : {
            'nomePessoal_700_DataID': tese.nomePessoal_700_DataID,
            'etiqueta_700': tese.etiqueta_700,
            'primeiroIndicador': tese.primeiroIndicador_700,
            'segundoIndicador': tese.segundoIndicador_700,
            'a_nomePessoal': tese.$a_nomePessoal_700,
          },
          'localizacaoEAcessoEletronico_856_Data': {
            'localizacaoEAcessoEletronico_856_DataID': tese.localizacaoEAcessoEletronico_856_DataID,
            'etiqueta_856': tese.etiqueta_856,
            'primeiroIndicador': tese.primeiroIndicador_856,
            'segundoIndicador': tese.segundoIndicador_856,
            'a_nomeDoServidor': tese.$a_nomeDoServidor,
            'u_identificadorUniformeDeRecursoURI': tese.$u_identificadorUniformeDeRecursoURI,
          },
        },
      ));
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> removerMonografiaTeseEDissertacao({
    required String monografiaTeseEDissertacaoID,
    required String monografiaTeseEDissertacaoNome,
    required String liderID,
    required String acervoID,
    required String camposDeControle_00X_DataID,
    required String todosOsMateriais_008_DataID,
    required String livros_008_DataID,
    required String fonteDeCatalogacao_040_DataID,
    required String numeroDeClassificacaoDecimalUniversal_080_DataID,
    required String numeroDeChamadaLocal_090_DataID,
    required String nomePessoal_100_DataID,
    required String tituloPrincipal_245_DataID,
    required String imprenta_260_DataID,
    required String descricaoFisica_300_DataID,
    required String notaGeral_500_DataID,
    required String notaDeDissertacaoOuTese_502_DataID,
    required String notaDeBibliografia_504_DataID,
    required String notaDeResumo_520_DataID,
    required String notaDeOutrosFormatosDisponiveis_530_DataID,
    required String entidade_610_DataID,
    required String topico_650_DataID,
    required String nomePessoal_700_DataID,
    required String entidade_710_DataID,
    required String localizacaoEAcessoEletronico_856_DataID,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}monografiaTeseEDissertacao/removerMonografiaTeseEDissertacao/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          'monografiaTeseEDissertacaoID': monografiaTeseEDissertacaoID,
          'monografiaTeseEDissertacaoNome': monografiaTeseEDissertacaoNome,
          'camposDeControle_00X_DataID': camposDeControle_00X_DataID,
          'liderID': liderID,
          'acervoID': acervoID,
          'todosOsMateriais_008_DataID': todosOsMateriais_008_DataID,
          'livros_008_DataID': livros_008_DataID,
          'fonteDeCatalogacao_040_DataID': fonteDeCatalogacao_040_DataID,
          'numeroDeClassificacaoDecimalUniversal_080_DataID': numeroDeClassificacaoDecimalUniversal_080_DataID,
          'numeroDeChamadaLocal_090_DataID': numeroDeChamadaLocal_090_DataID,
          'nomePessoal_100_DataID': nomePessoal_100_DataID,
          'tituloPrincipal_245_DataID': tituloPrincipal_245_DataID,
          'imprenta_260_DataID': imprenta_260_DataID,
          'descricaoFisica_300_DataID': descricaoFisica_300_DataID,
          'notaGeral_500_DataID': notaGeral_500_DataID,
          'notaDeDissertacaoOuTese_502_DataID': notaDeDissertacaoOuTese_502_DataID,
          'notaDeBibliografia_504_DataID': notaDeBibliografia_504_DataID,
          'notaDeResumo_520_DataID': notaDeResumo_520_DataID,
          'notaDeOutrosFormatosDisponiveis_530_DataID': notaDeOutrosFormatosDisponiveis_530_DataID,
          'entidade_610_DataID': entidade_610_DataID,
          'topico_650_DataID': topico_650_DataID,
          'nomePessoal_700_DataID': nomePessoal_700_DataID,
          'entidade_710_DataID': entidade_710_DataID,
          'localizacaoeacessoeletronico_856_DataID': localizacaoEAcessoEletronico_856_DataID,
        },
      ));
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
