// ignore_for_file: avoid_print, non_constant_identifier_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/topico/class_topico_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/campo_de_tamanho_fixo_008/classes_008_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/class_campos_de_controle_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_chamada_local/class_numero_de_chamada_local_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/localizacao_e_acesso_eletronico/class_localizacao_e_acesso_eletronico_841_88X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/classes_entrada_secundaria_70X_75X_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/lider/class_lider_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20X_24X/classes_20X_24X_exports.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_livro_data.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_topico_650_data_items.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_nota_geral_500_data_items.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/classes_3XX_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/classes_25X_28X_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/classes_1XX_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/classes_02X_09X_exports.dart';

class EntradaLivroRepository {
  final HttpService http;

  EntradaLivroRepository(this.http);

  // MÉTODOS [POST, GET, UPDATE]
  Future<ClassGenericResponse> setLivro(
    {
      required ClassLiderData lider,
      required ClassCamposDeControle_00X_Data camposDeControle,
      required ClassTodosOsMateriais_008_Data todosOsMateriais,
      required ClassLivros_008_Data livros_008_data,
      required ClassISBN_02X_09X_Data isbn,
      required ClassFonteDeCatalogacao_02X_09X_Data fonteDeCatalogacao,
      required ClassNumeroDeClassificacaoDecimalUniversal_02X_09X_Data cdu,
      required ClassNumeroDeChamadaLocal_02X_09X_Data numeroDeChamadaLocal,
      required ClassNomePessoal_1XX_Data nomePessoal,
      required ClassTituloUniforme_20X_24X_Data tituloOriginal,
      required ClassTituloPrincipal_20X_24X_Data tituloPrincipal,
      required ClassEdicao_25X_28X_Data edicao,
      required ClassImprenta_25X_28XData imprenta,
      required ClassDescricaoFisica_3XX_Data descricaoFisica,
      required ClassTopico_6XX_Data topico,
      required ClassNomePessoal_70X_75X_Data nomePessoalSecundario,
      required ClassLocalizacaoEAcessoEletronico_841_88X_Data localizacaoEAcessoEletronico,
      required String codigoAcervo,
      required String exemplarDataID,
    }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}livros/setLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$codigoAcervo/$exemplarDataID'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, Map<String, dynamic>>{
          'lider': {
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
          'camposDeControle' : {
            'numeroDeControle': camposDeControle.numeroDeControle_001,
            'codigoMarcAgenciaCatalogadora': camposDeControle.codigoAgenciaCatalogadora_003,
            'dataEHoraUltimaAtualizacao': camposDeControle.dataEHoraUltimaAtualizacao_005,
          },
          'campo008LivroData': {
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
          'isbn_020_Data': {
            'etiqueta_020': isbn.etiqueta_020,
            'primeiroIndicador': isbn.primeiroIndicador,
            'segundoIndicador': isbn.segundoIndicador,
            'a_numeroISBN': isbn.$a_numeroISBN,
            'c_modalidadesDeAquisicao': isbn.$c_modalidadesDeAquisicao,
            'q_informacaoQualificadora': isbn.$q_informacaoQualificadora,
            'z_isbnCanceladoOuInvalido': isbn.$z_isbnCanceladoOuInvalido,
            'ligacao_6': isbn.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': isbn.$8_campoDeLigacaoENumeroDeSequencia,
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
          'numeroDeChamadaLocal_090_Data': {
            'etiqueta_090': numeroDeChamadaLocal.etiqueta_90,
            'primeiroIndicador': numeroDeChamadaLocal.primeiroIndicador,
            'segundoIndicador': numeroDeChamadaLocal.segundoIndicador,
            'a_classificacao': numeroDeChamadaLocal.$a_classificacao,
            'b_numeroDeCutter': numeroDeChamadaLocal.$b_numeroDeCutter,
            'c_tipoDeObra': numeroDeChamadaLocal.$c_tipoDeObra,
            'd_anoDePublicacao': numeroDeChamadaLocal.$d_anoDePublicacao,
            'unidadeCatalogadora_8': numeroDeChamadaLocal.$8_unidadeCatalogadora,
            'siglaInstituicao': numeroDeChamadaLocal.siglaInstituicao
          },
          'nomePessoal_100_Data': {
            'etiqueta_100': nomePessoal.etiqueta_100,
            'primeiroIndicador': nomePessoal.primeiroIndicador,
            'segundoIndicador': nomePessoal.segundoIndicador,
            'a_nomePessoal': nomePessoal.$a_nomePessoal,
            'b_algarismosRomanosQueSeguemPrenome':
                nomePessoal.$b_algarismosRomanosQueSeguemPrenome,
            'c_titulosEOutrasPalavrasAssociadasAoNome':
                nomePessoal.$c_titulosEOutrasPalavrasAssociadasAoNome,
            'd_datasAssociadasAoNome': nomePessoal.$d_datasAssociadasAoNome,
            'e_termoDeRelacao': nomePessoal.$e_termoDeRelacao,
            'f_dataDaPublicacaoDoTrabalho':
                nomePessoal.$f_dataDaPublicacaoDoTrabalho,
            'g_informacoesAdicionais': nomePessoal.$g_informacoesAdicionais,
            'j_atributoQualificador': nomePessoal.$j_atributoQualificador,
            'k_subcabecalho': nomePessoal.$k_subcabecalho,
            'l_idiomaDaPublicacao': nomePessoal.$l_idiomaDaPublicacao,
            'n_numeroDaSecaoDaPublicacao':
                nomePessoal.$n_numeroDaSecaoDaPublicacao,
            'p_nomeDaSecaoDaPublicacao': nomePessoal.$p_nomeDaSecaoDaPublicacao,
            'q_formaCompletaDoNome': nomePessoal.$q_formaCompletaDoNome,
            't_tituloDaPublicacao': nomePessoal.$t_tituloDaPublicacao,
            'u_afiliacao': nomePessoal.$u_afiliacao,
            'numeroDeControleDoRegistroDeAutoridade_0':
                nomePessoal.$0_numeroDeControleDoRegistroDeAutoridade,
            'relacao_4': nomePessoal.$4_relacao,
            'ligacao_6': nomePessoal.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8':
                nomePessoal.$8_campoDeLigacaoENumeroDeSequencia,
          },
          'tituloOriginal_240_Data': {
            'etiqueta_240': tituloOriginal.etiqueta_240,
            'primeiroIndicador': tituloOriginal.primeiroIndicador,
            'segundoIndicador': tituloOriginal.segundoIndicador,
            'a_tituloUniforme': tituloOriginal.$a_tituloUniforme,
            'd_dataDaAssinaturaDoTratado': tituloOriginal.$d_dataDaAssinaturaTratado,
            'f_dataDaPublicacaoDoTrabalho': tituloOriginal.$f_dataDaPublicacaoDoTrabalho,
            'g_informacaoesAdicionais': tituloOriginal.$g_informacoesAdicionais,
            'h_meioDGM': tituloOriginal.$h_meioDGM,
            'k_subcabecalho': tituloOriginal.$k_subcabecalho,
            'l_idiomaDaPublicacao': tituloOriginal.$l_idiomaDaPublicacao,
            'm_meioDeExecucaoParaMusica': tituloOriginal.$m_meioDeExecucaoParaMusica,
            'n_numeroDaSecaoDaPublicacao': tituloOriginal.$n_numeroDaSecaoDaPublicacao,
            'o_arranjoMusical': tituloOriginal.$o_arranjoMusical,
            'p_nomeDaSecaoDePublicacao': tituloOriginal.$p_nomeDaSecaoDaPublicacao,
            'r_escalaMusical': tituloOriginal.$r_escalaMusical,
            's_versao': tituloOriginal.$s_versao,
            'numeroDeControleDoRegistroDeAutoridade_0': tituloOriginal.$0_numeroDeControleDoRegistroDeAutoridade,
            'ligacao_6': tituloOriginal.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': tituloOriginal.$8_campoDeLigacaoENumeroDeSequencia,
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
          'edicao_250_Data': {
            'etiqueta_250': edicao.etiqueta_250,
            'primeiroIndicador': edicao.primeiroIndicador,
            'segundoIndicador': edicao.segundoIndicador,
            'a_edicao': edicao.$a_edicao,
            'b_outrasInformacoesSobreEdicao': edicao.$b_outrasInformacoesSobreEdicao,
            'materialEspecificado_3': edicao.$3_materialEspecificado,
            'ligacao_6': edicao.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia': edicao.$8_campoDeLigacaoENumerosDeSequencia,
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
          'topico_650_Data': {
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
            'etiqueta_700': nomePessoalSecundario.etiqueta_700,
            'primeiroIndicador': nomePessoalSecundario.primeiroIndicador,
            'segundoIndicador': nomePessoalSecundario.segundoIndicador,
            'a_nomePessoal': nomePessoalSecundario.$a_nomePessoal,
            'b_algarismosRomanosQueSeguemOPrenome': nomePessoalSecundario.$b_algarismosRomanosQueSeguemOPrenome,
            'c_titulosEOutrasPalavrasAssociadasAoNome': nomePessoalSecundario.$c_titulosEOutrasPalavrasAssociadasAoNome,
            'd_datasAssociadasAoNome': nomePessoalSecundario.$d_datasAssociadasAoNome,
            'e_termoDeRelacao': nomePessoalSecundario.$e_termoDeRelacao,
            'f_dataDaPublicacaoDoTrabalho': nomePessoalSecundario.$f_dataDaPublicacaoDoTrabalho,
            'g_informacoesAdicionais': nomePessoalSecundario.$g_informacoesAdicionais,
            'h_meioDGM': nomePessoalSecundario.$h_meioDGM,
            'i_informacoesSobreRelacoes': nomePessoalSecundario.$i_informacoesSobreRelacoes,
            'j_atributo': nomePessoalSecundario.$j_atributo,
            'k_subcabecalhos': nomePessoalSecundario.$k_subcabecalhos,
            'l_idiomaDaPublicacao': nomePessoalSecundario.$l_idiomaDaPublicacao,
            'm_instrumentosMusicais': nomePessoalSecundario.$m_instrumentosMusicais,
            'n_numeroDaSecaoDaPublicacao': nomePessoalSecundario.$n_numeroDaSecaoDaPublicacao,
            'o_arranjoMusical': nomePessoalSecundario.$o_arranjoMusical,
            'p_nomeDaSecaoDaPublicacao': nomePessoalSecundario.$p_nomeDaSecaoDaPublicacao,
            'q_formaCompletaDoNome': nomePessoalSecundario.$q_formaCompletaDoNome,
            'r_escalaMusical': nomePessoalSecundario.$r_escalaMusical,
            's_versao': nomePessoalSecundario.$s_versao,
            't_tituloDaPublicacao': nomePessoalSecundario.$t_tituloDaPublicacao,
            'u_afiliacao': nomePessoalSecundario.$u_afiliacao,
            'x_ISSN': nomePessoalSecundario.$x_ISSN,
            'numeroDeControleDoRegistroDeAutoridade_0': nomePessoalSecundario.$0_numeroDeControleDoRegistroDeAutoridade,
            'materialEspecificado_3': nomePessoalSecundario.$3_materialEspecificado,
            'relacao_4': nomePessoalSecundario.$4_relacao,
            'codigoDaInstituicao_5': nomePessoalSecundario.$5_codigoDaInstituicao,
            'ligacao_6': nomePessoalSecundario.$6_ligacao,
            'campoDeLigacaoENumeroDeSequencia_8': nomePessoalSecundario.$8_campoDeLigacaoENumeroDeSequencia,
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
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      print(error.toString());
    }
    throw Exception();
  }

  Future<List<ClassLivroData>> getLivroPorNome({required String nome, required int qtdRegistros}) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse('${HttpService.baseUrl}livros/getLivroPorNome/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$nome/$qtdRegistros'),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassLivroData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<List<ClassLivroData>> getLivroPorNomePesquisaExterna({required String nome, required int qtdRegistros}) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse('${HttpService.baseUrl}livros/getLivroPorNomePesquisaExterna/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$nome/$qtdRegistros'),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassLivroData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<ClassGenericResponse> copiarLivro({
    required String livroID,
    required String acervoDataID,
    required String liderID,
    required String camposDeControle_00X_DataID,
    required String livro_006_DataID,
    required String todosOsMateriais_008_DataID,
    required String livros_008_DataID,
    required String isbn_020_DataID,
    required String fonteDeCatalogacao_040_DataID,
    required String codigoDoIdioma_041_DataID,
    required String codigoDaAreaGeografica_043_DataID,
    required String numeroDeClassificacaoDeDewey_082_DataID,
    required String numeroDeClassificacaoDecimalUniversal_080_DataID,
    required String nomePessoal_100_DataID,
    required String tituloPrincipal_245_DataID ,
    required String formasVariadasDoTitulo_246_DataID,
    required String edicao_250_DataID,
    required String imprenta_260_DataID,
    required String descricaoFisica_300_DataID ,
    required String indicacaoDeSeries_490_DataID,
    required String notaGeral_500_DataID,
    required String notaDeBibliografia_504_DataID,
    required String notaDeConteudo_505_DataID,
    required String nomePessoal_600_DataID,
    required String topico_650_DataID,
    required String nomePessoal_700_DataID,
    required String entradaDeIdiomaOriginal_765_DataID,
    required String exemplarNumero,
    required String exemplarDataID,
    required String tituloUniforme_240_DataID,
    required String localizacaoEAcessoEletronico_856_DataID,
    required String numeroDeChamadaLocal_090_DataID,
    required String notaDeResumo_520_dataID,
    required String evento_111_DataID,
    }) async {
    try {
      var request = await http.getHttp.post(Uri.parse('${HttpService.baseUrl}livros/copiarLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'), 
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{
        'livroID': livroID,
        'acervoDataID': acervoDataID,
        'liderID': liderID,
        'camposDeControle_00X_DataID': camposDeControle_00X_DataID,
        'livro_006_DataID': livro_006_DataID,
        'todosOsMateriais_008_DataID': todosOsMateriais_008_DataID,
        'livros_008_DataID': livros_008_DataID,
        'isbn_020_DataID': isbn_020_DataID,
        'fonteDeCatalogacao_040_DataID': fonteDeCatalogacao_040_DataID,
        'codigoDoIdioma_041_DataID': codigoDoIdioma_041_DataID,
        'codigoDaAreaGeografica_043_DataID': codigoDaAreaGeografica_043_DataID,
        'numeroDeClassificacaoDeDewey_082_DataID': numeroDeClassificacaoDeDewey_082_DataID,
        'numeroDeClassificacaoDecimalUniversal_080_DataID': numeroDeClassificacaoDecimalUniversal_080_DataID,
        'nomePessoal_100_DataID': nomePessoal_100_DataID,
        'tituloPrincipal_245_DataID':  tituloPrincipal_245_DataID,
        'formasVariadasDoTitulo_246_DataID': formasVariadasDoTitulo_246_DataID,
        'edicao_250_DataID': edicao_250_DataID,
        'imprenta_260_DataID': imprenta_260_DataID,
        'descricaoFisica_300_DataID':  descricaoFisica_300_DataID,
        'indicacaoDeSeries_490_DataID': indicacaoDeSeries_490_DataID,
        'notaGeral_500_DataID': notaGeral_500_DataID,
        'notaDeBibliografia_504_DataID': notaDeBibliografia_504_DataID,
        'notaDeConteudo_505_DataID': notaDeConteudo_505_DataID,
        'nomePessoal_600_DataID': nomePessoal_600_DataID,
        'topico_650_DataID': topico_650_DataID,
        'nomePessoal_700_DataID': nomePessoal_700_DataID,
        'entradaDeIdiomaOriginal_765_DataID': entradaDeIdiomaOriginal_765_DataID,
        'exemplarNumero': exemplarNumero,
        'exemplarDataID': exemplarDataID,
        'tituloUniforme_240_DataID': tituloUniforme_240_DataID,
        'localizacaoEAcessoEletronico_856_DataID': localizacaoEAcessoEletronico_856_DataID,
        'numeroDeChamadaLocal_090_DataID': numeroDeChamadaLocal_090_DataID,
        'notaDeResumo_520_dataID': notaDeResumo_520_dataID,
        'evento_111_DataID': evento_111_DataID,
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

  Future<List<NotaGeral500DataItems>> NotaGeral_500_Data_Items({required String id}) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse('${HttpService.baseUrl}livros/getNotaGeral500Items/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$id'),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => NotaGeral500DataItems.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<List<ClassTopico_650_DataItems>> Topico_650_Data_Items({required String id}) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse('${HttpService.baseUrl}livros/getTopico650Items/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$id'),
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassTopico_650_DataItems.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> updateLivro({
    required ClassLivroData livro,
    required int livrosDataID,
    required String livroSituacao,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}livros/updateLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$livrosDataID/$livroSituacao'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, Map<String, dynamic>>{
          'isbn_020_Data': {
            'isbn_020_DataID': livro.isbn_020_DataID,
            'etiqueta_020': livro.etiqueta_020,
            'primeiroIndicador': livro.primeiroIndicador_020,
            'segundoIndicador': livro.segundoIndicador_020,
            'a_numeroISBN': livro.$a_numeroISBN,
          },
          'fonteDeCatalogacao_040_Data': {
            'fonteDeCatalogacao_040_DataID':
                livro.fonteDeCatalogacao_040_DataID,
            'etiqueta_040': livro.etiqueta_040,
            'primeiroIndicador': livro.primeiroIndicador_040,
            'segundoIndicador': livro.segundoIndicador_040,
            'a_codigoDaAgenciaCatalogadora':
                livro.$a_codigoDaAgenciaCatalogadora,
            'b_idiomaCatalogacao': livro.$b_idiomaCatalogacao,
          },
          'numeroDeClassificacaoDecimalUniversal_080_Data': {
            'numeroDeClassificacaoUniversal_080_DataID': livro.numeroDeClassificacaoDecimalUniversal_080_DataID,
            'etiqueta_080': livro.etiqueta_080,
            'primeiroIndicador': livro.primeiroIndicador_080,
            'segundoIndicador': livro.segundoIndicador_080,
            'a_numeroDeClassificacaoDecimalUniversal': livro.$a_numeroDeClassificacaoDecimalUniversal,
          },
          'nomePessoal_100_Data': {
            'nomePessoal_100_DataID': livro.nomePessoal_100_DataID,
            'etiqueta_100': livro.etiqueta_100,
            'primeiroIndicador': livro.primeiroIndicador_100,
            'segundoIndicador': livro.segundoIndicador_100,
            'a_nomePessoal': livro.$a_nomePessoal_100,
            'c_titulosEOutrasPalavrasAssociadasAoNome': livro.$c_titulosEOutrasPalavrasAssociadasAoNome_100,
            'd_datasAssociadasAoNome': livro.$d_datasAssociadasAoNome_100,
          },
          'evento_111_Data': {
            'evento_111_DataID': livro.evento_111_DataID,
            'etiqueta_111': livro.etiqueta_111,
            'primeiroIndicador': livro.primeiroIndicador_111,
            'segundoIndicador': livro.segundoIndicador_111,
            'a_nomeDoEventoOuLugar': livro.$a_nomeDoEventoOuLugar_111,
          },
          'tituloPrincipal_245_Data': {
            'tituloPrincipal_245_DataID': livro.tituloPrincipal_245_DataID,
            'etiqueta_245': livro.etiqueta_245,
            'primeiroIndicador': livro.primeiroIndicador_245,
            'segundoIndicador': livro.segundoIndicador_245,
            'a_tituloPrincipal': livro.$a_tituloPrincipal,
            'b_subtitulo': livro.$b_subtitulo,
            'c_indicacaoDeResponsabilidade':
                livro.$c_indicacaoDeResponsabilidade,
          },
          'imprenta_260_Data': {
            'imprenta_260_DataID': livro.imprenta_260_DataID,
            'etiqueta_260': livro.etiqueta_260,
            'primeiroIndicador': livro.primeiroIndicador_260,
            'segundoIndicador': livro.segundoIndicador_260,
            'a_lugarDePublicacao': livro.$a_lugarDePublicacao,
            'b_nomeDoEditor': livro.$b_nomeDoEditor,
            'c_dataDePublicacao': livro.$c_dataDePublicacao,
          },
          'descricaoFisica_300_Data': {
            'descricaoFisica_300_DataID': livro.descricaoFisica_300_DataID,
            'etiqueta_300': livro.etiqueta_300,
            'primeiroIndicador': livro.primeiroIndicador_300,
            'segundoIndicador': livro.segundoIndicador_300,
            'a_extensao': livro.$a_extensao,
            'c_dimensoes': livro.$c_dimensoes,
          },
          'localizacaoEAcessoEletronico_856_Data': {
            'localizacaoEAcessoEletronico_856_DataID': livro.localizacaoEAcessoEletronico_856_DataID,
            'etiqueta_856': livro.etiqueta_856,
            'primeiroIndicador': livro.primeiroIndicador_856,
            'segundoIndicador': livro.segundoIndicador_856,
            'a_nomeDoServidor': livro.$a_nomeDoServidor,
            'u_identificadorUniformeDeRecursoURI': livro.$u_identificadorUniformeDeRecursoURI,
          },
        },
      ));
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> removerLivro({
      required String livroID,
      required String livroNome,
      required String liderID,
      required String camposDeControleID,
      required String todosOsMateriaisID,
      required String livros_008_dataID,
      required String isbnID,
      required String fonteDeCatalogacaoID,
      required String codigoDoIdiomaID,
      required String codigoDaAreaGeograficaID,
      required String cduID,
      required String numeroDeChamadaLocalID,
      required String nomePessoalID,
      required String evento_111_DataID,
      required String tituloOriginalID,
      required String tituloPrincipalID,
      required String formasVariadasDoTituloID,
      required String edicaoID,
      required String imprentaID,
      required String descricaoFisicaID,
      required String indicacaoDeSeriesID,
      required String notaGeralID,
      required String notaDeBibliografiaID,
      required String notaDeConteudoID,
      required String topicoID,
      required String nomePessoalSecundarioID,
      required String localizacaoEAcessoEletronicoID,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse('${HttpService.baseUrl}livros/removerLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, String>{
          'livroID' : livroID,
          'livroNome' : livroNome,
          'liderID' : liderID,
          'camposdecontrole_00x_DataID' : camposDeControleID,
          'todososmateriais_008_DataID' : todosOsMateriaisID,
          'livros_008_DataID' : livros_008_dataID,
          'isbn_020_DataID' : isbnID,
          'fonteDeCatalogacao_040_DataID' : fonteDeCatalogacaoID,
          'codigoDoIdioma_041_DataID' : codigoDoIdiomaID,
          'codigoDaAreaGeografica_043_DataID' : codigoDaAreaGeograficaID,
          'numeroDeClassificacaoDecimalUniversal_080_DataID' : cduID,
          'numerodechamadalocal_090_DataID' : numeroDeChamadaLocalID,
          'nomePessoal_100_DataID' : nomePessoalID,
          'evento_111_DataID' : evento_111_DataID,
          'titulouniforme_240_DataID' : tituloOriginalID,
          'tituloPrincipal_245_DataID' : tituloPrincipalID,
          'formasVariadasDoTitulo_246_DataID' : formasVariadasDoTituloID,
          'edicao_250_DataID' : edicaoID,
          'imprenta_260_DataID' : imprentaID,
          'descricaoFisica_300_DataID' : descricaoFisicaID,
          'indicacaoDeSeries_490_DataID' : indicacaoDeSeriesID,
          'notageral_500_DataID' : notaGeralID,
          'notaDeBibliografia_504_DataID' : notaDeBibliografiaID,
          'notaDeConteudo_505_DataID' : notaDeConteudoID,
          'topico_650_DataID' : topicoID,
          'nomepessoal_700_DataID' : nomePessoalSecundarioID,
          'localizacaoeacessoeletronico_856_DataID' : localizacaoEAcessoEletronicoID,
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
