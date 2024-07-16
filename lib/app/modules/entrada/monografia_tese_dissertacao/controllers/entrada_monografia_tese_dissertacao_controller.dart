// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/entidade/class_entidade_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/campo_de_tamanho_fixo_008/livros/class_livros_008_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/campo_de_tamanho_fixo_008/todos_os_materiais/class_todos_os_materiais_008_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/class_campos_de_controle_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/fonte_de_catalogacao/class_fonte_de_catalogacao_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_chamada_local/class_numero_de_chamada_local_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_classificacao_decimal_universal/class_numero_de_classificacao_decimal_universal_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/classes_entrada_secundaria_70X_75X_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/lider/class_lider_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/classes_notas_5XX_exports.dart';
import 'package:w3biblioteca/app/modules/acervo/repository/acervo_repository.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_topico_650_data_items.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/repository/entrada_monografia_tese_dissertacao_repository.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/descricao_fisica/class_descricao_fisica_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/imprenta/class_imprenta_25X_28X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/nome_pessoal/class_nome_pessoal_1XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20X_24X/titulo_principal/class_titulo_principal_20X_24X_data.dart';
import 'package:w3biblioteca/app/modules/exemplar/repository/exemplar_repository.dart';

import '../../../../classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/localizacao_e_acesso_eletronico/class_localizacao_e_acesso_eletronico_841_88X_data.dart';

class EntradaMonografiaTeseDissertacaoController extends ChangeNotifier {
  // DECLARA DIOSERVICE VIA CONSTRUTOR
  final EntradaMonograTeseDissertacaoRepository entradaTeseRepository;
  final AcervoRepository acervoRepository;
  final ExemplarRepository exemplarRepository;
  EntradaMonografiaTeseDissertacaoController(this.entradaTeseRepository, this.acervoRepository, this.exemplarRepository);

  //FORMKEY PARA VALIDAÇÃO
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

  // CONTROLADORES DE TEXTO

  //LIDER
  final etiquetaLiderController = TextEditingController();
  final tamanhoDoRegistro_00_04LiderController = TextEditingController();
  final statusDoRegistro_05LiderController = TextEditingController();
  final tipoDeRegistro_06LiderController = TextEditingController();
  final nivelBibliografico_07LiderController = TextEditingController();
  final tipoDeControle_08LiderController = TextEditingController();
  final esquemaDeCodificacaoDeCaractere_09LiderController = TextEditingController();
  final numeroDeIndicadores_10LiderController = TextEditingController();
  final numeroDeSubcampos_11LiderController = TextEditingController();
  final enderecoDeDados_12_16LiderController = TextEditingController();
  final nivelDeCodificacao_17LiderController = TextEditingController();
  final formaDeCatalogacaoDescritiva_18LiderController = TextEditingController();
  final nivelDeRegistroDeRecurso_19LiderController = TextEditingController();
  final tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20LiderController = TextEditingController();
  final tamanhoDaPosicaoDoCaractereDeInicio_21LiderController = TextEditingController();
  final tamanhoDaParteDefinidaParaImplementacao_22LiderController = TextEditingController();
  final entradaNaoDefinida_23LiderController = TextEditingController();

  //CAMPOS DE CONTROLE
  final numeroDeControleCamposDeControleController = TextEditingController();
  final codigoMarcDaAgenciaCatalogaoraCamposDeControleController = TextEditingController();
  final dataEHoraDaUltimaAtualizacaoCamposDeControleController = TextEditingController();

   // DADOS FIXOS - 008
  final etiquetaDadosFixosController = TextEditingController();
  final dataDeEntradaDoRegistroNoArquivo_00_05DadosFixosController = TextEditingController();
  final tipodeDataOuStatusDePublicacao_06DadosFixosController = TextEditingController();
  final data1_07_10DadosFixosController = TextEditingController();
  final data2_11_14DadosFixosController = TextEditingController();
  final lugarDePublicacaoProducaoExecucao_15_17DadosFixosController = TextEditingController();
  final tipoDeMaterial_18_34DadosFixosController = TextEditingController();
  final idiomaDoTextoDoDocumento_35_37DadosFixosController = TextEditingController();
  final registroModificado_38DadosFixosController = TextEditingController();
  final fonteDeCatalogacao_39DadosFixosController = TextEditingController();

  // DADOS FIXOS (LIVRO)- 008
  final livros_008_DataIDDadosFixosController = TextEditingController();
  final ilustracoes_18_21DadosFixosController = TextEditingController();
  final publicoAlvo_22DadosFixosController = TextEditingController();
  final formaDoDocumento_23DadosFixosController = TextEditingController();
  final naturezaDoConteudo_24_27DadosFixosController = TextEditingController();
  final publicacaoGovernamental_28DadosFixosController = TextEditingController();
  final publicacaoDeConferencia_29DadosFixosController = TextEditingController();
  final obraComemorativa_30DadosFixosController = TextEditingController();
  final indice_31DadosFixosController = TextEditingController();
  final indefinido_32DadosFixosController = TextEditingController();
  final formaLiteraria_33DadosFixosController = TextEditingController();
  final biografia_34DadosFixosController = TextEditingController();

  // FONTE CATALOGADORA
  final etiquetaFonteCatalogadoraController = TextEditingController();
  final primeiroIndicadorFonteCatalogadoraController = TextEditingController();
  final segundoIndicadorFonteCatalogadoraController = TextEditingController();
  final $a_codigoDaAgenciaCatalogadaFonteCatalogadoraController = TextEditingController();
  final $b_idiomaDaCatalogacaoFonteCatalogadoraController = TextEditingController();
  final $c_agenciaQueTranscreveORegistroFonteCatalogadoraController = TextEditingController();
  final $d_agenciaQueAlterouORegistroFonteCatalogadoraController = TextEditingController();
  final $e_fontesConvencionaisDeDescricaoDeDadosFonteCatalogadoraController = TextEditingController();
  final $6_ligacaoFonteCatalogadoraController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraController = TextEditingController();

  // NUMERO DE CLASSIFICACAO UNIVERSAL
  final etiquetaNumeroClassificacaoUniversalController = TextEditingController();
  final primeiroIndicadorNumeroClassificacaoUniversalController = TextEditingController();
  final segundoIndicadorNumeroClassificacaoUniversalController = TextEditingController();
  final $a_numeroDeClassificacaoNumeroClassificacaoUniversalController = TextEditingController();
  final $b_numeroDoItemNumeroClassificacaoUniversalController = TextEditingController();
  final $x_subdivisaoAuxiliarComumNumeroClassificacaoUniversalController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeNumeroClassificacaoUniversalController = TextEditingController();
  final $2_numeroDaEdicaoNumeroClassificacaoUniversalController = TextEditingController();
  final $6_ligacaoNumeroClassificacaoUniversalController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNumeroClassificacaoUniversalController = TextEditingController();

  // NUMERO DE CHAMADA LOCAL
  final etiquetaNumeroDeChamadaLocalController = TextEditingController();
  final primeiroIndicadorNumeroDeChamadaLocalController = TextEditingController();
  final segundoIndicadorNumeroDeChamadaLocalController = TextEditingController();
  final $a_classificacaoNumeroDeChamadaLocalController = TextEditingController();
  final $b_numeroDeCutterNumeroDeChamadaLocalController = TextEditingController();
  final $c_tipoDeObraNumeroDeChamadaLocalController = TextEditingController();
  final $d_anoDePublicacaoNumeroDeChamadaLocalController = TextEditingController();
  final $8_unidadeCatalogadoraNumeroDeChamadaLocalController = TextEditingController();
  final siglaInstituicaoNumeroDeChamadaLocalController = TextEditingController();

  // NOME PESSOAL 100
  final etiquetaNomePessoalController = TextEditingController();
  final primeiroIndicadorNomePessoalController = TextEditingController();
  final segundoIndicadorNomePessoalController = TextEditingController();
  final $a_nomePessoalNomePessoalController = TextEditingController();
  final $b_algarismosRomanosQueSeguemPrenomeNomePessoalController = TextEditingController();
  final $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalController =  TextEditingController();
  final $d_datasAssociadasAoNomeNomePessoalController = TextEditingController();
  final $e_termoDeRelacaoNomePessoalController = TextEditingController();
  final $f_dataDaPublicacaoDoTrabalhoNomePessoalController =  TextEditingController();
  final $g_informacoesAdicionaisNomePessoalController = TextEditingController();
  final $j_atributoQualificadorNomePessoalController = TextEditingController();
  final $k_subcabecalhoNomePessoalController = TextEditingController();
  final $l_idiomaDaPublicacaoNomePessoalController = TextEditingController();
  final $n_numeroDaSecaoDaPublicacaoNomePessoalController =  TextEditingController();
  final $p_nomeDaSecaoDaPublicacaoNomePessoalController =  TextEditingController();
  final $q_formaCompletaDoNomeNomePessoalController = TextEditingController();
  final $t_tituloDaPublicacaoNomePessoalController = TextEditingController();
  final $u_afiliacaoNomePessoalController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeNomePessoalController =  TextEditingController();
  final $4_relacaoNomePessoalController = TextEditingController();
  final $6_ligacaoNomePessoalController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNomePessoalController =  TextEditingController();

  // TITULO PRINCIPAL 245
  final etiquetaTituloPrincipalController = TextEditingController();
  final primeiroIndicadorTituloPrincipalController = TextEditingController();
  final segundoIndicadorTituloPrincipalController = TextEditingController();
  final $a_tituloPrincipalTituloPrincipalController = TextEditingController();
  final $b_subtituloTituloPrincipalController = TextEditingController();
  final $c_indicacaoDeResponsabilidadeTituloPrincipalController =  TextEditingController();
  final $f_datasDeAbrangenciaTituloPrincipalController =  TextEditingController();
  final $g_conjuntoDeDatasTituloPrincipalController = TextEditingController();
  final $h_meioDGMTituloPrincipalController = TextEditingController();
  final $k_formaDoMaterialTituloPrincipalController = TextEditingController();
  final $n_numeroDaSecaoDaPublicacaoTituloPrincipalController =  TextEditingController();
  final $p_nomeDaSecaoDaPublicacaoTituloPrincipalController =  TextEditingController();
  final $s_versaoTituloPrincipalController = TextEditingController();
  final $6_ligacaoTituloPrincipalController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaTituloPrincipalController =  TextEditingController();

