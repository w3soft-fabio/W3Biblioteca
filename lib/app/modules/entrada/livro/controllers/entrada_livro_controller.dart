// ignore_for_file: non_constant_identifier_names, avoid_print
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/topico/class_topico_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/campo_de_tamanho_fixo_008/livros/class_livros_008_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_controle_00X/campo_de_tamanho_fixo_008/todos_os_materiais/class_todos_os_materiais_008_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/classes_02X_09X_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_chamada_local/class_numero_de_chamada_local_02X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/classes_marc21_bibliografico_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/localizacao_e_acesso_eletronico/class_localizacao_e_acesso_eletronico_841_88X_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/classes_3XX_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/classes_25X_28X_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/classes_entrada_secundaria_70X_75X_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/classes_1XX_exports.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20X_24X/classes_20X_24X_exports.dart';
import 'package:w3biblioteca/app/modules/acervo/repository/acervo_repository.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/repository/entrada_livro_repository.dart';
import 'package:w3biblioteca/app/modules/exemplar/repository/exemplar_repository.dart';

class EntradaLivroController with ChangeNotifier {
  // DECLARA DIOSERVICE VIA CONSTRUTOR
  final EntradaLivroRepository entradaLivroRepository;
  final AcervoRepository acervoRepository;
  final ExemplarRepository exemplarRepository;
  EntradaLivroController(this.entradaLivroRepository, this.acervoRepository, this.exemplarRepository);

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

  //FORMKEY
  final formKey = GlobalKey<FormState>();
  final formKeyCampoItem = GlobalKey<FormState>();

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

  // CAMPOS DE CONTROLE
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
  final livros_008_DataIDDadosFixosLivrosController = TextEditingController();
  final ilustracoes_18_21DadosFixosLivrosController = TextEditingController();
  final publicoAlvo_22DadosFixosLivrosController = TextEditingController();
  final formaDoDocumento_23DadosFixosLivrosController = TextEditingController();
  final naturezaDoConteudo_24_27DadosFixosLivrosController = TextEditingController();
  final publicacaoGovernamental_28DadosFixosLivrosController = TextEditingController();
  final publicacaoDeConferencia_29DadosFixosLivrosController = TextEditingController();
  final obraComemorativa_30DadosFixosLivrosController = TextEditingController();
  final indice_31DadosFixosLivrosController = TextEditingController();
  final indefinido_32DadosFixosLivrosController = TextEditingController();
  final formaLiteraria_33DadosFixosLivrosController = TextEditingController();
  final biografia_34DadosFixosLivrosController = TextEditingController();

  //ISBN
  var etiquetaISBNController = TextEditingController();
  final primeiroIndicadorISBNController = TextEditingController();
  final segundoIndicadorISBNController = TextEditingController();
  final $a_numeroDoISBNController = TextEditingController();
  final $c_modalidadesDeAquisicaoISBNController = TextEditingController();
  final $q_informacaoQualificadoraISBNController = TextEditingController();
  final $z_isbnCanceladoOuInvalidoISBNController = TextEditingController();
  final $6_ligacaoISBNController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaISBNController = TextEditingController();

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