  // IMPRENTA 260
  final etiquetaImprentaController = TextEditingController();
  final primeiroIndicadorImprentaController = TextEditingController();
  final segundoIndicadorImprentaController = TextEditingController();
  final $a_lugarDePublicacaoImprentaController = TextEditingController();
  final $b_nomeDoEditorImprentaController = TextEditingController();
  final $c_dataDePublicacaoImprentaController = TextEditingController();
  final $e_lugarDeFabricacaoImprentaController = TextEditingController();
  final $f_nomeDoFabricanteImprentaController = TextEditingController();
  final $g_dataDeFabricacaoImprentaController = TextEditingController();
  final $3_materialEspecificadoImprentaController = TextEditingController();
  final $6_ligacaoImprentaController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaImprentaController =  TextEditingController();

  // DESCRIÇÃO FISICA 300
  final etiquetaDescricaoFisicaController = TextEditingController();
  final primeiroIndicadorDescricaoFisicaController = TextEditingController();
  final segundoIndicadorDescricaoFisicaController = TextEditingController();
  final $a_extensaoDescricaoFisicaController = TextEditingController();
  final $b_detalhesFisicosAdicionaisDescricaoFisicaController = TextEditingController();
  final $c_dimensoesDescricaoFisicaController = TextEditingController();
  final $e_materialAdicionalDescricaoFisicaController = TextEditingController();
  final $f_tipoDeUnidadeDescricaoFisicaController = TextEditingController();
  final $g_tamanhoDaUnidadeDescricaoFisicaController = TextEditingController();
  final $3_materialEspecificadoDescricaoFisicaController = TextEditingController();
  final $6_ligacaoDescricaoFisicaController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaDescricaoFisicaController = TextEditingController();

  // NOTA GERAL 500
  final etiquetaNotaGeralController = TextEditingController();
  final primeiroIndicadorNotaGeralController = TextEditingController();
  final segundoIndicadorNotaGeralController = TextEditingController();
  final $a_notaGeralNotaGeralController = TextEditingController();
  final $3_materialEspecificadoNotaGeralController = TextEditingController();
  final $5_codigoDaInstituicaoNotaGeralController = TextEditingController();
  final $6_ligacaoNotaGeralController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNotaGeralController =  TextEditingController();

  // NOTA DE DISSERTAÇÂO OU TESE 502
  final etiquetaNotaDeDissertacaoOuTeseController = TextEditingController();
  final primeiroIndicadorNotaDeDissertacaoOuTeseController =  TextEditingController();
  final segundoIndicadorNotaDeDissertacaoOuTeseController =  TextEditingController();
  final $a_notaDeDissertacaoOuTeseControllerNotaDeDissertacaoOuTeseController =  TextEditingController();
  final $6_ligacaoNotaDeDissertacaoOuTeseController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNotaDeDissertacaoOuTeseController =  TextEditingController();

  // NOTA DE BIBLIOGRAFIA 504
  final etiquetaNotaDeBibliografiaController = TextEditingController();
  final primeiroIndicadorNotaDeBibliografiaController = TextEditingController();
  final segundoIndicadorNotaDeBibliografiaController = TextEditingController();
  final $a_notaDeBibliografiaNotaDeBibliografiaController = TextEditingController();
  final $b_numeroDeReferenciasNotaDeBibliografiaController = TextEditingController();
  final $6_ligacaoNotaDeBibliografiaController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNotaDeBibliografiaController = TextEditingController();

  // NOTA DE RESUMO 520
  final etiquetaNotaDeResumoController = TextEditingController();
  final primeiroIndicadorNotaDeResumoController = TextEditingController();
  final segundoIndicadorNotaDeResumoController = TextEditingController();
  final $a_notaDeResumoNotaDeResumoController = TextEditingController();
  final $b_expansaoDaNotaDeResumoNotaDeResumoController = TextEditingController();
  final $c_agenciaDepositariaNotaDeResumoController = TextEditingController();
  final $u_URINotaDeResumoController = TextEditingController();
  final $2_fonteNotaDeResumoController = TextEditingController();
  final $3_materialEspecificadoNotaDeResumoController = TextEditingController();
  final $6_ligacaoNotaDeResumoController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNotaDeResumoController = TextEditingController();

  // NORA DE OUTROS FORMATOS DISPONÍVEIS 530
  final etiquetaNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final primeiroIndicadorNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final segundoIndicadorNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $a_outroFormatoDisponivelNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $b_fonteNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $c_condicoesNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $d_numeroDeOrdemNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $u_URINotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $3_materialEspecificadoNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $6_ligacaoNotaDeOutrosFormatosDisponiveisController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNotaDeOutrosFormatosDisponiveisController = TextEditingController();

  // ASSUNTO - ENTIDADE 610
  final etiquetaAssuntoEntidadeController = TextEditingController();
  final primeiroIndicadorAssuntoEntidadeController = TextEditingController();
  final segundoIndicadorAssuntoEntidadeController = TextEditingController();
  final $a_nomeDaEntidadeOuLugarAssuntoEntidadeController = TextEditingController();
  final $b_unidadesSubordinadasAssuntoEntidadeController = TextEditingController();
  final $c_LocalDeRealizacaoDoEncontroAssuntoEntidadeController = TextEditingController();
  final $d_dataDeRealizacaoDoEventoAssuntoEntidadeController = TextEditingController();
  final $e_termoDeRelacaoAssuntoEntidadeController = TextEditingController();
  final $f_dataDaPublicacaoDoTrabalhoAssuntoEntidadeController = TextEditingController();
  final $g_informacoesAdicionaisAssuntoEntidadeController = TextEditingController();
  final $h_meioDGMAssuntoEntidadeController = TextEditingController();
  final $k_subcabecalhoAssuntoEntidadeController = TextEditingController();
  final $l_idiomaDaPublicacaoAssuntoEntidadeController = TextEditingController();
  final $m_instrumentosMusicaisAssuntoEntidadeController = TextEditingController();
  final $n_numeroDaSecaoOuEventoAssuntoEntidadeController = TextEditingController();
  final $o_arranjoMusicalAssuntoEntidadeController = TextEditingController();
  final $p_nomeDaSecaoPublicadaAssuntoEntidadeController = TextEditingController();
  final $r_escalaMusicalAssuntoEntidadeController = TextEditingController();
  final $s_versaoAssuntoEntidadeController = TextEditingController();
  final $t_tituloDaPublicacaoAssuntoEntidadeController = TextEditingController();
  final $u_afiliacaoAssuntoEntidadeController = TextEditingController();
  final $v_subdivisaoDeFormaAssuntoEntidadeController = TextEditingController();
  final $x_subdivisaoGeralAssuntoEntidadeController = TextEditingController();
  final $y_subdivisaoCronologicaAssuntoEntidadeController = TextEditingController();
  final $z_subdivisaoGeograficaAssuntoEntidadeController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeAssuntoEntidadeController = TextEditingController();
  final $2_fonteDoCabecalhoOuTermoAssuntoEntidadeController = TextEditingController();
  final $3_materialEspecificadoAssuntoEntidadeController = TextEditingController();
  final $4_relacaoAssuntoEntidadeController = TextEditingController();
  final $6_ligacaoAssuntoEntidadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaAssuntoEntidadeController = TextEditingController();

  // ASSUNTO - Tópico 650
  final etiquetaAssuntoTopicoController = TextEditingController();
  final primeiroIndicadorAssuntoTopicoController = TextEditingController();
  final segundoIndicadorAssuntoTopicoController = TextEditingController();
  final $a_cabecalhoTopicoOuNomeGeograficoAssuntoTopicoController = TextEditingController();
  final $b_cabecalhoTopicoSeguindoNomeGeograficoAssuntoTopicoController = TextEditingController();
  final $c_localDoEventoAssuntoTopicoController = TextEditingController();
  final $d_dataDeRealizacaoDoEventoAssuntoTopicoController = TextEditingController();
  final $e_termoDeRelacaoAssuntoTopicoController = TextEditingController();
  final $g_informacoesAdicionaisAssuntoTopicoController = TextEditingController();
  final $v_subdivisaoDeFormaAssuntoTopicoController = TextEditingController();
  final $x_subdivisaoGeralAssuntoTopicoController = TextEditingController();
  final $y_subdivisaoCronologicaAssuntoTopicoController = TextEditingController();
  final $z_subdivisaoGeograficaAssuntoTopicoController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeAssuntoTopicoController = TextEditingController();
  final $2_fonteDoCabecalhoOuTermoAssuntoTopicoController = TextEditingController();
  final $3_materialEspecificadoAssuntoTopicoController = TextEditingController();
  final $4_relacaoAssuntoTopicoController = TextEditingController();
  final $6_ligacaoAssuntoTopicoController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaAssuntoTopicoController = TextEditingController();

  // ENTRADA SECUNDÀRIA - NOME PESSOAL 700
  final etiquetaEntradaSecundariaNomePessoalController =  TextEditingController();
  final primeiroIndicadorEntradaSecundariaNomePessoalController =  TextEditingController();
  final segundoIndicadorEntradaSecundariaNomePessoalController =  TextEditingController();
  final $a_nomePessoalEntradaSecundariaNomePessoalController =  TextEditingController();
  final $b_algarismosRomanosQueSeguemOPrenomeEntradaSecundariaNomePessoalController =  TextEditingController();
  final $c_titulosEOutrasPalavrasAssociadasAoNomeEntradaSecundariaNomePessoalController =  TextEditingController();
  final $d_datasAssociadasAoNomeEntradaSecundariaNomePessoalController =  TextEditingController();
  final $e_termoDeRelacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $f_dataDaPublicacaoDoTrabalhoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $g_informacoesAdicionaisEntradaSecundariaNomePessoalController =  TextEditingController();
  final $h_meioDGMEntradaSecundariaNomePessoalController =  TextEditingController();
  final $i_informacoesSobreRelacoesEntradaSecundariaNomePessoalController =  TextEditingController();
  final $j_atributoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $k_subcabecalhosEntradaSecundariaNomePessoalController =  TextEditingController();
  final $l_idiomaDaPublicacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $m_instrumentosMusicaisEntradaSecundariaNomePessoalController =  TextEditingController();
  final $n_numeroDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $o_arranjoMusicalEntradaSecundariaNomePessoalController =  TextEditingController();
  final $p_nomeDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $q_formaCompletaDoNomeEntradaSecundariaNomePessoalController =  TextEditingController();
  final $r_escalaMusicalEntradaSecundariaNomePessoalController =  TextEditingController();
  final $s_versaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $t_tituloDaPublicacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $u_afiliacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $x_ISSNEntradaSecundariaNomePessoalController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaNomePessoalController =  TextEditingController();
  final $3_materialEspecificadoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $4_relacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $5_codigoDaInstituicaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $6_ligacaoEntradaSecundariaNomePessoalController =  TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaNomePessoalController = TextEditingController();
  