  // NOME PESSOAL
  final etiquetaNomePessoalController = TextEditingController();
  final primeiroIndicadorNomePessoalController = TextEditingController();
  final segundoIndicadorNomePessoalController = TextEditingController();
  final $a_nomePessoalNomePessoalController = TextEditingController();
  final $b_algarismosRomanosQueSeguemPrenomeNomePessoalController = TextEditingController();
  final $c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalController = TextEditingController();
  final $d_datasAssociadasAoNomeNomePessoalController = TextEditingController();
  final $e_termoDeRelacaoNomePessoalController = TextEditingController();
  final $f_dataDaPublicacaoDoTrabalhoNomePessoalController = TextEditingController();
  final $g_informacoesAdicionaisNomePessoalController = TextEditingController();
  final $j_atributoQualificadorNomePessoalController = TextEditingController();
  final $k_subcabecalhoNomePessoalController = TextEditingController();
  final $l_idiomaDaPublicacaoNomePessoalController = TextEditingController();
  final $n_numeroDaSecaoDaPublicacaoNomePessoalController = TextEditingController();
  final $p_nomeDaSecaoDaPublicacaoNomePessoalController = TextEditingController();
  final $q_formaCompletaDoNomeNomePessoalController = TextEditingController();
  final $t_tituloDaPublicacaoNomePessoalController = TextEditingController();
  final $u_afiliacaoNomePessoalController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeNomePessoalController = TextEditingController();
  final $4_relacaoNomePessoalController = TextEditingController();
  final $6_ligacaoNomePessoalController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaNomePessoalController = TextEditingController();

  // TÍTULO ORIGINAL
  final etiquetaTituloOriginalController = TextEditingController();
  final primeiroIndicadorTituloOriginalController = TextEditingController();
  final segundoIndicadorTituloOriginalController = TextEditingController();
  final $a_tituloUniformeTituloOriginalController = TextEditingController();
  final $d_dataDaAssinaturaDoTratadoTituloOriginalController = TextEditingController();
  final $f_dataDaPublicacaoDoTrabalhoTituloOriginalController = TextEditingController();
  final $g_informacaoesAdicionaisTituloOriginalController = TextEditingController();
  final $h_meioDGMTituloOriginalController = TextEditingController();
  final $k_subcabecalhoTituloOriginalController = TextEditingController();
  final $l_idiomaDaPublicacaoTituloOriginalController = TextEditingController();
  final $m_meioDeExecucaoParaMusicaTituloOriginalController = TextEditingController();
  final $n_numeroDaSecaoDaPublicacaoTituloOriginalController = TextEditingController();
  final $o_arranjoMusicalTituloOriginalController = TextEditingController();
  final $p_nomeDaSecaoDePublicacaoTituloOriginalController = TextEditingController();
  final $r_escalaMusicalTituloOriginalController = TextEditingController();
  final $s_versaoTituloOriginalController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeTituloOriginalController = TextEditingController();
  final $6_ligacaoTituloOriginalController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaTituloOriginalController = TextEditingController();

  // TITULO PRINCIPAL
  final etiquetaTituloPrincipalController = TextEditingController();
  final primeiroIndicadorTituloPrincipalController = TextEditingController();
  final segundoIndicadorTituloPrincipalController = TextEditingController();
  final $a_tituloPrincipalTituloPrincipalController = TextEditingController();
  final $b_subtituloTituloPrincipalController = TextEditingController();
  final $c_indicacaoDeResponsabilidadeTituloPrincipalController = TextEditingController();
  final $f_datasDeAbrangenciaTituloPrincipalController = TextEditingController();
  final $g_conjuntoDeDatasTituloPrincipalController = TextEditingController();
  final $h_meioDGMTituloPrincipalController = TextEditingController();
  final $k_formaDoMaterialTituloPrincipalController = TextEditingController();
  final $n_numeroDaSecaoDaPublicacaoTituloPrincipalController = TextEditingController();
  final $p_nomeDaSecaoDaPublicacaoTituloPrincipalController = TextEditingController();
  final $s_versaoTituloPrincipalController = TextEditingController();
  final $6_ligacaoTituloPrincipalController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaTituloPrincipalController = TextEditingController();

  //EDIÇÃO
    final etiquetaEdicaoController = TextEditingController();
    final primeiroIndicadorEdicaoController = TextEditingController();
    final segundoIndicadorEdicaoController = TextEditingController();
    final $a_edicaoEdicaoController = TextEditingController();
    final $b_outrasInformacoesSobreEdicaoEdicaoController = TextEditingController();
    final $3_materialEspecificadoEdicaoController = TextEditingController();
    final $6_ligacaoEdicaoController = TextEditingController();
    final $8_campoDeLigacaoENumeroDeSequenciaEdicaoController = TextEditingController();

  //IMPRENTA
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
  final $8_campoDeLigacaoENumeroDeSequenciaImprentaController = TextEditingController();

  //DESCRIÇÃO FISICA
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

  // ASSUNTOS: TÓPICO
  final etiquetaTopicoController = TextEditingController();
  final primeiroIndicadorTopicoController = TextEditingController(); 
  final segundoIndicadorTopicoController = TextEditingController();
  final $a_cabecalhoTopicoOuNomeGeograficoTopicoController = TextEditingController();
  final $b_cabecalhoTopicoSeguindoNomeGeograficoTopicoController = TextEditingController();
  final $c_localDoEventoTopicoController = TextEditingController();
  final $d_dataDeRealizacaoDoEventoTopicoController = TextEditingController();
  final $e_termoDeRelacaoTopicoController = TextEditingController();
  final $g_informacoesAdicionaisTopicoController = TextEditingController();
  final $v_subdivisaoDeFormaTopicoController = TextEditingController();
  final $x_subdivisaoGeralTopicoController = TextEditingController();
  final $y_subdivisaoCronologicaTopicoController = TextEditingController();
  final $z_subdivisaoGeograficaTopicoController = TextEditingController();
  final $0_numeroDeControleDoRegistroDeAutoridadeTopicoController = TextEditingController();
  final $2_fonteDoCabecalhoOuTermoTopicoController = TextEditingController();
  final $3_materialEspecificadoTopicoController = TextEditingController();
  final $4_relacaoTopicoController = TextEditingController();
  final $6_ligacaoTopicoController = TextEditingController();
  final $8_campoDeLigacaoENumeroDeSequenciaTopicoController = TextEditingController(); 

  // ENTRADA SECUNDÀRIA - NOME PESSOAL
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

  //CHECKBOX bool
  bool isCheck = false;

  void marcarCheck() {
    isCheck = !isCheck;
    notifyListeners();
  }

  // CÓDIGO DE ACERVO INICIAL
  final codigoAcervoController =  TextEditingController();
  final exemplarDataIDController =  TextEditingController();


  // CÓDIGO DE ACERVO INICIAL
  final campoItemController =  TextEditingController();
  
  var lstCamposItems = <Map<String, dynamic>>[];

  // OS 3 MÉTODOS ABAIXO NÂO ESTÂO SENDO UTILIZADOS 
  void addCampoItem(Map<String, dynamic> item) async {
    //verifica na lista em todas as posições, se já tem o valor da chave campo.
    var contem = lstCamposItems.any((element) => element.containsValue(item["Campo"]));
    var index = lstCamposItems.indexOf(lstCamposItems.lastWhere((element) => element.containsValue(item["Campo"]), orElse: () => {}));
    
    if (!contem) {
      //se não existir nenhum elemento ainda, utiliza o tamanho da lista []
      lstCamposItems.insert(index == -1 ? lstCamposItems.length : 0, item);
    } 

    if (contem && item["Campo"] != "100" && item["Campo"] != "240" && item["Campo"] != "245") {
      lstCamposItems.insert(index, item);
    }
    notifyListeners();
  }

  void removerItemCampo(int index) {
    lstCamposItems.removeAt(index);
    notifyListeners();
  }

  void limparListaCampoItem() {
    lstCamposItems.clear();
    notifyListeners();
  }