  // ENTRADA SECUNDÀRIA - ENTIDADE 710
  final etiquetaEntradaSecundariaEntidadeController = TextEditingController();
  final primeiroIndicadorEntradaSecundariaEntidadeController = TextEditingController();
  final segundoIndicadorEntradaSecundariaEntidadeController = TextEditingController();
  final $a_nomeDaEntidadeOuDoLugarEntradaSecundariaEntidadeController = TextEditingController();
  final $b_unidadesSubordinadasEntradaSecundariaEntidadeController = TextEditingController();
  final $c_localDeRealizacaoDoEventoEntradaSecundariaEntidadeController = TextEditingController();
  final $d_dataDeRealizacaoDoEventoEntradaSecundariaEntidadeController = TextEditingController();
  final $e_termoDeRelacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $f_dataDePublicacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $g_informacoesAdicionaisEntradaSecundariaEntidadeController = TextEditingController();
  final $h_meioDGMEntradaSecundariaEntidadeController = TextEditingController();
  final $i_informacoesSobreRelacoesEntradaSecundariaEntidadeController = TextEditingController();
  final $k_subcabecalhoEntradaSecundariaEntidadeController = TextEditingController();
  final $l_idiomaDaPublicacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $m_meioDeExecucaoParaMusicaEntradaSecundariaEntidadeController = TextEditingController();
  final $n_numeroDaSecaoEntradaSecundariaEntidadeController = TextEditingController();
  final $o_arranjoMusicalEntradaSecundariaEntidadeController = TextEditingController();
  final $p_nomeDaSecaoDaPublicacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $r_escalaMusicalEntradaSecundariaEntidadeController = TextEditingController();
  final $s_versaoEntradaSecundariaEntidadeController = TextEditingController();
  final $t_tituloDaPublicacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $u_afiliacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $x_ISSNEntradaSecundariaEntidadeController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaEntidadeController = TextEditingController();
  final $3_materialEspecificadoEntradaSecundariaEntidadeController = TextEditingController();
  final $4_relacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $5_codigoDaInstituicaoEntradaSecundariaEntidadeController = TextEditingController();
  final $6_ligacaoEntradaSecundariaEntidadeController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaEntidadeController = TextEditingController();

  // LOCALIZAÇÃO E ACESSO ELETRÕNICO
  final  etiquetaLocalizacaoEAcessoController = TextEditingController();
  final  primeiroIndicadorLocalizacaoEAcessoController = TextEditingController();
  final  segundoIndicadorLocalizacaoEAcessoController = TextEditingController();
  final  $a_nomeDoServidorLocalizacaoEAcessoController = TextEditingController();
  final  $b_numeroDoAcessoLocalizacaoEAcessoController = TextEditingController();
  final  $c_informacoesSobreCompactacaoLocalizacaoEAcessoController = TextEditingController();
  final  $d_caminhoLocalizacaoEAcessoController = TextEditingController();
  final  $f_nomeDoArquivoEletronicoLocalizacaoEAcessoController = TextEditingController();
  final  $h_usernameLocalizacaoEAcessoController = TextEditingController();
  final  $i_instrucaoLocalizacaoEAcessoController = TextEditingController();
  final  $j_bitsPorSegundoLocalizacaoEAcessoController = TextEditingController();
  final  $k_passwordLocalizacaoEAcessoController = TextEditingController();
  final  $l_loginLocalizacaoEAcessoController = TextEditingController();
  final  $m_contatoParaObterAjudaLocalizacaoEAcessoController = TextEditingController();
  final  $n_nomeDaLocalizacaoDoServidorLocalizacaoEAcessoController = TextEditingController();
  final  $o_sistemaOperativoLocalizacaoEAcessoController = TextEditingController();
  final  $p_portaLocalizacaoEAcessoController = TextEditingController();
  final  $q_tipoDoFormatoEletronicoLocalizacaoEAcessoController = TextEditingController();
  final  $r_configuracaoLocalizacaoEAcessoController = TextEditingController();
  final  $s_tamanhoDoArquivoLocalizacaoEAcessoController = TextEditingController();
  final  $t_emulacaoDeTerminalLocalizacaoEAcessoController = TextEditingController();
  final  $u_identificadorUniformeDeRecursoURILocalizacaoEAcessoController = TextEditingController();
  final  $v_horarioDeAcessoLocalizacaoEAcessoController = TextEditingController();
  final  $w_numeroDeControleDeUmRegistroLocalizacaoEAcessoController = TextEditingController();
  final  $x_notaInternaLocalizacaoEAcessoController = TextEditingController();
  final  $y_textoDoLinkLocalizacaoEAcessoController = TextEditingController();
  final  $z_notaDoPublicoLocalizacaoEAcessoController = TextEditingController();
  final  $2_metodoDeAcessoLocalizacaoEAcessoController = TextEditingController();
  final  $3_materialEspecificadoLocalizacaoEAcessoController = TextEditingController();
  final  $6_ligacaoLocalizacaoEAcessoController = TextEditingController();
  final  $8_campoDeLigacaoENumeroDeSequenciaLocalizacaoEAcessoController = TextEditingController();

  final codigoAcervoController =  TextEditingController();
  final exemplarDataIDController =  TextEditingController();

  //MÉTODOS [POST]
  Future<ClassGenericResponse> setMonografiaTeseEDissertacao() async {
    if(formKey.currentState!.validate()) {
    carregando();
    var monografiaTeseEDissertacao = await entradaTeseRepository.setMonografiaTeseEDissertacao(
        lider: ClassLiderData(
          etiqueta_000: etiquetaLiderController.text.trim(),
          tamanhoDoRegistro_00_04: tamanhoDoRegistro_00_04LiderController.text.trim(),
          statusDoRegistro_05: statusDoRegistro_05LiderController.text.trim(),
          tipoDeRegistro_06: tipoDeRegistro_06LiderController.text.trim(),
          nivelBibliografico_07: nivelBibliografico_07LiderController.text.trim(),
          tipodeControle_08: tipoDeControle_08LiderController.text.trim(),
          esquemaDeCodificacaoDeCaractere_09: esquemaDeCodificacaoDeCaractere_09LiderController.text.trim(),
          numeroDeIndicadores_10: numeroDeIndicadores_10LiderController.text.trim(),
          numeroDeSubcampos_11: numeroDeSubcampos_11LiderController.text.trim(),
          enderecoDeDados_12_16: enderecoDeDados_12_16LiderController.text.trim(),
          nivelDeCodificacao_17: nivelDeCodificacao_17LiderController.text.trim(),
          formaDeCatalogacaoDescritiva_18: formaDeCatalogacaoDescritiva_18LiderController.text.trim(),
          nivelDeRegistroDeRecurso_19: nivelDeRegistroDeRecurso_19LiderController.text.trim(),
          tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20: tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20LiderController.text.trim(),
          tamanhoDaPosicaoDoCaractereDeInicio_21: tamanhoDaPosicaoDoCaractereDeInicio_21LiderController.text.trim(),
          tamanhoDaParteDefinidaParaImplementacao_22: tamanhoDaParteDefinidaParaImplementacao_22LiderController.text.trim(),
          entradaNaoDefinida_23: entradaNaoDefinida_23LiderController.text.trim(),
        ),
        camposDeControle: ClassCamposDeControle_00X_Data(
          numeroDeControle_001: numeroDeControleCamposDeControleController.text.trim(),
          codigoAgenciaCatalogadora_003: codigoMarcDaAgenciaCatalogaoraCamposDeControleController.text.trim(),
          dataEHoraUltimaAtualizacao_005: dataEHoraDaUltimaAtualizacaoCamposDeControleController.text.trim(),
        ),
        todosOsMateriais: ClassTodosOsMateriais_008_Data(
          etiqueta_008: etiquetaDadosFixosController.text.trim(),
          dataDeEntradaDoRegistroNoArquivo_00_05: dataDeEntradaDoRegistroNoArquivo_00_05DadosFixosController.text.trim(),
          tipodeDataOuStatusDePublicacao_06: tipodeDataOuStatusDePublicacao_06DadosFixosController.text.trim(),
          data1_07_10: data1_07_10DadosFixosController.text.trim(),
          data2_11_14: data2_11_14DadosFixosController.text.trim(),
          lugarDePublicacaoProducaoExecucao_15_17: lugarDePublicacaoProducaoExecucao_15_17DadosFixosController.text.trim(),
          idiomaDoTextoDoDocumento_35_37: idiomaDoTextoDoDocumento_35_37DadosFixosController.text.trim(),
          registroModificado_38: registroModificado_38DadosFixosController.text.trim(),
          fonteDeCatalogacao_39: fonteDeCatalogacao_39DadosFixosController.text.trim(),
        ),
        livros_008_data: ClassLivros_008_Data(
          ilustracoes_18_21: ilustracoes_18_21DadosFixosController.text.trim(),
          publicoAlvo_22: publicoAlvo_22DadosFixosController.text.trim(),
          formaDoDocumento_23: formaDoDocumento_23DadosFixosController.text.trim(),
          naturezaDoConteudo_24_27: naturezaDoConteudo_24_27DadosFixosController.text.trim(),
          publicacaoGovernamental_28: publicacaoGovernamental_28DadosFixosController.text.trim(),
          publicacaoDeConferencia_29: publicacaoDeConferencia_29DadosFixosController.text.trim(),
          obraComemorativa_30: obraComemorativa_30DadosFixosController.text.trim(),
          indice_31: indice_31DadosFixosController.text.trim(),
          indefinido_32: indefinido_32DadosFixosController.text.trim(),
          formaLiteraria_33: formaLiteraria_33DadosFixosController.text.trim(),
          biografia_34: biografia_34DadosFixosController.text.trim(),
        ),
        fonteDeCatalogacao: ClassFonteDeCatalogacao_02X_09X_Data(
          etiqueta_040: etiquetaFonteCatalogadoraController.text.trim(),
          primeiroIndicador:primeiroIndicadorFonteCatalogadoraController.text.trim(),
          segundoIndicador:segundoIndicadorFonteCatalogadoraController.text.trim(),
          $a_codigoDaAgenciaCatalogadora:$a_codigoDaAgenciaCatalogadaFonteCatalogadoraController.text.trim(),
          $b_idiomaCatalogacao:$b_idiomaDaCatalogacaoFonteCatalogadoraController.text.trim(),
          $c_agenciaQueTranscreveuORegistro:$c_agenciaQueTranscreveORegistroFonteCatalogadoraController.text.trim(),
          $d_agenciaQueAlterouORegistro:$d_agenciaQueAlterouORegistroFonteCatalogadoraController.text.trim(),
          $e_fontesConvencionaisDedescricaoDeDados:$e_fontesConvencionaisDeDescricaoDeDadosFonteCatalogadoraController.text.trim(),
          $6_ligacao: $6_ligacaoFonteCatalogadoraController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia:$8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraController.text.trim(),
        ),
        cdu: ClassNumeroDeClassificacaoDecimalUniversal_02X_09X_Data(
          etiqueta_080: etiquetaNumeroClassificacaoUniversalController.text.trim(),
          primeiroIndicador: primeiroIndicadorNumeroClassificacaoUniversalController.text.trim(),
          segundoIndicador: segundoIndicadorNumeroClassificacaoUniversalController.text.trim(),
          $a_numeroDeClassificacaoDecimalUniversal: $a_numeroDeClassificacaoNumeroClassificacaoUniversalController.text.trim(),
          $b_numeroDoItem: $b_numeroDoItemNumeroClassificacaoUniversalController.text.trim(),
          $x_subdivisaoAuxiliarComun: $x_subdivisaoAuxiliarComumNumeroClassificacaoUniversalController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridades: $0_numeroDeControleDoRegistroDeAutoridadeNumeroClassificacaoUniversalController.text.trim(),
          $2_numeroDeEdicao: $2_numeroDaEdicaoNumeroClassificacaoUniversalController.text.trim(),
          $6_ligacao: $6_ligacaoNumeroClassificacaoUniversalController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNumeroClassificacaoUniversalController.text.trim(),
        ),
        numeroDeChamadaLocal: ClassNumeroDeChamadaLocal_02X_09X_Data(
          etiqueta_90: etiquetaNumeroDeChamadaLocalController.text.trim(),
          primeiroIndicador: primeiroIndicadorNumeroDeChamadaLocalController.text.trim(),
          segundoIndicador: segundoIndicadorNumeroDeChamadaLocalController.text.trim(),
          $a_classificacao: $a_classificacaoNumeroDeChamadaLocalController.text.trim(),
          $b_numeroDeCutter: $b_numeroDeCutterNumeroDeChamadaLocalController.text.trim(),
          $c_tipoDeObra: $c_tipoDeObraNumeroDeChamadaLocalController.text.trim(),
          $d_anoDePublicacao: $d_anoDePublicacaoNumeroDeChamadaLocalController.text.trim(),
          $8_unidadeCatalogadora: $8_unidadeCatalogadoraNumeroDeChamadaLocalController.text.trim(),
          siglaInstituicao: siglaInstituicaoNumeroDeChamadaLocalController.text.trim(),
        ),
        nomePessoal: ClassNomePessoal_1XX_Data(
          etiqueta_100: etiquetaNomePessoalController.text.trim(),
          primeiroIndicador: primeiroIndicadorNomePessoalController.text.trim(),
          segundoIndicador: segundoIndicadorNomePessoalController.text.trim(),
          $a_nomePessoal: $a_nomePessoalNomePessoalController.text.trim(),
          $b_algarismosRomanosQueSeguemPrenome: $b_algarismosRomanosQueSeguemPrenomeNomePessoalController.text.trim(),
          $c_titulosEOutrasPalavrasAssociadasAoNome: $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalController.text.trim(),
          $d_datasAssociadasAoNome: $d_datasAssociadasAoNomeNomePessoalController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoNomePessoalController.text.trim(),
          $f_dataDaPublicacaoDoTrabalho: $f_dataDaPublicacaoDoTrabalhoNomePessoalController.text.trim(),
          $g_informacoesAdicionais: $g_informacoesAdicionaisNomePessoalController.text.trim(),
          $j_atributoQualificador: $j_atributoQualificadorNomePessoalController.text.trim(),
          $k_subcabecalho: $k_subcabecalhoNomePessoalController.text.trim(),
          $l_idiomaDaPublicacao: $l_idiomaDaPublicacaoNomePessoalController.text.trim(),
          $n_numeroDaSecaoDaPublicacao: $n_numeroDaSecaoDaPublicacaoNomePessoalController.text.trim(),
          $p_nomeDaSecaoDaPublicacao: $p_nomeDaSecaoDaPublicacaoNomePessoalController.text.trim(),
          $q_formaCompletaDoNome: $q_formaCompletaDoNomeNomePessoalController.text.trim(),
          $t_tituloDaPublicacao: $t_tituloDaPublicacaoNomePessoalController.text.trim(),
          $u_afiliacao: $u_afiliacaoNomePessoalController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade: $0_numeroDeControleDoRegistroDeAutoridadeNomePessoalController.text.trim(),
          $4_relacao: $4_relacaoNomePessoalController.text.trim(),
          $6_ligacao: $6_ligacaoNomePessoalController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNomePessoalController.text.trim(),
        ),
        tituloPrincipal: ClassTituloPrincipal_20X_24X_Data(
          etiqueta_245: etiquetaTituloPrincipalController.text.trim(),
          primeiroIndicador: primeiroIndicadorTituloPrincipalController.text.trim(),
          segundoIndicador: segundoIndicadorTituloPrincipalController.text.trim(),
          $a_tituloPrincipal: $a_tituloPrincipalTituloPrincipalController.text.trim(),
          $b_subtitulo: $b_subtituloTituloPrincipalController.text.trim(),
          $c_indicacaoDeResponsabilidade: $c_indicacaoDeResponsabilidadeTituloPrincipalController.text.trim(),
          $f_datasDeAbrangencia: $f_datasDeAbrangenciaTituloPrincipalController.text.trim(),
          $g_conjuntoDeDatas: $g_conjuntoDeDatasTituloPrincipalController.text.trim(),
          $h_meioDGM: $h_meioDGMTituloPrincipalController.text.trim(),
          $k_formaDoMaterial: $k_formaDoMaterialTituloPrincipalController.text.trim(),
          $n_numeroDaSecaoDaPublicacao: $n_numeroDaSecaoDaPublicacaoTituloPrincipalController.text.trim(),
          $p_nomeDaSecaoDaPublicacao: $p_nomeDaSecaoDaPublicacaoTituloPrincipalController.text.trim(),
          $s_versao: $s_versaoTituloPrincipalController.text.trim(),
          $6_ligacao: $6_ligacaoTituloPrincipalController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaTituloPrincipalController.text.trim(),
        ),
        imprenta: ClassImprenta_25X_28XData(
          etiqueta_260: etiquetaImprentaController.text.trim(),
          primeiroIndicador: primeiroIndicadorImprentaController.text.trim(),
          segundoIndicador: segundoIndicadorImprentaController.text.trim(),
          $a_lugarDePublicacao: $a_lugarDePublicacaoImprentaController.text.trim(),
          $b_nomeDoEditor: $b_nomeDoEditorImprentaController.text.trim(),
          $c_dataDePublicacao: $c_dataDePublicacaoImprentaController.text.trim(),
          $e_lugarDeFabricacao: $e_lugarDeFabricacaoImprentaController.text.trim(),
          $f_nomeDoFabricante: $f_nomeDoFabricanteImprentaController.text.trim(),
          $g_dataDeFabricacao: $g_dataDeFabricacaoImprentaController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoImprentaController.text.trim(),
          $6_ligacao: $6_ligacaoImprentaController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaImprentaController.text.trim(),
        ),
        descricaoFisica: ClassDescricaoFisica_3XX_Data(
          etiqueta_300: etiquetaDescricaoFisicaController.text.trim(),
          primeiroIndicador: primeiroIndicadorDescricaoFisicaController.text.trim(),
          segundoIndicador: segundoIndicadorDescricaoFisicaController.text.trim(),
          $a_extensao: $a_extensaoDescricaoFisicaController.text.trim(),
          $b_detalhesFisicosAdicionais: $b_detalhesFisicosAdicionaisDescricaoFisicaController.text.trim(),
          $c_dimensoes: $c_dimensoesDescricaoFisicaController.text.trim(),
          $e_materialAdicional: $e_materialAdicionalDescricaoFisicaController.text.trim(),
          $f_tipoDeUnidade: $f_tipoDeUnidadeDescricaoFisicaController.text.trim(),
          $g_tamanhoDaUnidade: $g_tamanhoDaUnidadeDescricaoFisicaController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoDescricaoFisicaController.text.trim(),
          $6_ligacao: $6_ligacaoDescricaoFisicaController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaDescricaoFisicaController.text.trim(),
        ),
        notaGeral: ClassNotaGeral_5XX_Data(
          etiqueta_500: etiquetaNotaGeralController.text.trim(),
          primeiroIndicador: primeiroIndicadorNotaGeralController.text.trim(),
          segundoIndicador: segundoIndicadorNotaGeralController.text.trim(),
          $a_notaGeral: $a_notaGeralNotaGeralController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoImprentaController.text.trim(),
          $5_codigoDaInstituicao: $5_codigoDaInstituicaoNotaGeralController.text.trim(),
          $6_ligacao: $6_ligacaoNotaGeralController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNotaGeralController.text.trim(),
        ),
        notaDeDissertacaoOuTese: ClassNotaDeDissertacaoOuTese_5XX_Data(
          etiqueta_502: etiquetaNotaDeDissertacaoOuTeseController.text.trim(),
          primeiroIndicador: primeiroIndicadorNotaDeDissertacaoOuTeseController.text.trim(),
          segundoIndicador: segundoIndicadorNotaDeDissertacaoOuTeseController.text.trim(),
          $a_notaDeDissertacaoOuTese: $a_notaDeDissertacaoOuTeseControllerNotaDeDissertacaoOuTeseController.text.trim(),
          $6_ligacao: $6_ligacaoNotaDeDissertacaoOuTeseController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNotaDeDissertacaoOuTeseController.text.trim(),
        ),
        notaDeBibliografia: ClassNotaDeBibliografia_5XX_Data(
          etiqueta_504: etiquetaNotaDeBibliografiaController.text.trim(),
          primeiroIndicador: primeiroIndicadorNotaDeBibliografiaController.text.trim(),
          segundoIndicador: segundoIndicadorNotaDeBibliografiaController.text.trim(),
          $a_notaDeBibliografia: $a_notaDeBibliografiaNotaDeBibliografiaController.text.trim(),
          $b_numeroDeReferencias: $b_numeroDeReferenciasNotaDeBibliografiaController.text.trim(),
          $6_ligacao: $6_ligacaoNotaDeBibliografiaController.text.trim(),
          $8_campoDeLigacoesENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNotaDeBibliografiaController.text.trim(),
        ),
        notaDeResumo: ClassNotaDeResumo_5XX_Data(
          etiqueta_520: etiquetaNotaDeResumoController.text.trim(),
          primeiroIndicador: primeiroIndicadorNotaDeResumoController.text.trim(),
          segundoIndicador: segundoIndicadorNotaDeResumoController.text.trim(),
          $a_notaDeResumo: $a_notaDeResumoNotaDeResumoController.text.trim(),
          $b_expansaoDaNotaDeResumo: $b_expansaoDaNotaDeResumoNotaDeResumoController.text.trim(),
          $c_agenciaDepositaria: $c_agenciaDepositariaNotaDeResumoController.text.trim(),
          $u_URI: $u_URINotaDeResumoController.text.trim(),
          $2_fonte: $2_fonteNotaDeResumoController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoNotaDeResumoController.text.trim(),
          $6_ligacao: $6_ligacaoNotaDeResumoController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNotaDeResumoController.text.trim(),
        ),
        notaDeOutrosFormatosDisponiveis: ClassNotaDeOutrosFormatosDisponiveis_5XX_Data(
          etiqueta_530: etiquetaNotaDeOutrosFormatosDisponiveisController.text.trim(),
          primeiroIndicador: primeiroIndicadorNotaDeOutrosFormatosDisponiveisController.text.trim(),
          segundoIndicador: segundoIndicadorNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $a_outroFormatoDisponivel: $a_outroFormatoDisponivelNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $b_fonte: $b_fonteNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $c_condicoes: $c_condicoesNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $d_numeroDeOrdem: $d_numeroDeOrdemNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $u_URI: $u_URINotaDeOutrosFormatosDisponiveisController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $6_ligacao: $6_ligacaoNotaDeOutrosFormatosDisponiveisController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaNotaDeOutrosFormatosDisponiveisController.text.trim(), 
        ),
        entidade: ClassEntidade_6XX_Data(
          etiqueta_610: etiquetaAssuntoEntidadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorAssuntoEntidadeController.text.trim(),
          segundoIndicador: segundoIndicadorAssuntoEntidadeController.text.trim(),
          $a_nomeDaEntidadeOuLugar: $a_nomeDaEntidadeOuLugarAssuntoEntidadeController.text.trim(),
          $b_unidadesSubordinadas: $b_unidadesSubordinadasAssuntoEntidadeController.text.trim(),
          $c_LocalDeRealizacaoDoEncontro: $c_LocalDeRealizacaoDoEncontroAssuntoEntidadeController.text.trim(),
          $d_dataDeRealizacaoDoEvento: $d_dataDeRealizacaoDoEventoAssuntoEntidadeController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoAssuntoEntidadeController.text.trim(),
          $f_dataDaPublicaacoDoTrabalho: $f_dataDaPublicacaoDoTrabalhoAssuntoEntidadeController.text.trim(),
          $g_informacoesAdicionais: $g_informacoesAdicionaisAssuntoEntidadeController.text.trim(),
          $h_meioDGM: $h_meioDGMAssuntoEntidadeController.text.trim(),
          $k_subcabecalho: $k_subcabecalhoAssuntoEntidadeController.text.trim(),
          $l_idiomaDaPublicacao: $l_idiomaDaPublicacaoAssuntoEntidadeController.text.trim(),
          $m_instrumentosMusicais: $m_instrumentosMusicaisAssuntoEntidadeController.text.trim(),
          $n_numeroDaSecaoOuEvento: $n_numeroDaSecaoOuEventoAssuntoEntidadeController.text.trim(),
          $o_arranjoMusical: $o_arranjoMusicalAssuntoEntidadeController.text.trim(),
          $p_nomeDaSecaoPublicada: $p_nomeDaSecaoPublicadaAssuntoEntidadeController.text.trim(),
          $r_escalaMusical: $r_escalaMusicalAssuntoEntidadeController.text.trim(),
          $s_versao: $s_versaoAssuntoEntidadeController.text.trim(),
          $t_tituloDaPublicacao: $t_tituloDaPublicacaoAssuntoEntidadeController.text.trim(),
          $u_afiliacao: $u_afiliacaoAssuntoEntidadeController.text.trim(),
          $v_subdivisaoDeForma: $v_subdivisaoDeFormaAssuntoEntidadeController.text.trim(),
          $x_subdivisaoGeral: $x_subdivisaoGeralAssuntoEntidadeController.text.trim(),
          $y_subdivisaoCronologica: $y_subdivisaoCronologicaAssuntoEntidadeController.text.trim(),
          $z_subdivisaoGeografica: $z_subdivisaoGeograficaAssuntoEntidadeController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade: $0_numeroDeControleDoRegistroDeAutoridadeAssuntoEntidadeController.text.trim(),
          $2_fonteDoCabecalhoOuTermo: $2_fonteDoCabecalhoOuTermoAssuntoEntidadeController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoAssuntoEntidadeController.text.trim(),
          $4_relacao: $4_relacaoAssuntoEntidadeController.text.trim(),
          $6_ligacao: $6_ligacaoAssuntoEntidadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaAssuntoEntidadeController.text.trim(),
        ),
        topico: ClassTopico_650_DataItems(
          etiqueta_650: etiquetaAssuntoTopicoController.text.trim(),
          primeiroIndicador: primeiroIndicadorAssuntoTopicoController.text.trim(),
          segundoIndicador: segundoIndicadorAssuntoTopicoController.text.trim(),
          $a_cabecalhoTopicoOuNomeGeografico: $a_cabecalhoTopicoOuNomeGeograficoAssuntoTopicoController.text.trim(),
          $b_cabecalhoTopicoSeguindoNomeGeografico: $b_cabecalhoTopicoSeguindoNomeGeograficoAssuntoTopicoController.text.trim(),
          $c_localDoEvento: $c_localDoEventoAssuntoTopicoController.text.trim(),
          $d_dataDeRealizacaoDoEvento: $d_dataDeRealizacaoDoEventoAssuntoTopicoController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoAssuntoTopicoController.text.trim(),
          $g_informacoesAdicionais: $g_informacoesAdicionaisAssuntoTopicoController.text.trim(),
          $v_subdivisaoDeForma: $v_subdivisaoDeFormaAssuntoTopicoController.text.trim(),
          $x_subdivisaoGeral: $x_subdivisaoGeralAssuntoTopicoController.text.trim(),
          $y_subdivisaoCronologica: $y_subdivisaoCronologicaAssuntoTopicoController.text.trim(),
          $z_subdivisaoGeografica: $z_subdivisaoGeograficaAssuntoTopicoController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade: $0_numeroDeControleDoRegistroDeAutoridadeAssuntoTopicoController.text.trim(),
          $2_fonteDoCabecalhoOuTermo: $2_fonteDoCabecalhoOuTermoAssuntoTopicoController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoAssuntoTopicoController.text.trim(),
          $4_relacao: $4_relacaoAssuntoTopicoController.text.trim(),
          $6_ligacao: $6_ligacaoAssuntoTopicoController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaAssuntoTopicoController.text.trim(),
        ),
        entradaSecundariaNomePessoal: ClassNomePessoal_70X_75X_Data(
          etiqueta_700: etiquetaEntradaSecundariaNomePessoalController.text.trim(),
          primeiroIndicador:primeiroIndicadorEntradaSecundariaNomePessoalController.text.trim(),
          segundoIndicador:segundoIndicadorEntradaSecundariaNomePessoalController.text.trim(),
          $a_nomePessoal:$a_nomePessoalEntradaSecundariaNomePessoalController.text.trim(),
          $b_algarismosRomanosQueSeguemOPrenome:$b_algarismosRomanosQueSeguemOPrenomeEntradaSecundariaNomePessoalController.text.trim(),
          $c_titulosEOutrasPalavrasAssociadasAoNome:$c_titulosEOutrasPalavrasAssociadasAoNomeEntradaSecundariaNomePessoalController.text.trim(),
          $d_datasAssociadasAoNome:$d_datasAssociadasAoNomeEntradaSecundariaNomePessoalController.text.trim(),
          $e_termoDeRelacao:$e_termoDeRelacaoEntradaSecundariaNomePessoalController.text.trim(),
          $f_dataDaPublicacaoDoTrabalho:$f_dataDaPublicacaoDoTrabalhoEntradaSecundariaNomePessoalController.text.trim(),
          $g_informacoesAdicionais:$g_informacoesAdicionaisEntradaSecundariaNomePessoalController.text.trim(),
          $h_meioDGM:$h_meioDGMEntradaSecundariaNomePessoalController.text.trim(),
          $i_informacoesSobreRelacoes:$i_informacoesSobreRelacoesEntradaSecundariaNomePessoalController.text.trim(),
          $j_atributo:$j_atributoEntradaSecundariaNomePessoalController.text.trim(),
          $k_subcabecalhos:$k_subcabecalhosEntradaSecundariaNomePessoalController.text.trim(),
          $l_idiomaDaPublicacao:$l_idiomaDaPublicacaoEntradaSecundariaNomePessoalController.text.trim(),
          $m_instrumentosMusicais:$m_instrumentosMusicaisEntradaSecundariaNomePessoalController.text.trim(),
          $n_numeroDaSecaoDaPublicacao:$n_numeroDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController.text.trim(),
          $o_arranjoMusical:$o_arranjoMusicalEntradaSecundariaNomePessoalController.text.trim(),
          $p_nomeDaSecaoDaPublicacao:$p_nomeDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController.text.trim(),
          $q_formaCompletaDoNome:$q_formaCompletaDoNomeEntradaSecundariaNomePessoalController.text.trim(),
          $r_escalaMusical:$r_escalaMusicalEntradaSecundariaNomePessoalController.text.trim(),
          $s_versao:$s_versaoEntradaSecundariaNomePessoalController.text.trim(),
          $t_tituloDaPublicacao:$t_tituloDaPublicacaoEntradaSecundariaNomePessoalController.text.trim(),
          $u_afiliacao:$u_afiliacaoEntradaSecundariaNomePessoalController.text.trim(),
          $x_ISSN: $x_ISSNEntradaSecundariaNomePessoalController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade:$0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaNomePessoalController.text.trim(),
          $3_materialEspecificado:$3_materialEspecificadoEntradaSecundariaNomePessoalController.text.trim(),
          $4_relacao:$4_relacaoEntradaSecundariaNomePessoalController.text.trim(),
          $5_codigoDaInstituicao:$5_codigoDaInstituicaoEntradaSecundariaNomePessoalController.text.trim(),
          $6_ligacao:$6_ligacaoEntradaSecundariaNomePessoalController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia:$8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaNomePessoalController.text.trim(),
        ),
        entradaSecundariaEntidade: ClassEntidade_70X_75X_Data(
          etiqueta_710: etiquetaEntradaSecundariaEntidadeController.text.trim(),
          primeiroIndicador: primeiroIndicadorEntradaSecundariaEntidadeController.text.trim(),
          segundoIndicador: segundoIndicadorEntradaSecundariaEntidadeController.text.trim(),
          $a_nomeDaEntidadeOuDoLugar: $a_nomeDaEntidadeOuDoLugarEntradaSecundariaEntidadeController.text.trim(),
          $b_unidadesSubordinadas: $b_unidadesSubordinadasEntradaSecundariaEntidadeController.text.trim(),
          $c_localDeRealizacaoDoEvento: $c_localDeRealizacaoDoEventoEntradaSecundariaEntidadeController.text.trim(),
          $d_dataDeRealizacaoDoEvento: $d_dataDeRealizacaoDoEventoEntradaSecundariaEntidadeController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoEntradaSecundariaEntidadeController.text.trim(),
          $f_dataDePublicacao: $f_dataDePublicacaoEntradaSecundariaEntidadeController.text.trim(),
          $g_informacoesAdicionais: $g_informacoesAdicionaisEntradaSecundariaEntidadeController.text.trim(),
          $h_meioDGM: $h_meioDGMEntradaSecundariaEntidadeController.text.trim(),
          $i_informacoesSobreRelacoes: $i_informacoesSobreRelacoesEntradaSecundariaEntidadeController.text.trim(),
          $k_subcabecalho: $k_subcabecalhoEntradaSecundariaEntidadeController.text.trim(),
          $l_idiomaDaPublicacao: $l_idiomaDaPublicacaoEntradaSecundariaEntidadeController.text.trim(),
          $m_meioDeExecucaoParaMusica: $m_meioDeExecucaoParaMusicaEntradaSecundariaEntidadeController.text.trim(),
          $n_numeroDaSecao: $n_numeroDaSecaoEntradaSecundariaEntidadeController.text.trim(),
          $o_arranjoMusical: $o_arranjoMusicalEntradaSecundariaEntidadeController.text.trim(),
          $p_nomeDaSecaoDaPublicacao: $p_nomeDaSecaoDaPublicacaoEntradaSecundariaEntidadeController.text.trim(),
          $r_escalaMusical: $r_escalaMusicalEntradaSecundariaEntidadeController.text.trim(),
          $s_versao: $s_versaoEntradaSecundariaEntidadeController.text.trim(),
          $t_tituloDaPublicacao: $t_tituloDaPublicacaoEntradaSecundariaEntidadeController.text.trim(),
          $u_afiliacao: $u_afiliacaoEntradaSecundariaEntidadeController.text.trim(),
          $x_ISSN: $x_ISSNEntradaSecundariaEntidadeController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade: $0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaEntidadeController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoEntradaSecundariaEntidadeController.text.trim(),
          $4_relacao: $4_relacaoEntradaSecundariaEntidadeController.text.trim(),
          $5_codigoDaInstituicao: $5_codigoDaInstituicaoEntradaSecundariaEntidadeController.text.trim(),
          $6_ligacao: $6_ligacaoEntradaSecundariaEntidadeController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaEntidadeController.text.trim(),
        ),
        localizacaoEAcessoEletronico: ClassLocalizacaoEAcessoEletronico_841_88X_Data(
          etiqueta_856: etiquetaLocalizacaoEAcessoController.text.trim(),
          primeiroIndicador: primeiroIndicadorLocalizacaoEAcessoController.text.trim(),
          segundoIndicador: segundoIndicadorLocalizacaoEAcessoController.text.trim(),
          $a_nomeDoServidor: $a_nomeDoServidorLocalizacaoEAcessoController.text.trim(),
          $b_numeroDoAcesso: $b_numeroDoAcessoLocalizacaoEAcessoController.text.trim(),
          $c_informacoesSobreCompactacao: $c_informacoesSobreCompactacaoLocalizacaoEAcessoController.text.trim(),
          $d_caminho: $d_caminhoLocalizacaoEAcessoController.text.trim(),
          $f_nomeDoArquivoEletronico: $f_nomeDoArquivoEletronicoLocalizacaoEAcessoController.text.trim(),
          $h_username: $h_usernameLocalizacaoEAcessoController.text.trim(),
          $i_instrucao: $i_instrucaoLocalizacaoEAcessoController.text.trim(),
          $j_bitsPorSegundo: $j_bitsPorSegundoLocalizacaoEAcessoController.text.trim(),
          $k_password: $k_passwordLocalizacaoEAcessoController.text.trim(),
          $l_login: $l_loginLocalizacaoEAcessoController.text.trim(),
          $m_contatoParaObterAjuda: $m_contatoParaObterAjudaLocalizacaoEAcessoController.text.trim(),
          $n_nomeDaLocalizacaoDoServidor: $n_nomeDaLocalizacaoDoServidorLocalizacaoEAcessoController.text.trim(),
          $o_sistemaOperativo: $o_sistemaOperativoLocalizacaoEAcessoController.text.trim(),
          $p_porta: $p_portaLocalizacaoEAcessoController.text.trim(),
          $q_tipoDoFormatoEletronico: $q_tipoDoFormatoEletronicoLocalizacaoEAcessoController.text.trim(),
          $r_configuracao: $r_configuracaoLocalizacaoEAcessoController.text.trim(),
          $s_tamanhoDoArquivo: $s_tamanhoDoArquivoLocalizacaoEAcessoController.text.trim(),
          $t_emulacaoDeTerminal: $t_emulacaoDeTerminalLocalizacaoEAcessoController.text.trim(),
          $u_identificadorUniformeDeRecursoURI: $u_identificadorUniformeDeRecursoURILocalizacaoEAcessoController.text.trim(),
          $v_horarioDeAcesso: $v_horarioDeAcessoLocalizacaoEAcessoController.text.trim(),
          $w_numeroDeControleDeUmRegistro: $w_numeroDeControleDeUmRegistroLocalizacaoEAcessoController.text.trim(),
          $x_notaInterna: $x_notaInternaLocalizacaoEAcessoController.text.trim(),
          $y_textoDoLink: $y_textoDoLinkLocalizacaoEAcessoController.text.trim(),
          $z_notaDoPublico: $z_notaDoPublicoLocalizacaoEAcessoController.text.trim(),
          $2_metodoDeAcesso: $2_metodoDeAcessoLocalizacaoEAcessoController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoLocalizacaoEAcessoController.text.trim(),
          $6_ligacao: $6_ligacaoLocalizacaoEAcessoController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaLocalizacaoEAcessoController.text.trim(),
        ),
        codigoAcervo: codigoAcervoController.text.trim(),
        exemplarDataID: exemplarDataIDController.text.trim(),
    );
    carregado();
    notifyListeners();
    return monografiaTeseEDissertacao;
    }  else {
      return ClassGenericResponse();
    }
  } 