  // MÉTODOS [POST]
  Future<ClassGenericResponse> setLivro() async {
    if (formKey.currentState!.validate()) {
      carregando();
      var livro = await entradaLivroRepository.setLivro(
        codigoAcervo: codigoAcervoController.text.trim(),
        exemplarDataID: exemplarDataIDController.text.trim(),
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
          ilustracoes_18_21: ilustracoes_18_21DadosFixosLivrosController.text.trim(),
          publicoAlvo_22: publicoAlvo_22DadosFixosLivrosController.text.trim(),
          formaDoDocumento_23: formaDoDocumento_23DadosFixosLivrosController.text.trim(),
          naturezaDoConteudo_24_27: naturezaDoConteudo_24_27DadosFixosLivrosController.text.trim(),
          publicacaoGovernamental_28: publicacaoGovernamental_28DadosFixosLivrosController.text.trim(),
          publicacaoDeConferencia_29: publicacaoDeConferencia_29DadosFixosLivrosController.text.trim(),
          obraComemorativa_30: obraComemorativa_30DadosFixosLivrosController.text.trim(),
          indice_31: indice_31DadosFixosLivrosController.text.trim(),
          indefinido_32: indefinido_32DadosFixosLivrosController.text.trim(),
          formaLiteraria_33: formaLiteraria_33DadosFixosLivrosController.text.trim(),
          biografia_34: biografia_34DadosFixosLivrosController.text.trim(),
        ),
        isbn: ClassISBN_02X_09X_Data(
          etiqueta_020: etiquetaISBNController.text.trim(),
          primeiroIndicador: primeiroIndicadorISBNController.text.trim(),
          segundoIndicador: segundoIndicadorISBNController.text.trim(),
          $a_numeroISBN: $a_numeroDoISBNController.text.trim(),
          $c_modalidadesDeAquisicao: $c_modalidadesDeAquisicaoISBNController.text.trim(),
          $q_informacaoQualificadora: $q_informacaoQualificadoraISBNController.text.trim(),
          $z_isbnCanceladoOuInvalido: $z_isbnCanceladoOuInvalidoISBNController.text.trim(),
          $6_ligacao: $6_ligacaoISBNController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaISBNController.text.trim(),
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
        tituloOriginal: ClassTituloUniforme_20X_24X_Data(
          etiqueta_240: etiquetaTituloOriginalController.text.trim(),
          primeiroIndicador: primeiroIndicadorTituloOriginalController.text.trim(),
          segundoIndicador: segundoIndicadorTituloOriginalController.text.trim(),
          $a_tituloUniforme: $a_tituloUniformeTituloOriginalController.text.trim(),
          $d_dataDaAssinaturaTratado: $d_dataDaAssinaturaDoTratadoTituloOriginalController.text.trim(),
          $f_dataDaPublicacaoDoTrabalho: $f_dataDaPublicacaoDoTrabalhoTituloOriginalController.text.trim(),
          $g_informacoesAdicionais: $g_informacaoesAdicionaisTituloOriginalController.text.trim(),
          $h_meioDGM: $h_meioDGMTituloOriginalController.text.trim(),
          $k_subcabecalho: $k_subcabecalhoTituloOriginalController.text.trim(),
          $l_idiomaDaPublicacao: $l_idiomaDaPublicacaoTituloOriginalController.text.trim(),
          $m_meioDeExecucaoParaMusica: $m_meioDeExecucaoParaMusicaTituloOriginalController.text.trim(),
          $n_numeroDaSecaoDaPublicacao: $n_numeroDaSecaoDaPublicacaoTituloOriginalController.text.trim(),
          $o_arranjoMusical: $o_arranjoMusicalTituloOriginalController.text.trim(),
          $p_nomeDaSecaoDaPublicacao: $p_nomeDaSecaoDePublicacaoTituloOriginalController.text.trim(),
          $r_escalaMusical: $r_escalaMusicalTituloOriginalController.text.trim(),
          $s_versao: $s_versaoTituloOriginalController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade: $0_numeroDeControleDoRegistroDeAutoridadeTituloOriginalController.text.trim(),
          $6_ligacao: $6_ligacaoTituloOriginalController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaTituloOriginalController.text.trim(),
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
        edicao: ClassEdicao_25X_28X_Data(
          etiqueta_250: etiquetaEdicaoController.text.trim(),
          primeiroIndicador: primeiroIndicadorEdicaoController.text.trim(),
          segundoIndicador: segundoIndicadorEdicaoController.text.trim(),
          $a_edicao: $a_edicaoEdicaoController.text.trim(),
          $b_outrasInformacoesSobreEdicao: $b_outrasInformacoesSobreEdicaoEdicaoController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoEdicaoController.text.trim(),
          $6_ligacao: $6_ligacaoEdicaoController.text.trim(),
          $8_campoDeLigacaoENumerosDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaEdicaoController.text.trim(),
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
        topico: ClassTopico_6XX_Data(
          etiqueta_650: etiquetaTopicoController.text.trim(),
          primeiroIndicador: primeiroIndicadorTopicoController.text.trim(),
          segundoIndicador: segundoIndicadorTopicoController.text.trim(),
          $a_cabecalhoTopicoOuNomeGeografico: $a_cabecalhoTopicoOuNomeGeograficoTopicoController.text.trim(),
          $b_cabecalhoTopicoSeguindoNomeGeografico: $b_cabecalhoTopicoSeguindoNomeGeograficoTopicoController.text.trim(),
          $c_localDoEvento: $c_localDoEventoTopicoController.text.trim(),
          $d_dataDeRealizacaoDoEvento: $d_dataDeRealizacaoDoEventoTopicoController.text.trim(),
          $e_termoDeRelacao: $e_termoDeRelacaoTopicoController.text.trim(),
          $g_informacoesAdicionais: $g_informacoesAdicionaisTopicoController.text.trim(),
          $v_subdivisaoDeForma: $v_subdivisaoDeFormaTopicoController.text.trim(),
          $x_subdivisaoGeral: $x_subdivisaoGeralTopicoController.text.trim(),
          $y_subdivisaoCronologica: $y_subdivisaoCronologicaTopicoController.text.trim(),
          $z_subdivisaoGeografica: $z_subdivisaoGeograficaTopicoController.text.trim(),
          $0_numeroDeControleDoRegistroDeAutoridade: $0_numeroDeControleDoRegistroDeAutoridadeTopicoController.text.trim(),
          $2_fonteDoCabecalhoOuTermo: $2_fonteDoCabecalhoOuTermoTopicoController.text.trim(),
          $3_materialEspecificado: $3_materialEspecificadoTopicoController.text.trim(),
          $4_relacao: $4_relacaoTopicoController.text.trim(),
          $6_ligacao: $6_ligacaoTopicoController.text.trim(),
          $8_campoDeLigacaoENumeroDeSequencia: $8_campoDeLigacaoENumeroDeSequenciaTopicoController.text.trim(),
        ),
        nomePessoalSecundario: ClassNomePessoal_70X_75X_Data(
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
      );
      carregado();
      notifyListeners();
      return livro;
    } else {
      return ClassGenericResponse();
    }
  }

  Future<ClassGenericResponse> getCutter({required String nome}) async {
    try {
      carregando();
      var cutter = await entradaLivroRepository.getCutter(nome: nome);
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

  void limparControllersSetLivro() {
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

    // CAMPOS DE CONTROLE
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
    livros_008_DataIDDadosFixosLivrosController.clear();
    ilustracoes_18_21DadosFixosLivrosController.clear();
    publicoAlvo_22DadosFixosLivrosController.clear();
    formaDoDocumento_23DadosFixosLivrosController.clear();
    naturezaDoConteudo_24_27DadosFixosLivrosController.clear();
    publicacaoGovernamental_28DadosFixosLivrosController.clear();
    publicacaoDeConferencia_29DadosFixosLivrosController.clear();
    obraComemorativa_30DadosFixosLivrosController.clear();
    indice_31DadosFixosLivrosController.clear();
    indefinido_32DadosFixosLivrosController.clear();
    formaLiteraria_33DadosFixosLivrosController.clear();
    biografia_34DadosFixosLivrosController.clear();


    //ISBN
    etiquetaISBNController.clear();
    primeiroIndicadorISBNController.clear();
    segundoIndicadorISBNController.clear();
    $a_numeroDoISBNController.clear();
    $c_modalidadesDeAquisicaoISBNController.clear();
    $q_informacaoQualificadoraISBNController.clear();
    $z_isbnCanceladoOuInvalidoISBNController.clear();
    $6_ligacaoISBNController.clear();
    $8_campoDeLigacaoENumeroDeSequenciaISBNController.clear();

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

    // NOME PESSOAL
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

    // TÍTULO ORIGINAL
    etiquetaTituloOriginalController.clear();
    primeiroIndicadorTituloOriginalController.clear();
    segundoIndicadorTituloOriginalController.clear();
    $a_tituloUniformeTituloOriginalController.clear();
    $d_dataDaAssinaturaDoTratadoTituloOriginalController.clear();
    $f_dataDaPublicacaoDoTrabalhoTituloOriginalController.clear();
    $g_informacaoesAdicionaisTituloOriginalController.clear();
    $h_meioDGMTituloOriginalController.clear();
    $k_subcabecalhoTituloOriginalController.clear();
    $l_idiomaDaPublicacaoTituloOriginalController.clear();
    $m_meioDeExecucaoParaMusicaTituloOriginalController.clear();
    $n_numeroDaSecaoDaPublicacaoTituloOriginalController.clear();
    $o_arranjoMusicalTituloOriginalController.clear();
    $p_nomeDaSecaoDePublicacaoTituloOriginalController.clear();
    $r_escalaMusicalTituloOriginalController.clear();
    $s_versaoTituloOriginalController.clear();
    $0_numeroDeControleDoRegistroDeAutoridadeTituloOriginalController.clear();
    $6_ligacaoTituloOriginalController.clear();
    $8_campoDeLigacaoENumeroDeSequenciaTituloOriginalController.clear();

    // TITULO PRINCIPAL
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

    //EDIÇÃO
      etiquetaEdicaoController.clear();
      primeiroIndicadorEdicaoController.clear();
      segundoIndicadorEdicaoController.clear();
      $a_edicaoEdicaoController.clear();
      $b_outrasInformacoesSobreEdicaoEdicaoController.clear();
      $3_materialEspecificadoEdicaoController.clear();
      $6_ligacaoEdicaoController.clear();
      $8_campoDeLigacaoENumeroDeSequenciaEdicaoController.clear();

    //IMPRENTA
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

    //DESCRIÇÃO FISICA
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

    // ASSUNTOS: TÓPICO
    etiquetaTopicoController.clear();
    primeiroIndicadorTopicoController.clear(); 
    segundoIndicadorTopicoController.clear();
    $a_cabecalhoTopicoOuNomeGeograficoTopicoController.clear();
    $b_cabecalhoTopicoSeguindoNomeGeograficoTopicoController.clear();
    $c_localDoEventoTopicoController.clear();
    $d_dataDeRealizacaoDoEventoTopicoController.clear();
    $e_termoDeRelacaoTopicoController.clear();
    $g_informacoesAdicionaisTopicoController.clear();
    $v_subdivisaoDeFormaTopicoController.clear();
    $x_subdivisaoGeralTopicoController.clear();
    $y_subdivisaoCronologicaTopicoController.clear();
    $z_subdivisaoGeograficaTopicoController.clear();
    $0_numeroDeControleDoRegistroDeAutoridadeTopicoController.clear();
    $2_fonteDoCabecalhoOuTermoTopicoController.clear();
    $3_materialEspecificadoTopicoController.clear();
    $4_relacaoTopicoController.clear();
    $6_ligacaoTopicoController.clear();
    $8_campoDeLigacaoENumeroDeSequenciaTopicoController.clear(); 

    // ENTRADA SECUNDÀRIA - NOME PESSOAL
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