  Future<ClassGenericResponse> getCutter({required String nome}) async {
    try {
      carregando();
      var cutter = entradaTeseRepository.getCutter(nome: nome);
      carregado();
      notifyListeners();
      return cutter;
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return ClassGenericResponse();
  }

  Future getCodigoAcervo() async {
    carregando();
    var acervo = await acervoRepository.getCodigoAcervo().then((valor) {
      if (valor.first.acervoDataID.toString() == 'null') {
        codigoAcervoController.text = "1";
      } else {
        codigoAcervoController.text = "${valor.first.acervoDataID! + 1}";
        notifyListeners();
      }
    });
    carregado();
    notifyListeners();
    return acervo;
  }

  Future getExemplarDataID() async {
    carregando();
    var exemplar = await exemplarRepository.getExemplarDataID().then((valor) {
      if (valor.first.exemplarDataID.toString() == 'null') {
        exemplarDataIDController.text = "1";
      } else {
        exemplarDataIDController.text = "${valor.first.exemplarDataID! + 1}";
        notifyListeners();
      }
    });
    carregado();
    notifyListeners();
    return exemplar;
  }

  void limparControllersMonografiaTeseEDissertacao() {
  //LIDER
  etiquetaLiderController.clear();
  tamanhoDoRegistro_00_04LiderController.clear();
  statusDoRegistro_05LiderController.clear();
  tipoDeRegistro_06LiderController.clear();
  nivelBibliografico_07LiderController.clear();
  tipoDeControle_08LiderController.clear();
  esquemaDeCodificacaoDeCaractere_09LiderController.clear();
  numeroDeIndicadores_10LiderController.clear();
  numeroDeSubcampos_11LiderController.clear();
  enderecoDeDados_12_16LiderController.clear();
  nivelDeCodificacao_17LiderController.clear();
  formaDeCatalogacaoDescritiva_18LiderController.clear();
  nivelDeRegistroDeRecurso_19LiderController.clear();
  tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20LiderController.clear();
  tamanhoDaPosicaoDoCaractereDeInicio_21LiderController.clear();
  tamanhoDaParteDefinidaParaImplementacao_22LiderController.clear();
  entradaNaoDefinida_23LiderController.clear();

  //CAMPOS DE CONTROLE
  numeroDeControleCamposDeControleController.clear();
  codigoMarcDaAgenciaCatalogaoraCamposDeControleController.clear();
  dataEHoraDaUltimaAtualizacaoCamposDeControleController.clear();

  // DADOS FIXOS - 008
  etiquetaDadosFixosController.clear();
  dataDeEntradaDoRegistroNoArquivo_00_05DadosFixosController.clear();
  tipodeDataOuStatusDePublicacao_06DadosFixosController.clear();
  data1_07_10DadosFixosController.clear();
  data2_11_14DadosFixosController.clear();
  lugarDePublicacaoProducaoExecucao_15_17DadosFixosController.clear();
  tipoDeMaterial_18_34DadosFixosController.clear();
  idiomaDoTextoDoDocumento_35_37DadosFixosController.clear();
  registroModificado_38DadosFixosController.clear();
  fonteDeCatalogacao_39DadosFixosController.clear();

  // DADOS FIXOS (LIVRO)- 008
  livros_008_DataIDDadosFixosController.clear();
  ilustracoes_18_21DadosFixosController.clear();
  publicoAlvo_22DadosFixosController.clear();
  formaDoDocumento_23DadosFixosController.clear();
  naturezaDoConteudo_24_27DadosFixosController.clear();
  publicacaoGovernamental_28DadosFixosController.clear();
  publicacaoDeConferencia_29DadosFixosController.clear();
  obraComemorativa_30DadosFixosController.clear();
  indice_31DadosFixosController.clear();
  indefinido_32DadosFixosController.clear();
  formaLiteraria_33DadosFixosController.clear();
  biografia_34DadosFixosController.clear();

  // FONTE CATALOGADORA
  etiquetaFonteCatalogadoraController.clear();
  primeiroIndicadorFonteCatalogadoraController.clear();
  segundoIndicadorFonteCatalogadoraController.clear();
  $a_codigoDaAgenciaCatalogadaFonteCatalogadoraController.clear();
  $b_idiomaDaCatalogacaoFonteCatalogadoraController.clear();
  $c_agenciaQueTranscreveORegistroFonteCatalogadoraController.clear();
  $d_agenciaQueAlterouORegistroFonteCatalogadoraController.clear();
  $e_fontesConvencionaisDeDescricaoDeDadosFonteCatalogadoraController.clear();
  $6_ligacaoFonteCatalogadoraController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraController.clear();

  // NUMERO DE CLASSIFICACAO UNIVERSAL
  etiquetaNumeroClassificacaoUniversalController.clear();
  primeiroIndicadorNumeroClassificacaoUniversalController.clear();
  segundoIndicadorNumeroClassificacaoUniversalController.clear();
  $a_numeroDeClassificacaoNumeroClassificacaoUniversalController.clear();
  $b_numeroDoItemNumeroClassificacaoUniversalController.clear();
  $x_subdivisaoAuxiliarComumNumeroClassificacaoUniversalController.clear();
  $0_numeroDeControleDoRegistroDeAutoridadeNumeroClassificacaoUniversalController.clear();
  $2_numeroDaEdicaoNumeroClassificacaoUniversalController.clear();
  $6_ligacaoNumeroClassificacaoUniversalController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNumeroClassificacaoUniversalController.clear();

  // NUMERO DE CHAMADA LOCAL
  etiquetaNumeroDeChamadaLocalController.clear();
  primeiroIndicadorNumeroDeChamadaLocalController.clear();
  segundoIndicadorNumeroDeChamadaLocalController.clear();
  $a_classificacaoNumeroDeChamadaLocalController.clear();
  $b_numeroDeCutterNumeroDeChamadaLocalController.clear();
  $c_tipoDeObraNumeroDeChamadaLocalController.clear();
  $d_anoDePublicacaoNumeroDeChamadaLocalController.clear();
  $8_unidadeCatalogadoraNumeroDeChamadaLocalController.clear();
  siglaInstituicaoNumeroDeChamadaLocalController.clear();

  // NOME PESSOAL 100
  etiquetaNomePessoalController.clear();
  primeiroIndicadorNomePessoalController.clear();
  segundoIndicadorNomePessoalController.clear();
  $a_nomePessoalNomePessoalController.clear();
  $b_algarismosRomanosQueSeguemPrenomeNomePessoalController.clear();
  $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalController.clear();
  $d_datasAssociadasAoNomeNomePessoalController.clear();
  $e_termoDeRelacaoNomePessoalController.clear();
  $f_dataDaPublicacaoDoTrabalhoNomePessoalController.clear();
  $g_informacoesAdicionaisNomePessoalController.clear();
  $j_atributoQualificadorNomePessoalController.clear();
  $k_subcabecalhoNomePessoalController.clear();
  $l_idiomaDaPublicacaoNomePessoalController.clear();
  $n_numeroDaSecaoDaPublicacaoNomePessoalController.clear();
  $p_nomeDaSecaoDaPublicacaoNomePessoalController.clear();
  $q_formaCompletaDoNomeNomePessoalController.clear();
  $t_tituloDaPublicacaoNomePessoalController.clear();
  $u_afiliacaoNomePessoalController.clear();
  $0_numeroDeControleDoRegistroDeAutoridadeNomePessoalController.clear();
  $4_relacaoNomePessoalController.clear();
  $6_ligacaoNomePessoalController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNomePessoalController.clear();

  // TITULO PRINCIPAL 245
  etiquetaTituloPrincipalController.clear();
  primeiroIndicadorTituloPrincipalController.clear();
  segundoIndicadorTituloPrincipalController.clear();
  $a_tituloPrincipalTituloPrincipalController.clear();
  $b_subtituloTituloPrincipalController.clear();
  $c_indicacaoDeResponsabilidadeTituloPrincipalController.clear();
  $f_datasDeAbrangenciaTituloPrincipalController.clear();
  $g_conjuntoDeDatasTituloPrincipalController.clear();
  $h_meioDGMTituloPrincipalController.clear();
  $k_formaDoMaterialTituloPrincipalController.clear();
  $n_numeroDaSecaoDaPublicacaoTituloPrincipalController.clear();
  $p_nomeDaSecaoDaPublicacaoTituloPrincipalController.clear();
  $s_versaoTituloPrincipalController.clear();
  $6_ligacaoTituloPrincipalController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaTituloPrincipalController.clear();

  // IMPRENTA 260
  etiquetaImprentaController.clear();
  primeiroIndicadorImprentaController.clear();
  segundoIndicadorImprentaController.clear();
  $a_lugarDePublicacaoImprentaController.clear();
  $b_nomeDoEditorImprentaController.clear();
  $c_dataDePublicacaoImprentaController.clear();
  $e_lugarDeFabricacaoImprentaController.clear();
  $f_nomeDoFabricanteImprentaController.clear();
  $g_dataDeFabricacaoImprentaController.clear();
  $3_materialEspecificadoImprentaController.clear();
  $6_ligacaoImprentaController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaImprentaController.clear();

  // DESCRIÇÃO FISICA 300
  etiquetaDescricaoFisicaController.clear();
  primeiroIndicadorDescricaoFisicaController.clear();
  segundoIndicadorDescricaoFisicaController.clear();
  $a_extensaoDescricaoFisicaController.clear();
  $b_detalhesFisicosAdicionaisDescricaoFisicaController.clear();
  $c_dimensoesDescricaoFisicaController.clear();
  $e_materialAdicionalDescricaoFisicaController.clear();
  $f_tipoDeUnidadeDescricaoFisicaController.clear();
  $g_tamanhoDaUnidadeDescricaoFisicaController.clear();
  $3_materialEspecificadoDescricaoFisicaController.clear();
  $6_ligacaoDescricaoFisicaController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaDescricaoFisicaController.clear();

  // NOTA GERAL 500
  etiquetaNotaGeralController.clear();
  primeiroIndicadorNotaGeralController.clear();
  segundoIndicadorNotaGeralController.clear();
  $a_notaGeralNotaGeralController.clear();
  $3_materialEspecificadoNotaGeralController.clear();
  $5_codigoDaInstituicaoNotaGeralController.clear();
  $6_ligacaoNotaGeralController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNotaGeralController.clear();

  // NOTA DE DISSERTAÇÂO OU TESE 502
  etiquetaNotaDeDissertacaoOuTeseController.clear();
  primeiroIndicadorNotaDeDissertacaoOuTeseController.clear();
  segundoIndicadorNotaDeDissertacaoOuTeseController.clear();
  $a_notaDeDissertacaoOuTeseControllerNotaDeDissertacaoOuTeseController.clear();
  $6_ligacaoNotaDeDissertacaoOuTeseController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNotaDeDissertacaoOuTeseController.clear();

  // NOTA DE BIBLIOGRAFIA 504
  etiquetaNotaDeBibliografiaController.clear();
  primeiroIndicadorNotaDeBibliografiaController.clear();
  segundoIndicadorNotaDeBibliografiaController.clear();
  $a_notaDeBibliografiaNotaDeBibliografiaController.clear();
  $b_numeroDeReferenciasNotaDeBibliografiaController.clear();
  $6_ligacaoNotaDeBibliografiaController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNotaDeBibliografiaController.clear();

  // NOTA DE RESUMO 520
  etiquetaNotaDeResumoController.clear();
  primeiroIndicadorNotaDeResumoController.clear();
  segundoIndicadorNotaDeResumoController.clear();
  $a_notaDeResumoNotaDeResumoController.clear();
  $b_expansaoDaNotaDeResumoNotaDeResumoController.clear();
  $c_agenciaDepositariaNotaDeResumoController.clear();
  $u_URINotaDeResumoController.clear();
  $2_fonteNotaDeResumoController.clear();
  $3_materialEspecificadoNotaDeResumoController.clear();
  $6_ligacaoNotaDeResumoController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNotaDeResumoController.clear();

  // NORA DE OUTROS FORMATOS DISPONÍVEIS 530
  etiquetaNotaDeOutrosFormatosDisponiveisController.clear();
  primeiroIndicadorNotaDeOutrosFormatosDisponiveisController.clear();
  segundoIndicadorNotaDeOutrosFormatosDisponiveisController.clear();
  $a_outroFormatoDisponivelNotaDeOutrosFormatosDisponiveisController.clear();
  $b_fonteNotaDeOutrosFormatosDisponiveisController.clear();
  $c_condicoesNotaDeOutrosFormatosDisponiveisController.clear();
  $d_numeroDeOrdemNotaDeOutrosFormatosDisponiveisController.clear();
  $u_URINotaDeOutrosFormatosDisponiveisController.clear();
  $3_materialEspecificadoNotaDeOutrosFormatosDisponiveisController.clear();
  $6_ligacaoNotaDeOutrosFormatosDisponiveisController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaNotaDeOutrosFormatosDisponiveisController.clear();

  // ASSUNTO - ENTIDADE 610
  etiquetaAssuntoEntidadeController.clear();
  primeiroIndicadorAssuntoEntidadeController.clear();
  segundoIndicadorAssuntoEntidadeController.clear();
  $a_nomeDaEntidadeOuLugarAssuntoEntidadeController.clear();
  $b_unidadesSubordinadasAssuntoEntidadeController.clear();
  $c_LocalDeRealizacaoDoEncontroAssuntoEntidadeController.clear();
  $d_dataDeRealizacaoDoEventoAssuntoEntidadeController.clear();
  $e_termoDeRelacaoAssuntoEntidadeController.clear();
  $f_dataDaPublicacaoDoTrabalhoAssuntoEntidadeController.clear();
  $g_informacoesAdicionaisAssuntoEntidadeController.clear();
  $h_meioDGMAssuntoEntidadeController.clear();
  $k_subcabecalhoAssuntoEntidadeController.clear();
  $l_idiomaDaPublicacaoAssuntoEntidadeController.clear();
  $m_instrumentosMusicaisAssuntoEntidadeController.clear();
  $n_numeroDaSecaoOuEventoAssuntoEntidadeController.clear();
  $o_arranjoMusicalAssuntoEntidadeController.clear();
  $p_nomeDaSecaoPublicadaAssuntoEntidadeController.clear();
  $r_escalaMusicalAssuntoEntidadeController.clear();
  $s_versaoAssuntoEntidadeController.clear();
  $t_tituloDaPublicacaoAssuntoEntidadeController.clear();
  $u_afiliacaoAssuntoEntidadeController.clear();
  $v_subdivisaoDeFormaAssuntoEntidadeController.clear();
  $x_subdivisaoGeralAssuntoEntidadeController.clear();
  $y_subdivisaoCronologicaAssuntoEntidadeController.clear();
  $z_subdivisaoGeograficaAssuntoEntidadeController.clear();
  $0_numeroDeControleDoRegistroDeAutoridadeAssuntoEntidadeController.clear();
  $2_fonteDoCabecalhoOuTermoAssuntoEntidadeController.clear();
  $3_materialEspecificadoAssuntoEntidadeController.clear();
  $4_relacaoAssuntoEntidadeController.clear();
  $6_ligacaoAssuntoEntidadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaAssuntoEntidadeController.clear();

  // ASSUNTO - Tópico 650
  etiquetaAssuntoTopicoController.clear();
  primeiroIndicadorAssuntoTopicoController.clear();
  segundoIndicadorAssuntoTopicoController.clear();
  $a_cabecalhoTopicoOuNomeGeograficoAssuntoTopicoController.clear();
  $b_cabecalhoTopicoSeguindoNomeGeograficoAssuntoTopicoController.clear();
  $c_localDoEventoAssuntoTopicoController.clear();
  $d_dataDeRealizacaoDoEventoAssuntoTopicoController.clear();
  $e_termoDeRelacaoAssuntoTopicoController.clear();
  $g_informacoesAdicionaisAssuntoTopicoController.clear();
  $v_subdivisaoDeFormaAssuntoTopicoController.clear();
  $x_subdivisaoGeralAssuntoTopicoController.clear();
  $y_subdivisaoCronologicaAssuntoTopicoController.clear();
  $z_subdivisaoGeograficaAssuntoTopicoController.clear();
  $0_numeroDeControleDoRegistroDeAutoridadeAssuntoTopicoController.clear();
  $2_fonteDoCabecalhoOuTermoAssuntoTopicoController.clear();
  $3_materialEspecificadoAssuntoTopicoController.clear();
  $4_relacaoAssuntoTopicoController.clear();
  $6_ligacaoAssuntoTopicoController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaAssuntoTopicoController.clear();

  // ENTRADA SECUNDÀRIA - NOME PESSOAL 700
  etiquetaEntradaSecundariaNomePessoalController.clear();
  primeiroIndicadorEntradaSecundariaNomePessoalController.clear();
  segundoIndicadorEntradaSecundariaNomePessoalController.clear();
  $a_nomePessoalEntradaSecundariaNomePessoalController.clear();
  $b_algarismosRomanosQueSeguemOPrenomeEntradaSecundariaNomePessoalController.clear();
  $c_titulosEOutrasPalavrasAssociadasAoNomeEntradaSecundariaNomePessoalController.clear();
  $d_datasAssociadasAoNomeEntradaSecundariaNomePessoalController.clear();
  $e_termoDeRelacaoEntradaSecundariaNomePessoalController.clear();
  $f_dataDaPublicacaoDoTrabalhoEntradaSecundariaNomePessoalController.clear();
  $g_informacoesAdicionaisEntradaSecundariaNomePessoalController.clear();
  $h_meioDGMEntradaSecundariaNomePessoalController.clear();
  $i_informacoesSobreRelacoesEntradaSecundariaNomePessoalController.clear();
  $j_atributoEntradaSecundariaNomePessoalController.clear();
  $k_subcabecalhosEntradaSecundariaNomePessoalController.clear();
  $l_idiomaDaPublicacaoEntradaSecundariaNomePessoalController.clear();
  $m_instrumentosMusicaisEntradaSecundariaNomePessoalController.clear();
  $n_numeroDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController.clear();
  $o_arranjoMusicalEntradaSecundariaNomePessoalController.clear();
  $p_nomeDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController.clear();
  $q_formaCompletaDoNomeEntradaSecundariaNomePessoalController.clear();
  $r_escalaMusicalEntradaSecundariaNomePessoalController.clear();
  $s_versaoEntradaSecundariaNomePessoalController.clear();
  $t_tituloDaPublicacaoEntradaSecundariaNomePessoalController.clear();
  $u_afiliacaoEntradaSecundariaNomePessoalController.clear();
  $x_ISSNEntradaSecundariaNomePessoalController.clear();
  $0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaNomePessoalController.clear();
  $3_materialEspecificadoEntradaSecundariaNomePessoalController.clear();
  $4_relacaoEntradaSecundariaNomePessoalController.clear();
  $5_codigoDaInstituicaoEntradaSecundariaNomePessoalController.clear();
  $6_ligacaoEntradaSecundariaNomePessoalController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaNomePessoalController.clear();

// ENTRADA SECUNDÀRIA - ENTIDADE 710
  etiquetaEntradaSecundariaEntidadeController.clear();
  primeiroIndicadorEntradaSecundariaEntidadeController.clear();
  segundoIndicadorEntradaSecundariaEntidadeController.clear();
  $a_nomeDaEntidadeOuDoLugarEntradaSecundariaEntidadeController.clear();
  $b_unidadesSubordinadasEntradaSecundariaEntidadeController.clear();
  $c_localDeRealizacaoDoEventoEntradaSecundariaEntidadeController.clear();
  $d_dataDeRealizacaoDoEventoEntradaSecundariaEntidadeController.clear();
  $e_termoDeRelacaoEntradaSecundariaEntidadeController.clear();
  $f_dataDePublicacaoEntradaSecundariaEntidadeController.clear();
  $g_informacoesAdicionaisEntradaSecundariaEntidadeController.clear();
  $h_meioDGMEntradaSecundariaEntidadeController.clear();
  $i_informacoesSobreRelacoesEntradaSecundariaEntidadeController.clear();
  $k_subcabecalhoEntradaSecundariaEntidadeController.clear();
  $l_idiomaDaPublicacaoEntradaSecundariaEntidadeController.clear();
  $m_meioDeExecucaoParaMusicaEntradaSecundariaEntidadeController.clear();
  $n_numeroDaSecaoEntradaSecundariaEntidadeController.clear();
  $o_arranjoMusicalEntradaSecundariaEntidadeController.clear();
  $p_nomeDaSecaoDaPublicacaoEntradaSecundariaEntidadeController.clear();
  $r_escalaMusicalEntradaSecundariaEntidadeController.clear();
  $s_versaoEntradaSecundariaEntidadeController.clear();
  $t_tituloDaPublicacaoEntradaSecundariaEntidadeController.clear();
  $u_afiliacaoEntradaSecundariaEntidadeController.clear();
  $x_ISSNEntradaSecundariaEntidadeController.clear();
  $0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaEntidadeController.clear();
  $3_materialEspecificadoEntradaSecundariaEntidadeController.clear();
  $4_relacaoEntradaSecundariaEntidadeController.clear();
  $5_codigoDaInstituicaoEntradaSecundariaEntidadeController.clear();
  $6_ligacaoEntradaSecundariaEntidadeController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaEntidadeController.clear();

  etiquetaLocalizacaoEAcessoController.clear();
  primeiroIndicadorLocalizacaoEAcessoController.clear();
  segundoIndicadorLocalizacaoEAcessoController.clear();
  $a_nomeDoServidorLocalizacaoEAcessoController.clear();
  $b_numeroDoAcessoLocalizacaoEAcessoController.clear();
  $c_informacoesSobreCompactacaoLocalizacaoEAcessoController.clear();
  $d_caminhoLocalizacaoEAcessoController.clear();
  $f_nomeDoArquivoEletronicoLocalizacaoEAcessoController.clear();
  $h_usernameLocalizacaoEAcessoController.clear();
  $i_instrucaoLocalizacaoEAcessoController.clear();
  $j_bitsPorSegundoLocalizacaoEAcessoController.clear();
  $k_passwordLocalizacaoEAcessoController.clear();
  $l_loginLocalizacaoEAcessoController.clear();
  $m_contatoParaObterAjudaLocalizacaoEAcessoController.clear();
  $n_nomeDaLocalizacaoDoServidorLocalizacaoEAcessoController.clear();
  $o_sistemaOperativoLocalizacaoEAcessoController.clear();
  $p_portaLocalizacaoEAcessoController.clear();
  $q_tipoDoFormatoEletronicoLocalizacaoEAcessoController.clear();
  $r_configuracaoLocalizacaoEAcessoController.clear();
  $s_tamanhoDoArquivoLocalizacaoEAcessoController.clear();
  $t_emulacaoDeTerminalLocalizacaoEAcessoController.clear();
  $u_identificadorUniformeDeRecursoURILocalizacaoEAcessoController.clear();
  $v_horarioDeAcessoLocalizacaoEAcessoController.clear();
  $w_numeroDeControleDeUmRegistroLocalizacaoEAcessoController.clear();
  $x_notaInternaLocalizacaoEAcessoController.clear();
  $y_textoDoLinkLocalizacaoEAcessoController.clear();
  $z_notaDoPublicoLocalizacaoEAcessoController.clear();
  $2_metodoDeAcessoLocalizacaoEAcessoController.clear();
  $3_materialEspecificadoLocalizacaoEAcessoController.clear();
  $6_ligacaoLocalizacaoEAcessoController.clear();
  $8_campoDeLigacaoENumeroDeSequenciaLocalizacaoEAcessoController.clear();
  }
}
