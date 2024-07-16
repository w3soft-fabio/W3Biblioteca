// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';
class ClassLivroData {
  //LIVROSDATA
  int livrosDataID;
  int acervoDataID;
  int exemplarNumero;
  int exemplarDataID;
  String livroSituacao;
  String livroReservado;
  //LIDER
  int liderID;
  String etiqueta_000;
  String tamanhoDoRegistro_00_04;
  String statusDoRegistro_05;
  String tipoDeRegistro_06;
  String nivelBibliografico_07;
  String tipodeControle_08;
  String esquemaDeCodificacaoDeCaractere_09;
  String numeroDeIndicadores_10;
  String numeroDeSubcampos_11;
  String enderecoDeDados_12_16;
  String nivelDeCodificacao_17;
  String formaDeCatalogacaoDescritiva_18;
  String nivelDeRegistroDeRecurso_19;
  String tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20;
  String tamanhoDaPosicaoDoCaractereDeInicio_21;
  String tamanhoDaParteDefinidaParaImplementacao_22;
  String entradaNaoDefinida_23;
  //CAMPOS DE CONTROLE
  int camposDeControle_00X_DataID;
  String numeroDeControle_001;
  String codigoAgenciaCatalogadora_003;
  String dataEHoraUltimaAtualizacao_005;
  //LIVRO 006
  int livro_006_DataID;
  String formaDoMaterial_006;
  String ilustracoes_006;
  String publicoAlvo_006;
  String formaDoDocumento_006;
  String naturezaDoConteudo_006;
  String publicacaoOficial_006;
  String publicacaoDeConferencia_006;
  String coletaniaDeHomenagems_006;
  String indice_006;
  String indefinido_006;
  String formaLiteraria_006;
  String biografia_006;
  //CAMPOS FIXOS 008
  int todosOsMateriais_008_DataID;
  String etiqueta_008;
  String dataDeEntradaDoRegistroNoArquivo_00_05;
  String tipodeDataOuStatusDePublicacao_06;
  String data1_07_10;
  String data2_11_14;
  String lugarDePublicacaoProducaoExecucao_15_17;
  String tipoDeMaterial_18_34;
  String idiomaDoTextoDoDocumento_35_37;
  String registroModificado_38;
  String fonteDeCatalogacao_39;
  //LIVROS CAMPO FIXO 008
  int livros_008_DataID;
  String ilustracoes_18_21;
  String publicoAlvo_22;
  String formaDoDocumento_23;
  String naturezaDoConteudo_24_27;
  String publicacaoGovernamental_28;
  String publicacaoDeConferencia_29;
  String obraComemorativa_30;
  String indice_31;
  String indefinido_32;
  String formaLiteraria_33;
  String biografia_34;
  //ISBN
  int isbn_020_DataID;
  String etiqueta_020;
  String primeiroIndicador_020;
  String segundoIndicador_020;
  String $a_numeroISBN;
  String $c_modalidadesDeAquisicao;
  String $q_informacaoQualificadora;
  String $z_isbnCanceladoOuInvalido;
  String $6_ligacao_020;
  String $8_campoDeLigacaoENumeroDeSequencia_020;
  //FONTE DE CATALOGAÇÂO
  int fonteDeCatalogacao_040_DataID;
  String etiqueta_040;
  String primeiroIndicador_040;
  String segundoIndicador_040;
  String $a_codigoDaAgenciaCatalogadora;
  String $b_idiomaCatalogacao;
  String $c_agenciaQueTranscreveuORegistro;
  String $d_agenciaQueAlterouORegistro;
  String $e_fontesConvencionaisDedescricaoDeDados;
  String $6_ligacao_040;
  String $8_campoDeLigacaoENumeroDeSequencia_040;
  //CODIGO DO IDIOMA
  int codigoDoIdioma_041_DataID;
  String etiqueta_041;
  String primeiroIndicador_041;
  String segundoIndicador_041;
  String $a_codigoDoIdiomaDoTexto;
  String $b_codigoDoIdiomaDoResumo;
  String $d_codigoDoIdiomaDaMusica;
  String $e_codigoDoIdiomaDoLibreto;
  String $f_codigoDoIdiomaDoSumario;
  String $g_codigoDoIdiomaDoMaterialAdicional;
  String $h_codigoDoIdiomaDoDocumentoOriginal;
  String $j_codigoDoIdiomaDoSubtituloOuLegenda;
  String $k_codigoDoIdiomaDaTraducaoIntermediaria;
  String $m_codigoDoIdiomaOriginalDoMaterialAdicional;
  String $n_codigoDoIdiomaOriginalDoLibreto;
  String $2_fonteDoCodigo_041;
  String $6_ligacao_041;
  String $8_campoDeLigacaoENumeroDeSequencia_041;
  //CODIGO DA AREA GEOGRAFICA
  int codigoDaAreaGeografica_043_DataID;
  String etiqueta_043;
  String primeiroIndicador_043;
  String segundoIndicador_043;
  String $a_codigoAreaGeografica;
  String $b_codigoAreaGeograficaLocal;
  String $c_codigoISO;
  String $0_numeroDeControleDoRegistroDeAutoridade_043;
  String $2_fonteDoCodigo_043;
  String $6_ligacao_043;
  String $8_campoDeLigacaoENumeroDeSequencia_043;
  //CDU
  int numeroDeClassificacaoDecimalUniversal_080_DataID;
  String etiqueta_080;
  String primeiroIndicador_080;
  String segundoIndicador_080;
  String $a_numeroDeClassificacaoDecimalUniversal;
  String $b_numeroDoItem;
  String $x_subdivisaoAuxiliarComum;
  String $0_numeroDeControleDoRegistroDeAutoridades;
  String $2_numeroDeEdicao;
  String $6_ligacao_080;
  String $8_campoDeLigacaoENumeroDeSequencia_080;
  //CDD
  int numeroDeClassificacaoDeDewey_082_DataID;
  String etiqueta_082;
  String primeiroIndicador_082;
  String segundoIndicador_082;
  String $a_numeroDeClassificacao_082;
  String $b_numeroDoItem_082;
  String $m_designacaoPadraoOuOpcional_082;
  String $q_agenciaQueAtribuiONumeroDeClassificacao_082;
  String $2_numeroDaEdicao_082;
  String $6_ligacao_082;
  String $8_campoDeLigacaoENumeroDeSequencia_082;
  //NÚMERO DE CHAMADA LOCAL
  int numeroDeChamadaLocal_090_DataID;
  String etiqueta_090;
  String primeiroIndicador_090;
  String segundoIndicador_090;
  String $a_classificacao;
  String $b_numeroDeCutter;
  String $c_anoDePublicacao;
  String $d_tipoDeObra;
  String $8_unidadeCatalogadora;
  String siglaInstituicao;
  //NOME PESSOAL 100
  int nomePessoal_100_DataID;
  String etiqueta_100;
  String primeiroIndicador_100;
  String segundoIndicador_100;
  String $a_nomePessoal_100;
  String $b_algarismosRomanosQueSeguemPrenome;
  String $c_titulosEOutrasPalavrasAssociadasAoNome_100;
  String $d_datasAssociadasAoNome_100;
  String $e_termoDeRelacao_100;
  String $f_dataDaPublicacaoDoTrabalho_100;
  String $g_informacoesAdicionais_100;
  String $j_atributoQualificador;
  String $k_subcabecalho;
  String $l_idiomaDaPublicacao_100;
  String $n_numeroDaSecaoDaPublicacao_100;
  String $p_nomeDaSecaoDaPublicacao_100;
  String $q_formaCompletaDoNome_100;
  String $t_tituloDaPublicacao_100;
  String $u_afiliacao_100;
  String $0_numeroDeControleDoRegistroDeAutoridade_100;
  String $4_relacao_100;
  String $6_ligacao_100;
  String $8_campoDeLigacaoENumeroDeSequencia_100;
  //EVENTO 111
  int evento_111_DataID;
  String etiqueta_111;
  String primeiroIndicador_111;
  String segundoIndicador_111;
  String $a_nomeDoEventoOuLugar_111;
  String $c_localDeRealizacaoDoEvento_111;
  String $d_dataRealizacaoDoEvento_111;
  String $e_unidadesSubordinadas_111;
  String $f_dataDaPublicacaoDoTrabalho_111;
  String $g_informacoesAdicionais_111;
  String $j_termoDeRelacao_111;
  String $k_subcabecalho_111;
  String $l_idiomaDaPublicacao_111;
  String $n_numeroDaSecaoDoEvento_111;
  String $p_nomeDaSecaoDaPublicacao_111;
  String $q_nomeDoEventoSequindoONomeDaJurisdicao_111;
  String $t_tituloDaPublicacao_111;
  String $u_afiliacao_111;
  String $0_numeroDeControleDoRegistroDeAutoridade_111;
  String $4_relacao_111;
  String $6_ligacao_111;
  String $8_campoDeLigacaoENumeroDeSequencia_111;
  //TITULO UNIFORME/ORIGINAL
  int tituloUniforme_240_DataID;
  String etiqueta_240;
  String primeiroIndicador_240;
  String segundoIndicador_240;
  String $a_tituloUniforme;
  String $d_dataDaAssinaturaTratado;
  String $f_dataDaPublicacaoDoTrabalho_240;
  String $g_informacoesAdicionais_240;
  String $h_meioDGM_240;
  String $k_subcabecalho_240;
  String $l_idiomaDaPublicacao_240;
  String $m_meioDeExecucaoParaMusica;
  String $n_numeroDaSecaoDaPublicacao_240;
  String $o_arranjoMusical_240;
  String $p_nomeDaSecaoDaPublicacao_240;
  String $r_escalaMusical_240;
  String $s_versao_240;
  String $0_numeroDeControleDoRegistroDeAutoridade_240;
  String $6_ligacao_240;
  String $8_campoDeLigacaoENumeroDeSequencia_240;
  //TITULO PRINCIPAL
  int tituloPrincipal_245_DataID;
  String etiqueta_245;
  String primeiroIndicador_245;
  String segundoIndicador_245;
  String $a_tituloPrincipal;
  String $b_subtitulo;
  String $c_indicacaoDeResponsabilidade;
  String $f_datasDeAbrangencia;
  String $g_conjuntoDeDatas;
  String $h_meioDGM_245;
  String $k_formaDoMaterial;
  String $n_numeroDaSecaoDaPublicacao_245;
  String $p_nomeDaSecaoDaPublicacao_245;
  String $s_versao_245;
  String $6_ligacao_245;
  String $8_campoDeLigacaoENumeroDeSequencia_245;
  //FORMAS VARIADAS DO TITULO
  int formasVariadasDoTitulo_246_DataID;
  String etiqueta_246;
  String primeiroIndicador_246;
  String segundoIndicador_246;
  String $a_tituloPrincipal_246;
  String $b_subtitulo_246;
  String $f_designacaoDoVolumeENumeroDoFasciculo;
  String $g_informacoesAdicionais_246;
  String $h_meioDGM_246;
  String $i_visualizarTexto;
  String $n_numeroDaSecaoDaPublicacao_246;
  String $p_nomeDaSecaoDaPublicacao;
  String $5_codigoDaInstituicao;
  String $6_ligacao_246;
  String $8_campoDeLigacaoENumeroDeSequencia_246;
  //EDIÇÃO
  int edicao_250_DataID;
  String etiqueta_250;
  String primeiroIndicador_250;
  String segundoIndicador_250;
  String $a_edicao;
  String $b_outrasInformacoesSobreEdicao;
  String $3_materialEspecificado_250;
  String $6_ligacao_250;
  String $8_campoDeLigacaoENumerosDeSequencia_250;
  //IMPRENTA
  int imprenta_260_DataID;
  String etiqueta_260;
  String primeiroIndicador_260;
  String segundoIndicador_260;
  String $a_lugarDePublicacao;
  String $b_nomeDoEditor;
  String $c_dataDePublicacao;
  String $e_lugarDeFabricacao;
  String $f_nomeDoFabricante;
  String $g_dataDeFabricacao;
  String $3_materialEspecificado_260;
  String $6_ligacao_260;
  String $8_campoDeLigacaoENumeroDeSequencia_260;
  //DESCRIÇÃO FÍSICA
  int descricaoFisica_300_DataID;
  String etiqueta_300;
  String primeiroIndicador_300;
  String segundoIndicador_300;
  String $a_extensao;
  String $b_detalhesFisicosAdicionais;
  String $c_dimensoes;
  String $e_materialAdicional;
  String $f_tipoDeUnidade;
  String $g_tamanhoDaUnidade;
  String $3_materialEspecificado_300;
  String $6_ligacao_300;
  String $8_campoDeLigacaoENumeroDeSequencia_300;
  //INDICAÇÃO DE SÉRIE
  int indicacaoDeSeries_490_DataID;
  String etiqueta_490;
  String primeiroIndicador_490;
  String segundoIndicador_490;
  String $a_tituloDaSerie;
  String $l_numeroDeChamadaDaLC;
  String $v_numeroDoVolumeOuDesignacaoSequencialDaSerie;
  String $x_ISSN_490;
  String $3_materialEspecificado_490;
  String $6_ligacao_490;
  String $8_campoDeLigacaoENumeroDeSequencia_490;
  //NOTA GERAL
  int notaGeral_500_DataID;
  String etiqueta_500;
  String primeiroIndicador_500;
  String segundoIndicador_500;
  String $a_notaGeral;
  String $3_materialEspecificado_500;
  String $5_codigoDaInstituicao_500;
  String $6_ligacao_500;
  String $8_campoDeLigacaoENumeroDeSequencia_500;
  //NOTA DE BIBLIOGRAFIA
  int notaDeBibliografia_504_DataID;
  String etiqueta_504;
  String primeiroIndicador_504;
  String segundoIndicador_504;
  String $a_notaDeBibliografia;
  String $b_numeroDeReferencias;
  String $6_ligacao_504;
  String $8_campoDeLigacaoENumeroDeSequencia_504;
  //NOTA DE CONTEÚDO
  int notaDeConteudo_505_DataID;
  String etiqueta_505;
  String primeiroIndicador_505;
  String segundoIndicador_505;
  String $a_notaDeConteudo;
  String $g_informacoesAdicionais;
  String $r_indicacaoDeResposabilidade;
  String $t_titulo;
  String $u_URI;
  String $6_ligacao_505;
  String $8_campoDeLigacaoENumeroDeSequencia_505;
  //NOTA DE RESUMO
  int notaDeResumo_520_DataID;
  String etiqueta_520;
  String primeiroIndicador_520;
  String segundoIndicador_520;
  String $a_notaDeResumo;
  String $b_expansaoDaNotaDeResumo;
  String $c_agenciaDepositaria;
  String $u_URI_520;
  String $2_fonte_520;
  String $3_materialEspecificado_520;
  String $6_ligacao_520;
  String $8_campoDeLigacaoENumeroDeSequencia_520;
  //NOME PESSOAL - 600
  int nomePessoal_600_DataID;
  String etiqueta_600;
  String primeiroIndicador_600;
  String segundoIndicador_600;
  String $a_nomePessoal_600;
  String $b_algarismosRomanosQueSeguemOPronome_600;
  String $c_titulosEOutrasPalavras_600;
  String $d_datasAssociadasAoNome_600;
  String $e_termoDeRelacao_600;
  String $f_dataDaPublicacaoDoTrabalho_600;
  String $g_informacoesAdicionais_600;
  String $h_meioDGM_600;
  String $j_atributo_600;
  String $k_subcabecalho_600;
  String $l_idiomaDaPublicacao_600;
  String $m_meioDeExecucaoParaMusica_600;
  String $n_numeroDaSecaoDaPublicacao_600;
  String $o_ArranjoMusical_600;
  String $p_nomeDaSecaoDaPublicacao_600;
  String $q_formaCompletaDoNome_600;
  String $r_escalaMusical_600;
  String $s_versao_600;
  String $t_tituloDaPublicacao_600;
  String $u_afiliacao_600;
  String $v_subdivisaoDeForma_600;
  String $x_subdivisaoGeral_600;
  String $y_subdivisaoCronologica_600;
  String $z_subdivisaoGeografica_600;
  String $0_NumeroDeControleDoRegistroDeAutoridade_600;
  String $2_fonteDoCabecalhoOuTermo_600;
  String $3_materialEspecificado_600;
  String $4_relacao_600;
  String $6_ligacao_600;
  String $8_campoDeLigacaoENumeroDeSequencia_600;
  //ASSUNTO - TÓPICO
  int topico_650_DataID;
  String etiqueta_650;
  String primeiroIndicador_650;
  String segundoIndicador_650;
  String $a_cabecalhoTopicoOuNomeGeografico;
  String $b_cabecalhoTopicoSeguindoNomeGeografico;
  String $c_localDoEvento;
  String $d_dataDeRealizacaoDoEvento;
  String $e_termoDeRelacao_650;
  String $g_informacoesAdicionais_650;
  String $v_subdivisaoDeForma;
  String $x_subdivisaoGeral;
  String $y_subdivisaoCronologica;
  String $z_subdivisaoGeografica;
  String $0_numeroDeControleDoRegistroDeAutoridade_650;
  String $2_fonteDoCabecalhoOuTermo;
  String $3_materialEspecificado_650;
  String $4_relacao_650;
  String $6_ligacao_650;
  String $8_campoDeLigacaoENumeroDeSequencia_650;
  //NOME PESSOAL SECUNDÁRIO
  int nomePessoal_700_DataID;
  String etiqueta_700;
  String primeiroIndicador_700;
  String segundoIndicador_700;
  String $a_nomePessoal_700;
  String $b_algarismosRomanosQueSeguemOPrenome;
  String $c_titulosEOutrasPalavrasAssociadasAoNome_700;
  String $d_datasAssociadasAoNome_700;
  String $e_termoDeRelacao_700;
  String $f_dataDaPublicacaoDoTrabalho_700;
  String $g_informacoesAdicionais_700;
  String $h_meioDGM;
  String $i_informacoesSobreRelacoes;
  String $j_atributo;
  String $k_subcabecalhos;
  String $l_idiomaDaPublicacao_700;
  String $m_instrumentosMusicais;
  String $n_numeroDaSecaoDaPublicacao_700;
  String $o_arranjoMusical_700;
  String $p_nomeDaSecaoDaPublicacao_700;
  String $q_formaCompletaDoNome_700;
  String $r_escalaMusical_700;
  String $s_versao_700;
  String $t_tituloDaPublicacao_700;
  String $u_afiliacao_700;
  String $x_ISSN;
  String $0_numeroDeControleDoRegistroDeAutoridade_700;
  String $3_materialEspecificado_700;
  String $4_relacao_700;
  String $5_codigoDaInstituicao_700;
  String $6_ligacao_700;
  String $8_campoDeLigacaoENumeroDeSequencia_700;
  //ENTRADA DE IDIOMA ORIGINAL
  int entradaDeIdiomaOriginal_765_DataID;
  String etiqueta_765;
  String primeiroIndicador_765;
  String segundoIndicador_765;
  String $a_entradaPrincipal_765;
  String $b_edicao_765;
  String $c_informacaoQualificadora_765;
  String $d_lugarEditorEDataDePublicacao_765;
  String $g_partesRelacionadas_765;
  String $h_descricaoFisica_765;
  String $i_informacoesSobreRelacoes_765;
  String $k_dadosDaSerieDoDocumentoSelecionado_765;
  String $m_detalhesDoMaterialEspecificado_765;
  String $n_nota_765;
  String $o_outroIdentificadorDoDocumento_765;
  String $r_numeroDeRelatorio_765;
  String $s_tituloUniforme_765;
  String $t_titulo_765;
  String $u_standardTechnicalReportNumber_765;
  String $w_numeroDeControleDoRegistro_765;
  String $x_ISSN_765;
  String $y_designacaoCODEN_765;
  String $z_ISBN_765;
  String $4_relacao_765;
  String $6_ligacao_765;
  String $7_subcampoDeControle_765;
  String $8_campoDeLigacaoENumeroDeSequencia_765;
  //LOCALIZAÇÃO E ACESSO ELETRÔNICO
  int localizacaoEAcessoEletronico_856_DataID;
  String etiqueta_856;
  String primeiroIndicador_856;
  String segundoIndicador_856;
  String $a_nomeDoServidor;
  String $b_numeroDoAcesso;
  String $c_informacoesSobreCompactacao;
  String $d_caminho;
  String $f_nomeDoArquivoEletronico;
  String $h_username;
  String $i_instrucao;
  String $j_bitsPorSegundo;
  String $k_password;
  String $l_login;
  String $m_contatoParaObterAjuda;
  String $n_nomeDaLocalizacaoDoServidor;
  String $o_sistemaOperativo;
  String $p_porta;
  String $q_tipoDoFormatoEletronico;
  String $r_configuracao;
  String $s_tamanhoDoArquivo;
  String $t_emulacaoDeTerminal;
  String $u_identificadorUniformeDeRecursoURI;
  String $v_horarioDeAcesso;
  String $w_numeroDeControleDeUmRegistro;
  String $x_notaInterna;
  String $y_textoDoLink;
  String $z_notaDoPublico;
  String $2_metodoDeAcesso;
  String $3_materialEspecificado_856;
  String $6_ligacao_856;
  String $8_campoDeLigacaoENumeroDeSequencia_856;

  ClassLivroData({
    this.livrosDataID = 0,
    this.acervoDataID = 0,
    this.exemplarNumero = 0,
    this.exemplarDataID = 0,
    this.livroSituacao = '',
    this.livroReservado = '',
    this.liderID = 0,
    this.etiqueta_000 = '',
    this.tamanhoDoRegistro_00_04 = '',
    this.statusDoRegistro_05 = '',
    this.tipoDeRegistro_06 = '',
    this.nivelBibliografico_07 = '',
    this.tipodeControle_08 = '',
    this.esquemaDeCodificacaoDeCaractere_09 = '',
    this.numeroDeIndicadores_10 = '',
    this.numeroDeSubcampos_11 = '',
    this.enderecoDeDados_12_16 = '',
    this.nivelDeCodificacao_17 = '',
    this.formaDeCatalogacaoDescritiva_18 = '',
    this.nivelDeRegistroDeRecurso_19 = '',
    this.tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20 = '',
    this.tamanhoDaPosicaoDoCaractereDeInicio_21 = '',
    this.tamanhoDaParteDefinidaParaImplementacao_22 = '',
    this.entradaNaoDefinida_23 = '',
    this.camposDeControle_00X_DataID = 0,
    this.numeroDeControle_001 = '',
    this.codigoAgenciaCatalogadora_003 = '',
    this.dataEHoraUltimaAtualizacao_005 = '',
    this.livro_006_DataID = 0,
    this.formaDoMaterial_006 = '',
    this.ilustracoes_006 = '',
    this.publicoAlvo_006 = '',
    this.formaDoDocumento_006 = '',
    this.naturezaDoConteudo_006 = '',
    this.publicacaoOficial_006 = '',
    this.publicacaoDeConferencia_006 = '',
    this.coletaniaDeHomenagems_006 = '',
    this.indice_006 = '',
    this.indefinido_006 = '',
    this.formaLiteraria_006 = '',
    this.biografia_006 = '',
    this.todosOsMateriais_008_DataID = 0,
    this.etiqueta_008 = '',
    this.dataDeEntradaDoRegistroNoArquivo_00_05 = '',
    this.tipodeDataOuStatusDePublicacao_06 = '',
    this.data1_07_10 = '',
    this.data2_11_14 = '',
    this.lugarDePublicacaoProducaoExecucao_15_17 = '',
    this.tipoDeMaterial_18_34 = '',
    this.idiomaDoTextoDoDocumento_35_37 = '',
    this.registroModificado_38 = '',
    this.fonteDeCatalogacao_39 = '',
    this.livros_008_DataID = 0,
    this.ilustracoes_18_21 = '',
    this.publicoAlvo_22 = '',
    this.formaDoDocumento_23 = '',
    this.naturezaDoConteudo_24_27 = '',
    this.publicacaoGovernamental_28 = '',
    this.publicacaoDeConferencia_29 = '',
    this.obraComemorativa_30 = '',
    this.indice_31 = '',
    this.indefinido_32 = '',
    this.formaLiteraria_33 = '',
    this.biografia_34 = '',
    this.isbn_020_DataID = 0,
    this.etiqueta_020 = '',
    this.primeiroIndicador_020 = '',
    this.segundoIndicador_020 = '',
    this.$a_numeroISBN = '',
    this.$c_modalidadesDeAquisicao = '',
    this.$q_informacaoQualificadora = '',
    this.$z_isbnCanceladoOuInvalido = '',
    this.$6_ligacao_020 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_020 = '',
    this.fonteDeCatalogacao_040_DataID = 0,
    this.etiqueta_040 = '',
    this.primeiroIndicador_040 = '',
    this.segundoIndicador_040 = '',
    this.$a_codigoDaAgenciaCatalogadora = '',
    this.$b_idiomaCatalogacao = '',
    this.$c_agenciaQueTranscreveuORegistro = '',
    this.$d_agenciaQueAlterouORegistro = '',
    this.$e_fontesConvencionaisDedescricaoDeDados = '',
    this.$6_ligacao_040 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_040 = '',
    this.codigoDoIdioma_041_DataID = 0,
    this.etiqueta_041 = '',
    this.primeiroIndicador_041 = '',
    this.segundoIndicador_041 = '',
    this.$a_codigoDoIdiomaDoTexto = '',
    this.$b_codigoDoIdiomaDoResumo = '',
    this.$d_codigoDoIdiomaDaMusica = '',
    this.$e_codigoDoIdiomaDoLibreto = '',
    this.$f_codigoDoIdiomaDoSumario = '',
    this.$g_codigoDoIdiomaDoMaterialAdicional = '',
    this.$h_codigoDoIdiomaDoDocumentoOriginal = '',
    this.$j_codigoDoIdiomaDoSubtituloOuLegenda = '',
    this.$k_codigoDoIdiomaDaTraducaoIntermediaria = '',
    this.$m_codigoDoIdiomaOriginalDoMaterialAdicional = '',
    this.$n_codigoDoIdiomaOriginalDoLibreto = '',
    this.$2_fonteDoCodigo_041 = '',
    this.$6_ligacao_041 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_041 = '',
    this.codigoDaAreaGeografica_043_DataID = 0,
    this.etiqueta_043 = '',
    this.primeiroIndicador_043 = '',
    this.segundoIndicador_043 = '',
    this.$a_codigoAreaGeografica = '',
    this.$b_codigoAreaGeograficaLocal = '',
    this.$c_codigoISO = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_043 = '',
    this.$2_fonteDoCodigo_043 = '',
    this.$6_ligacao_043 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_043 = '',
    this.numeroDeClassificacaoDecimalUniversal_080_DataID = 0,
    this.etiqueta_080 = '',
    this.primeiroIndicador_080 = '',
    this.segundoIndicador_080 = '',
    this.$a_numeroDeClassificacaoDecimalUniversal = '',
    this.$b_numeroDoItem = '',
    this.$x_subdivisaoAuxiliarComum = '',
    this.$0_numeroDeControleDoRegistroDeAutoridades = '',
    this.$2_numeroDeEdicao = '',
    this.$6_ligacao_080 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_080 = '',
    this.numeroDeClassificacaoDeDewey_082_DataID = 0,
    this.etiqueta_082 = '',
    this.primeiroIndicador_082 = '',
    this.segundoIndicador_082 = '',
    this.$a_numeroDeClassificacao_082 = '',
    this.$b_numeroDoItem_082 = '',
    this.$m_designacaoPadraoOuOpcional_082 = '',
    this.$q_agenciaQueAtribuiONumeroDeClassificacao_082 = '',
    this.$2_numeroDaEdicao_082 = '',
    this.$6_ligacao_082 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_082 = '',
    this.numeroDeChamadaLocal_090_DataID = 0,
    this.etiqueta_090 = '',
    this.primeiroIndicador_090 = '',
    this.segundoIndicador_090 = '',
    this.$a_classificacao = '',
    this.$b_numeroDeCutter = '',
    this.$c_anoDePublicacao = '',
    this.$d_tipoDeObra = '',
    this.$8_unidadeCatalogadora = '',
    this.siglaInstituicao = '',
    this.nomePessoal_100_DataID = 0,
    this.etiqueta_100 = '',
    this.primeiroIndicador_100 = '',
    this.segundoIndicador_100 = '',
    this.$a_nomePessoal_100 = '',
    this.$b_algarismosRomanosQueSeguemPrenome = '',
    this.$c_titulosEOutrasPalavrasAssociadasAoNome_100 = '',
    this.$d_datasAssociadasAoNome_100 = '',
    this.$e_termoDeRelacao_100 = '',
    this.$f_dataDaPublicacaoDoTrabalho_100 = '',
    this.$g_informacoesAdicionais_100 = '',
    this.$j_atributoQualificador = '',
    this.$k_subcabecalho = '',
    this.$l_idiomaDaPublicacao_100 = '',
    this.$n_numeroDaSecaoDaPublicacao_100 = '',
    this.$p_nomeDaSecaoDaPublicacao_100 = '',
    this.$q_formaCompletaDoNome_100 = '',
    this.$t_tituloDaPublicacao_100 = '',
    this.$u_afiliacao_100 = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_100 = '',
    this.$4_relacao_100 = '',
    this.$6_ligacao_100 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_100 = '',
    this.evento_111_DataID = 0,
    this.etiqueta_111 = '0',
    this.primeiroIndicador_111 = '0',
    this.segundoIndicador_111 = '0',
    this.$a_nomeDoEventoOuLugar_111 = '0',
    this.$c_localDeRealizacaoDoEvento_111 = '0',
    this.$d_dataRealizacaoDoEvento_111 = '0',
    this.$e_unidadesSubordinadas_111 = '0',
    this.$f_dataDaPublicacaoDoTrabalho_111 = '0',
    this.$g_informacoesAdicionais_111 = '0',
    this.$j_termoDeRelacao_111 = '0',
    this.$k_subcabecalho_111 = '0',
    this.$l_idiomaDaPublicacao_111 = '0',
    this.$n_numeroDaSecaoDoEvento_111 = '0',
    this.$p_nomeDaSecaoDaPublicacao_111 = '0',
    this.$q_nomeDoEventoSequindoONomeDaJurisdicao_111 = '0',
    this.$t_tituloDaPublicacao_111 = '0',
    this.$u_afiliacao_111 = '0',
    this.$0_numeroDeControleDoRegistroDeAutoridade_111 = '0',
    this.$4_relacao_111 = '0',
    this.$6_ligacao_111 = '0',
    this.$8_campoDeLigacaoENumeroDeSequencia_111 = '0',
    this.tituloUniforme_240_DataID = 0,
    this.etiqueta_240 = '',
    this.primeiroIndicador_240 = '',
    this.segundoIndicador_240 = '',
    this.$a_tituloUniforme = '',
    this.$d_dataDaAssinaturaTratado = '',
    this.$f_dataDaPublicacaoDoTrabalho_240 = '',
    this.$g_informacoesAdicionais_240 = '',
    this.$h_meioDGM_240 = '',
    this.$k_subcabecalho_240 = '',
    this.$l_idiomaDaPublicacao_240 = '',
    this.$m_meioDeExecucaoParaMusica = '',
    this.$n_numeroDaSecaoDaPublicacao_240 = '',
    this.$o_arranjoMusical_240 = '',
    this.$p_nomeDaSecaoDaPublicacao_240 = '',
    this.$r_escalaMusical_240 = '',
    this.$s_versao_240 = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_240 = '',
    this.$6_ligacao_240 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_240 = '',
    this.tituloPrincipal_245_DataID = 0,
    this.etiqueta_245 = '',
    this.primeiroIndicador_245 = '',
    this.segundoIndicador_245 = '',
    this.$a_tituloPrincipal = '',
    this.$b_subtitulo = '',
    this.$c_indicacaoDeResponsabilidade = '',
    this.$f_datasDeAbrangencia = '',
    this.$g_conjuntoDeDatas = '',
    this.$h_meioDGM_245 = '',
    this.$k_formaDoMaterial = '',
    this.$n_numeroDaSecaoDaPublicacao_245 = '',
    this.$p_nomeDaSecaoDaPublicacao_245 = '',
    this.$s_versao_245 = '',
    this.$6_ligacao_245 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_245 = '',
    this.formasVariadasDoTitulo_246_DataID = 0,
    this.etiqueta_246 = '',
    this.primeiroIndicador_246 = '',
    this.segundoIndicador_246 = '',
    this.$a_tituloPrincipal_246 = '',
    this.$b_subtitulo_246 = '',
    this.$f_designacaoDoVolumeENumeroDoFasciculo = '',
    this.$g_informacoesAdicionais_246 = '',
    this.$h_meioDGM_246 = '',
    this.$i_visualizarTexto = '',
    this.$n_numeroDaSecaoDaPublicacao_246 = '',
    this.$p_nomeDaSecaoDaPublicacao = '',
    this.$5_codigoDaInstituicao = '',
    this.$6_ligacao_246 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_246 = '',
    this.edicao_250_DataID = 0,
    this.etiqueta_250 = '',
    this.primeiroIndicador_250 = '',
    this.segundoIndicador_250 = '',
    this.$a_edicao = '',
    this.$b_outrasInformacoesSobreEdicao = '',
    this.$3_materialEspecificado_250 = '',
    this.$6_ligacao_250 = '',
    this.$8_campoDeLigacaoENumerosDeSequencia_250 = '',
    this.imprenta_260_DataID = 0,
    this.etiqueta_260 = '',
    this.primeiroIndicador_260 = '',
    this.segundoIndicador_260 = '',
    this.$a_lugarDePublicacao = '',
    this.$b_nomeDoEditor = '',
    this.$c_dataDePublicacao = '',
    this.$e_lugarDeFabricacao = '',
    this.$f_nomeDoFabricante = '',
    this.$g_dataDeFabricacao = '',
    this.$3_materialEspecificado_260 = '',
    this.$6_ligacao_260 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_260 = '',
    this.descricaoFisica_300_DataID = 0,
    this.etiqueta_300 = '',
    this.primeiroIndicador_300 = '',
    this.segundoIndicador_300 = '',
    this.$a_extensao = '',
    this.$b_detalhesFisicosAdicionais = '',
    this.$c_dimensoes = '',
    this.$e_materialAdicional = '',
    this.$f_tipoDeUnidade = '',
    this.$g_tamanhoDaUnidade = '',
    this.$3_materialEspecificado_300 = '',
    this.$6_ligacao_300 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_300 = '',
    this.indicacaoDeSeries_490_DataID = 0,
    this.etiqueta_490 = '',
    this.primeiroIndicador_490 = '',
    this.segundoIndicador_490 = '',
    this.$a_tituloDaSerie = '',
    this.$l_numeroDeChamadaDaLC = '',
    this.$v_numeroDoVolumeOuDesignacaoSequencialDaSerie = '',
    this.$x_ISSN_490 = '',
    this.$3_materialEspecificado_490 = '',
    this.$6_ligacao_490 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_490 = '',
    this.notaGeral_500_DataID = 0,
    this.etiqueta_500 = '',
    this.primeiroIndicador_500 = '',
    this.segundoIndicador_500 = '',
    this.$a_notaGeral = '',
    this.$3_materialEspecificado_500 = '',
    this.$5_codigoDaInstituicao_500 = '',
    this.$6_ligacao_500 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_500 = '',
    this.notaDeBibliografia_504_DataID = 0,
    this.etiqueta_504 = '',
    this.primeiroIndicador_504 = '',
    this.segundoIndicador_504 = '',
    this.$a_notaDeBibliografia = '',
    this.$b_numeroDeReferencias = '',
    this.$6_ligacao_504 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_504 = '',
    this.notaDeConteudo_505_DataID = 0,
    this.etiqueta_505 = '',
    this.primeiroIndicador_505 = '',
    this.segundoIndicador_505 = '',
    this.$a_notaDeConteudo = '',
    this.$g_informacoesAdicionais = '',
    this.$r_indicacaoDeResposabilidade = '',
    this.$t_titulo = '',
    this.$u_URI = '',
    this.$6_ligacao_505 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_505 = '',
    this.notaDeResumo_520_DataID = 0,
    this.etiqueta_520 = '',
    this.primeiroIndicador_520 = '',
    this.segundoIndicador_520 = '',
    this.$a_notaDeResumo = '',
    this.$b_expansaoDaNotaDeResumo = '',
    this.$c_agenciaDepositaria = '',
    this.$u_URI_520 = '',
    this.$2_fonte_520 = '',
    this.$3_materialEspecificado_520 = '',
    this.$6_ligacao_520 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_520 = '',
    this.nomePessoal_600_DataID = 0,
    this.etiqueta_600 = '',
    this.primeiroIndicador_600 = '',
    this.segundoIndicador_600 = '',
    this.$a_nomePessoal_600 = '',
    this.$b_algarismosRomanosQueSeguemOPronome_600 = '',
    this.$c_titulosEOutrasPalavras_600 = '',
    this.$d_datasAssociadasAoNome_600 = '',
    this.$e_termoDeRelacao_600 = '',
    this.$f_dataDaPublicacaoDoTrabalho_600 = '',
    this.$g_informacoesAdicionais_600 = '',
    this.$h_meioDGM_600 = '',
    this.$j_atributo_600 = '',
    this.$k_subcabecalho_600 = '',
    this.$l_idiomaDaPublicacao_600 = '',
    this.$m_meioDeExecucaoParaMusica_600 = '',
    this.$n_numeroDaSecaoDaPublicacao_600 = '',
    this.$o_ArranjoMusical_600 = '',
    this.$p_nomeDaSecaoDaPublicacao_600 = '',
    this.$q_formaCompletaDoNome_600 = '',
    this.$r_escalaMusical_600 = '',
    this.$s_versao_600 = '',
    this.$t_tituloDaPublicacao_600 = '',
    this.$u_afiliacao_600 = '',
    this.$v_subdivisaoDeForma_600 = '',
    this.$x_subdivisaoGeral_600 = '',
    this.$y_subdivisaoCronologica_600 = '',
    this.$z_subdivisaoGeografica_600 = '',
    this.$0_NumeroDeControleDoRegistroDeAutoridade_600 = '',
    this.$2_fonteDoCabecalhoOuTermo_600 = '',
    this.$3_materialEspecificado_600 = '',
    this.$4_relacao_600 = '',
    this.$6_ligacao_600 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_600 = '',
    this.topico_650_DataID = 0,
    this.etiqueta_650 = '',
    this.primeiroIndicador_650 = '',
    this.segundoIndicador_650 = '',
    this.$a_cabecalhoTopicoOuNomeGeografico = '',
    this.$b_cabecalhoTopicoSeguindoNomeGeografico = '',
    this.$c_localDoEvento = '',
    this.$d_dataDeRealizacaoDoEvento = '',
    this.$e_termoDeRelacao_650 = '',
    this.$g_informacoesAdicionais_650 = '',
    this.$v_subdivisaoDeForma = '',
    this.$x_subdivisaoGeral = '',
    this.$y_subdivisaoCronologica = '',
    this.$z_subdivisaoGeografica = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_650 = '',
    this.$2_fonteDoCabecalhoOuTermo = '',
    this.$3_materialEspecificado_650 = '',
    this.$4_relacao_650 = '',
    this.$6_ligacao_650 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_650 = '',
    this.nomePessoal_700_DataID = 0,
    this.etiqueta_700 = '',
    this.primeiroIndicador_700 = '',
    this.segundoIndicador_700 = '',
    this.$a_nomePessoal_700 = '',
    this.$b_algarismosRomanosQueSeguemOPrenome = '',
    this.$c_titulosEOutrasPalavrasAssociadasAoNome_700 = '',
    this.$d_datasAssociadasAoNome_700 = '',
    this.$e_termoDeRelacao_700 = '',
    this.$f_dataDaPublicacaoDoTrabalho_700 = '',
    this.$g_informacoesAdicionais_700 = '',
    this.$h_meioDGM = '',
    this.$i_informacoesSobreRelacoes = '',
    this.$j_atributo = '',
    this.$k_subcabecalhos = '',
    this.$l_idiomaDaPublicacao_700 = '',
    this.$m_instrumentosMusicais = '',
    this.$n_numeroDaSecaoDaPublicacao_700 = '',
    this.$o_arranjoMusical_700 = '',
    this.$p_nomeDaSecaoDaPublicacao_700 = '',
    this.$q_formaCompletaDoNome_700 = '',
    this.$r_escalaMusical_700 = '',
    this.$s_versao_700 = '',
    this.$t_tituloDaPublicacao_700 = '',
    this.$u_afiliacao_700 = '',
    this.$x_ISSN = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_700 = '',
    this.$3_materialEspecificado_700 = '',
    this.$4_relacao_700 = '',
    this.$5_codigoDaInstituicao_700 = '',
    this.$6_ligacao_700 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_700 = '',
    this.entradaDeIdiomaOriginal_765_DataID = 0,
    this.etiqueta_765 = '',
    this.primeiroIndicador_765 = '',
    this.segundoIndicador_765 = '',
    this.$a_entradaPrincipal_765 = '',
    this.$b_edicao_765 = '',
    this.$c_informacaoQualificadora_765 = '',
    this.$d_lugarEditorEDataDePublicacao_765 = '',
    this.$g_partesRelacionadas_765 = '',
    this.$h_descricaoFisica_765 = '',
    this.$i_informacoesSobreRelacoes_765 = '',
    this.$k_dadosDaSerieDoDocumentoSelecionado_765 = '',
    this.$m_detalhesDoMaterialEspecificado_765 = '',
    this.$n_nota_765 = '',
    this.$o_outroIdentificadorDoDocumento_765 = '',
    this.$r_numeroDeRelatorio_765 = '',
    this.$s_tituloUniforme_765 = '',
    this.$t_titulo_765 = '',
    this.$u_standardTechnicalReportNumber_765 = '',
    this.$w_numeroDeControleDoRegistro_765 = '',
    this.$x_ISSN_765 = '',
    this.$y_designacaoCODEN_765 = '',
    this.$z_ISBN_765 = '',
    this.$4_relacao_765 = '',
    this.$6_ligacao_765 = '',
    this.$7_subcampoDeControle_765 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_765 = '',
    this.localizacaoEAcessoEletronico_856_DataID = 0,
    this.etiqueta_856 = '',
    this.primeiroIndicador_856 = '',
    this.segundoIndicador_856 = '',
    this.$a_nomeDoServidor = '',
    this.$b_numeroDoAcesso = '',
    this.$c_informacoesSobreCompactacao = '',
    this.$d_caminho = '',
    this.$f_nomeDoArquivoEletronico = '',
    this.$h_username = '',
    this.$i_instrucao = '',
    this.$j_bitsPorSegundo = '',
    this.$k_password = '',
    this.$l_login = '',
    this.$m_contatoParaObterAjuda = '',
    this.$n_nomeDaLocalizacaoDoServidor = '',
    this.$o_sistemaOperativo = '',
    this.$p_porta = '',
    this.$q_tipoDoFormatoEletronico = '',
    this.$r_configuracao = '',
    this.$s_tamanhoDoArquivo = '',
    this.$t_emulacaoDeTerminal = '',
    this.$u_identificadorUniformeDeRecursoURI = '',
    this.$v_horarioDeAcesso = '',
    this.$w_numeroDeControleDeUmRegistro = '',
    this.$x_notaInterna = '',
    this.$y_textoDoLink = '',
    this.$z_notaDoPublico = '',
    this.$2_metodoDeAcesso = '',
    this.$3_materialEspecificado_856 = '',
    this.$6_ligacao_856 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_856 = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livrosDataID': livrosDataID,
      'acervoDataID': acervoDataID,
      'exemplarNumero': exemplarNumero,
      'exemplarDataID': exemplarDataID,
      'livroSituacao': livroSituacao,
      'livroReservado': livroReservado,
      'liderID': liderID,
      'etiqueta_000': etiqueta_000,
      'tamanhoDoRegistro_00_04': tamanhoDoRegistro_00_04,
      'statusDoRegistro_05': statusDoRegistro_05,
      'tipoDeRegistro_06': tipoDeRegistro_06,
      'nivelBibliografico_07': nivelBibliografico_07,
      'tipodeControle_08': tipodeControle_08,
      'esquemaDeCodificacaoDeCaractere_09': esquemaDeCodificacaoDeCaractere_09,
      'numeroDeIndicadores_10': numeroDeIndicadores_10,
      'numeroDeSubcampos_11': numeroDeSubcampos_11,
      'enderecoDeDados_12_16': enderecoDeDados_12_16,
      'nivelDeCodificacao_17': nivelDeCodificacao_17,
      'formaDeCatalogacaoDescritiva_18': formaDeCatalogacaoDescritiva_18,
      'nivelDeRegistroDeRecurso_19': nivelDeRegistroDeRecurso_19,
      'tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20': tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20,
      'tamanhoDaPosicaoDoCaractereDeInicio_21': tamanhoDaPosicaoDoCaractereDeInicio_21,
      'tamanhoDaParteDefinidaParaImplementacao_22': tamanhoDaParteDefinidaParaImplementacao_22,
      'entradaNaoDefinida_23': entradaNaoDefinida_23,
      'camposDeControle_00X_DataID': camposDeControle_00X_DataID,
      'numeroDeControle_001': numeroDeControle_001,
      'codigoAgenciaCatalogadora_003': codigoAgenciaCatalogadora_003,
      'dataEHoraUltimaAtualizacao_005': dataEHoraUltimaAtualizacao_005,
      'livro_006_DataID': livro_006_DataID,
      'formaDoMaterial_006': formaDoMaterial_006,
      'ilustracoes_006': ilustracoes_006,
      'publicoAlvo_006': publicoAlvo_006,
      'formaDoDocumento_006': formaDoDocumento_006,
      'naturezaDoConteudo_006': naturezaDoConteudo_006,
      'publicacaoOficial_006': publicacaoOficial_006,
      'publicacaoDeConferencia_006': publicacaoDeConferencia_006,
      'coletaniaDeHomenagems_006': coletaniaDeHomenagems_006,
      'indice_006': indice_006 ,
      'indefinido_006': indefinido_006,
      'formaLiteraria_006': formaLiteraria_006,
      'biografia_006': biografia_006,
      'todosOsMateriais_008_DataID': todosOsMateriais_008_DataID,
      'etiqueta_008': etiqueta_008,
      'dataDeEntradaDoRegistroNoArquivo_00_05': dataDeEntradaDoRegistroNoArquivo_00_05,
      'tipodeDataOuStatusDePublicacao_06': tipodeDataOuStatusDePublicacao_06,
      'data1_07_10': data1_07_10,
      'data2_11_14': data2_11_14,
      'lugarDePublicacaoProducaoExecucao_15_17': lugarDePublicacaoProducaoExecucao_15_17,
      'tipoDeMaterial_18_34': tipoDeMaterial_18_34,
      'idiomaDoTextoDoDocumento_35_37': idiomaDoTextoDoDocumento_35_37,
      'registroModificado_38': registroModificado_38,
      'fonteDeCatalogacao_39': fonteDeCatalogacao_39,
      'livros_008_DataID': livros_008_DataID,
      'ilustracoes_18_21': ilustracoes_18_21,
      'publicoAlvo_22': publicoAlvo_22,
      'formaDoDocumento_23': formaDoDocumento_23,
      'naturezaDoConteudo_24_27': naturezaDoConteudo_24_27,
      'publicacaoGovernamental_28': publicacaoGovernamental_28,
      'publicacaoDeConferencia_29': publicacaoDeConferencia_29,
      'obraComemorativa_30': obraComemorativa_30,
      'indice_31': indice_31,
      'indefinido_32': indefinido_32,
      'formaLiteraria_33': formaLiteraria_33,
      'biografia_34': biografia_34,
      'isbn_020_DataID': isbn_020_DataID,
      'etiqueta_020': etiqueta_020,
      'primeiroIndicador_020': primeiroIndicador_020,
      'segundoIndicador_202': segundoIndicador_020,
      '\$a_numeroISBN': $a_numeroISBN,
      '\$c_modalidadesDeAquisicao': $c_modalidadesDeAquisicao,
      '\$q_informacaoQualificadora': $q_informacaoQualificadora,
      '\$z_isbnCanceladoOuInvalido': $z_isbnCanceladoOuInvalido,
      '\$6_ligacao_020': $6_ligacao_020,
      '\$8_campoDeLigacaoENumeroDeSequencia_020': $8_campoDeLigacaoENumeroDeSequencia_020,
      'fonteDeCatalogacao_040_DataID': fonteDeCatalogacao_040_DataID,
      'etiqueta_040': etiqueta_040,
      'primeiroIndicador_040': primeiroIndicador_040,
      'segundoIndicador_040': segundoIndicador_040,
      '\$a_codigoDaAgenciaCatalogadora': $a_codigoDaAgenciaCatalogadora,
      '\$b_idiomaCatalogacao': $b_idiomaCatalogacao,
      '\$c_agenciaQueTranscreveuORegistro': $c_agenciaQueTranscreveuORegistro,
      '\$d_agenciaQueAlterouORegistro': $d_agenciaQueAlterouORegistro,
      '\$e_fontesConvencionaisDedescricaoDeDados': $e_fontesConvencionaisDedescricaoDeDados,
      '\$6_ligacao_040': $6_ligacao_040,
      '\$8_campoDeLigacaoENumeroDeSequencia_040': $8_campoDeLigacaoENumeroDeSequencia_040,
      'codigoDoIdioma_041_DataID': codigoDoIdioma_041_DataID,
      'etiqueta_041': etiqueta_041,
      'primeiroIndicador_041': primeiroIndicador_041,
      'segundoIndicador_041': segundoIndicador_041,
      '\$a_codigoDoIdiomaDoTexto': $a_codigoDoIdiomaDoTexto,
      '\$b_codigoDoIdiomaDoResumo': $b_codigoDoIdiomaDoResumo,
      '\$d_codigoDoIdiomaDaMusica': $d_codigoDoIdiomaDaMusica,
      '\$e_codigoDoIdiomaDoLibreto': $e_codigoDoIdiomaDoLibreto,
      '\$f_codigoDoIdiomaDoSumario': $f_codigoDoIdiomaDoSumario,
      '\$g_codigoDoIdiomaDoMaterialAdicional': $g_codigoDoIdiomaDoMaterialAdicional,
      '\$h_codigoDoIdiomaDoDocumentoOriginal': $h_codigoDoIdiomaDoDocumentoOriginal,
      '\$j_codigoDoIdiomaDoSubtituloOuLegenda': $j_codigoDoIdiomaDoSubtituloOuLegenda,
      '\$k_codigoDoIdiomaDaTraducaoIntermediaria': $k_codigoDoIdiomaDaTraducaoIntermediaria,
      '\$m_codigoDoIdiomaOriginalDoMaterialAdicional': $m_codigoDoIdiomaOriginalDoMaterialAdicional,
      '\$n_codigoDoIdiomaOriginalDoLibreto': $n_codigoDoIdiomaOriginalDoLibreto,
      '\$2_fonteDoCodigo_041': $2_fonteDoCodigo_041,
      '\$6_ligacao_041': $6_ligacao_041,
      '\$8_campoDeLigacaoENumeroDeSequencia_041': $8_campoDeLigacaoENumeroDeSequencia_041,
      'codigoDaAreaGeografica_043_DataID': codigoDaAreaGeografica_043_DataID,
      'etiqueta_043': etiqueta_043,
      'primeiroIndicador_043': primeiroIndicador_043,
      'segundoIndicador_043': segundoIndicador_043,
      '\$a_codigoAreaGeografica': $a_codigoAreaGeografica,
      '\$b_codigoAreaGeograficaLocal': $b_codigoAreaGeograficaLocal,
      '\$c_codigoISO': $c_codigoISO,
      '\$0_numeroDeControleDoRegistroDeAutoridade_043': $0_numeroDeControleDoRegistroDeAutoridade_043,
      '\$2_fonteDoCodigo_043': $2_fonteDoCodigo_043,
      '\$6_ligacao_043': $6_ligacao_043,
      '\$8_campoDeLigacaoENumeroDeSequencia_043': $8_campoDeLigacaoENumeroDeSequencia_043,
      'numeroDeClassificacaoDeDewey_082_DataID': numeroDeClassificacaoDeDewey_082_DataID,
      'etiqueta_082': etiqueta_082,
      'primeiroIndicador_082': primeiroIndicador_082,
      'segundoIndicador_082': segundoIndicador_082,
      '\$a_numeroDeClassificacao_082': $a_numeroDeClassificacao_082,
      '\$b_numeroDoItem_082': $b_numeroDoItem_082,
      '\$m_designacaoPadraoOuOpcional_082': $m_designacaoPadraoOuOpcional_082,
      '\$q_agenciaQueAtribuiONumeroDeClassificacao_082': $q_agenciaQueAtribuiONumeroDeClassificacao_082,
      '\$2_numeroDaEdicao_082': $2_numeroDaEdicao_082,
      '\$6_ligacao_082': $6_ligacao_082,
      '\$8_campoDeLigacaoENumeroDeSequencia_082': $8_campoDeLigacaoENumeroDeSequencia_082,
      'numeroDeClassificacaoDecimalUniversal_080_DataID': numeroDeClassificacaoDecimalUniversal_080_DataID,
      'etiqueta_080': etiqueta_080,
      'primeiroIndicador_080': primeiroIndicador_080,
      'segundoIndicador_080': segundoIndicador_080,
      '\$a_numeroDeClassificacaoDecimalUniversal': $a_numeroDeClassificacaoDecimalUniversal,
      '\$b_numeroDoItem': $b_numeroDoItem,
      '\$x_subdivisaoAuxiliarComun': $x_subdivisaoAuxiliarComum,
      '\$0_numeroDeControleDoRegistroDeAutoridades': $0_numeroDeControleDoRegistroDeAutoridades,
      '\$2_numeroDeEdicao': $2_numeroDeEdicao,
      '\$6_ligacao_080': $6_ligacao_080,
      '\$8_campoDeLigacaoENumeroDeSequencia_080': $8_campoDeLigacaoENumeroDeSequencia_080,
      'numeroDeChamadaLocal_090_DataID': numeroDeChamadaLocal_090_DataID,
      'etiqueta_090': etiqueta_090,
      'primeiroIndicador_090': primeiroIndicador_090,
      'segundoIndicador_090': segundoIndicador_090,
      '\$a_classificacao': $a_classificacao,
      '\$b_numeroDeCutter': $b_numeroDeCutter,
      '\$c_anoDePublicacao': $c_anoDePublicacao,
      '\$d_tipoDeObra': $d_tipoDeObra,
      '\$8_unidadeCatalogadora': $8_unidadeCatalogadora,
      'siglaInstituicao': siglaInstituicao,
      'nomePessoal_100_DataID': nomePessoal_100_DataID,
      'etiqueta_100': etiqueta_100,
      'primeiroIndicador_100': primeiroIndicador_100,
      'segundoIndicador_100': segundoIndicador_100,
      '\$a_nomePessoal_100': $a_nomePessoal_100,
      '\$b_algarismosRomanosQueSeguemPrenome': $b_algarismosRomanosQueSeguemPrenome,
      '\$c_titulosEOutrasPalavrasAssociadasAoNome_100': $c_titulosEOutrasPalavrasAssociadasAoNome_100,
      '\$d_datasAssociadasAoNome_100': $d_datasAssociadasAoNome_100,
      '\$e_termoDeRelacao_100': $e_termoDeRelacao_100,
      '\$f_dataDaPublicacaoDoTrabalho_100': $f_dataDaPublicacaoDoTrabalho_100,
      '\$g_informacoesAdicionais_100': $g_informacoesAdicionais_100,
      '\$j_atributoQualificador': $j_atributoQualificador,
      '\$k_subcabecalho': $k_subcabecalho,
      '\$l_idiomaDaPublicacao_100': $l_idiomaDaPublicacao_100,
      '\$n_numeroDaSecaoDaPublicacao_100': $n_numeroDaSecaoDaPublicacao_100,
      '\$p_nomeDaSecaoDaPublicacao_100': $p_nomeDaSecaoDaPublicacao_100,
      '\$q_formaCompletaDoNome_100': $q_formaCompletaDoNome_100,
      '\$t_tituloDaPublicacao_100': $t_tituloDaPublicacao_100,
      '\$u_afiliacao_100': $u_afiliacao_100,
      '\$0_numeroDeControleDoRegistroDeAutoridade_100': $0_numeroDeControleDoRegistroDeAutoridade_100,
      '\$4_relacao_100': $4_relacao_100,
      '\$6_ligacao_100': $6_ligacao_100,
      '\$8_campoDeLigacaoENumeroDeSequencia_100': $8_campoDeLigacaoENumeroDeSequencia_100,
      'evento_111_DataID': evento_111_DataID,
      'etiqueta_111': etiqueta_111,
      'primeiroIndicador_111': primeiroIndicador_111,
      'segundoIndicador_111': segundoIndicador_111,
      '\$a_nomeDoEventoOuLugar_111': $a_nomeDoEventoOuLugar_111,
      '\$c_localDeRealizacaoDoEvento_111': $c_localDeRealizacaoDoEvento_111,
      '\$d_dataRealizacaoDoEvento_111': $d_dataRealizacaoDoEvento_111,
      '\$e_unidadesSubordinadas_111': $e_unidadesSubordinadas_111,
      '\$f_dataDaPublicacaoDoTrabalho_111': $f_dataDaPublicacaoDoTrabalho_111,
      '\$g_informacoesAdicionais_111': $g_informacoesAdicionais_111,
      '\$j_termoDeRelacao_111': $j_termoDeRelacao_111,
      '\$k_subcabecalho_111': $k_subcabecalho_111,
      '\$l_idiomaDaPublicacao_111': $l_idiomaDaPublicacao_111,
      '\$n_numeroDaSecaoDoEvento_111': $n_numeroDaSecaoDoEvento_111,
      '\$p_nomeDaSecaoDaPublicacao_111': $p_nomeDaSecaoDaPublicacao_111,
      '\$q_nomeDoEventoSequindoONomeDaJurisdicao_111': $q_nomeDoEventoSequindoONomeDaJurisdicao_111,
      '\$t_tituloDaPublicacao_111': $t_tituloDaPublicacao_111,
      '\$u_afiliacao_111': $u_afiliacao_111,
      '\$0_numeroDeControleDoRegistroDeAutoridade_111': $0_numeroDeControleDoRegistroDeAutoridade_111,
      '\$4_relacao_111': $4_relacao_111,
      '\$6_ligacao_111': $6_ligacao_111,
      '\$8_campoDeLigacaoENumeroDeSequencia_111': $8_campoDeLigacaoENumeroDeSequencia_111,
      'tituloUniforme_240_DataID': tituloUniforme_240_DataID,
      'etiqueta_240': etiqueta_240,
      'primeiroIndicador_240': primeiroIndicador_240,
      'segundoIndicador_240': segundoIndicador_240,
      '\$a_tituloUniforme': $a_tituloUniforme,
      '\$d_dataDaAssinaturaTratado': $d_dataDaAssinaturaTratado,
      '\$f_dataDaPublicacaoDoTrabalho_240': $f_dataDaPublicacaoDoTrabalho_240,
      '\$g_informacoesAdicionais_240': $g_informacoesAdicionais_240,
      '\$h_meioDGM_240': $h_meioDGM_240,
      '\$k_subcabecalho_240': $k_subcabecalho_240,
      '\$l_idiomaDaPublicacao_240': $l_idiomaDaPublicacao_240,
      '\$m_meioDeExecucaoParaMusica': $m_meioDeExecucaoParaMusica,
      '\$n_numeroDaSecaoDaPublicacao_240': $n_numeroDaSecaoDaPublicacao_240,
      '\$o_arranjoMusical_240': $o_arranjoMusical_240,
      '\$p_nomeDaSecaoDaPublicacao_240': $p_nomeDaSecaoDaPublicacao_240,
      '\$r_escalaMusical_240': $r_escalaMusical_240,
      '\$s_versao_240': $s_versao_240,
      '\$0_numeroDeControleDoRegistroDeAutoridade_240': $0_numeroDeControleDoRegistroDeAutoridade_240,
      '\$6_ligacao_240': $6_ligacao_240,
      '\$8_campoDeLigacaoENumeroDeSequencia_240': $8_campoDeLigacaoENumeroDeSequencia_240,
      'tituloPrincipal_245_DataID': tituloPrincipal_245_DataID,
      'etiqueta_245': etiqueta_245,
      'primeiroIndicador_245': primeiroIndicador_245,
      'segundoIndicador_245': segundoIndicador_245,
      '\$a_tituloPrincipal': $a_tituloPrincipal,
      '\$b_subtitulo': $b_subtitulo,
      '\$c_indicacaoDeResponsabilidade': $c_indicacaoDeResponsabilidade,
      '\$f_datasDeAbrangencia': $f_datasDeAbrangencia,
      '\$g_conjuntoDeDatas': $g_conjuntoDeDatas,
      '\$h_meioDGM_245': $h_meioDGM_245,
      '\$k_formaDoMaterial': $k_formaDoMaterial,
      '\$n_numeroDaSecaoDaPublicacao_245': $n_numeroDaSecaoDaPublicacao_245,
      '\$p_nomeDaSecaoDaPublicacao_245': $p_nomeDaSecaoDaPublicacao_245,
      '\$s_versao_245': $s_versao_245,
      '\$6_ligacao_245': $6_ligacao_245,
      '\$8_campoDeLigacaoENumeroDeSequencia_245': $8_campoDeLigacaoENumeroDeSequencia_245,
      'formasVariadasDoTitulo_246_DataID': formasVariadasDoTitulo_246_DataID,
      'etiqueta_246': etiqueta_246,
      'primeiroIndicador_246': primeiroIndicador_260,
      'segundoIndicador_246': segundoIndicador_246,
      '\$a_tituloPrincipal_246': $a_tituloPrincipal_246,
      '\$b_subtitulo_246': $b_subtitulo_246,
      '\$f_designacaoDoVolumeENumeroDoFasciculo': $f_designacaoDoVolumeENumeroDoFasciculo,
      '\$g_informacoesAdicionais_246': $g_informacoesAdicionais_246,
      '\$h_meioDGM_246': $h_meioDGM_246,
      '\$i_visualizarTexto': $i_visualizarTexto,
      '\$n_numeroDaSecaoDaPublicacao_246': $n_numeroDaSecaoDaPublicacao_246,
      '\$p_nomeDaSecaoDaPublicacao': $p_nomeDaSecaoDaPublicacao,
      '\$5_codigoDaInstituicao': $5_codigoDaInstituicao,
      '\$6_ligacao_246': $6_ligacao_246,
      '\$8_campoDeLigacaoENumeroDeSequencia_246': $8_campoDeLigacaoENumeroDeSequencia_246,
      'edicao_250_DataID': edicao_250_DataID,
      'etiqueta_250': etiqueta_250,
      'primeiroIndicador_250': primeiroIndicador_250,
      'segundoIndicador_250': segundoIndicador_250,
      '\$a_edicao': $a_edicao,
      '\$b_outrasInformacoesSobreEdicao': $b_outrasInformacoesSobreEdicao,
      '\$3_materialEspecificado_250': $3_materialEspecificado_250,
      '\$6_ligacao_250': $6_ligacao_250,
      '\$8_campoDeLigacaoENumerosDeSequencia_250': $8_campoDeLigacaoENumerosDeSequencia_250,
      'imprenta_260_DataID': imprenta_260_DataID,
      'etiqueta_260': etiqueta_260,
      'primeiroIndicador_260': primeiroIndicador_260,
      'segundoIndicador_260': segundoIndicador_260,
      '\$a_lugarDePublicacao': $a_lugarDePublicacao,
      '\$b_nomeDoEditor': $b_nomeDoEditor,
      '\$c_dataDePublicacao': $c_dataDePublicacao,
      '\$e_lugarDeFabricacao': $e_lugarDeFabricacao,
      '\$f_nomeDoFabricante': $f_nomeDoFabricante,
      '\$g_dataDeFabricacao': $g_dataDeFabricacao,
      '\$3_materialEspecificado_260': $3_materialEspecificado_260,
      '\$6_ligacao_260': $6_ligacao_260,
      '\$8_campoDeLigacaoENumeroDeSequencia_260': $8_campoDeLigacaoENumeroDeSequencia_260,
      'descricaoFisica_300_DataID': descricaoFisica_300_DataID,
      'etiqueta_300': etiqueta_300,
      'primeiroIndicador_300': primeiroIndicador_300,
      'segundoIndicador_300': segundoIndicador_300,
      '\$a_extensao': $a_extensao,
      '\$b_detalhesFisicosAdicionais': $b_detalhesFisicosAdicionais,
      '\$c_dimensoes': $c_dimensoes,
      '\$e_materialAdicional': $e_materialAdicional,
      '\$f_tipoDeUnidade': $f_tipoDeUnidade,
      '\$g_tamanhoDaUnidade': $g_tamanhoDaUnidade,
      '\$3_materialEspecificado_300': $3_materialEspecificado_300,
      '\$6_ligacao_300': $6_ligacao_300,
      '\$8_campoDeLigacaoENumeroDeSequencia_300': $8_campoDeLigacaoENumeroDeSequencia_300,
      'indicacaoDeSeries_490_DataID': 0,
      'etiqueta_490': etiqueta_490,
      'primeiroIndicador_490': primeiroIndicador_490,
      'segundoIndicador_490': segundoIndicador_490,
      '\$a_tituloDaSerie': $a_tituloDaSerie,
      '\$l_numeroDeChamadaDaLC': $l_numeroDeChamadaDaLC,
      '\$v_numeroDoVolumeOuDesignacaoSequencialDaSerie': $v_numeroDoVolumeOuDesignacaoSequencialDaSerie,
      '\$x_ISSN_490': $x_ISSN_490,
      '\$3_materialEspecificado_490': $3_materialEspecificado_490,
      '\$6_ligacao_490': $6_ligacao_490,
      '\$8_campoDeLigacaoENumeroDeSequencia_490': $8_campoDeLigacaoENumeroDeSequencia_490,
      'notageral_500_dataID': notaGeral_500_DataID,
      'etiqueta_500': etiqueta_500,
      'primeiroIndicador_500': primeiroIndicador_500,
      'segundoIndicador_500': segundoIndicador_500,
      '\$a_notaGeral': $a_notaGeral,
      '\$3_materialEspecificado_500': $3_materialEspecificado_500,
      '\$5_codigoDaInstituicao_500': $5_codigoDaInstituicao_500,
      '\$6_ligacao_500': $6_ligacao_500,
      '\$8_campoDeLigacaoENumeroDeSequencia_500': $8_campoDeLigacaoENumeroDeSequencia_500,
      'notaDeBibliografia_504_DataID': notaDeBibliografia_504_DataID,
      'etiqueta_504': etiqueta_504,
      'primeiroIndicador_504': primeiroIndicador_504,
      'segundoIndicador_504': segundoIndicador_504,
      '\$a_notaDeBibliografia': $a_notaDeBibliografia,
      '\$b_numeroDeReferencias': $b_numeroDeReferencias,
      '\$6_ligacao_504': $6_ligacao_504,
      '\$8_campoDeLigacaoENumeroDeSequencia_504': $8_campoDeLigacaoENumeroDeSequencia_504,
      'notadeconteudo_505_dataID': notaDeConteudo_505_DataID,
      'etiqueta_505': etiqueta_505,
      'primeiroIndicador_505': primeiroIndicador_505,
      'segundoIndicador_505': segundoIndicador_505,
      '\$a_notaDeConteudo': $a_notaDeConteudo,
      '\$g_informacoesAdicionais': $g_informacoesAdicionais,
      '\$r_indicacaoDeResposabilidade': $r_indicacaoDeResposabilidade,
      '\$t_titulo': $t_titulo,
      '\$u_URI': $u_URI,
      '\$6_ligacao_505': $6_ligacao_505,
      '\$8_campoDeLigacaoENumeroDeSequencia_505': $8_campoDeLigacaoENumeroDeSequencia_505,
      'notaDeResumo_520_DataID': 0,
      'etiqueta_520': etiqueta_520,
      'primeiroIndicador_520': primeiroIndicador_520,
      'segundoIndicador_520': segundoIndicador_520,
      '\$a_notaDeResumo': $a_notaDeResumo,
      '\$b_expansaoDaNotaDeResumo': $b_expansaoDaNotaDeResumo,
      '\$c_agenciaDepositaria': $c_agenciaDepositaria,
      '\$u_URI_520': $u_URI_520,
      '\$2_fonte_520': $2_fonte_520,
      '\$3_materialEspecificado_520': $3_materialEspecificado_520,
      '\$6_ligacao_520': $6_ligacao_520,
      '\$8_campoDeLigacaoENumeroDeSequencia_520': $8_campoDeLigacaoENumeroDeSequencia_520,
      'nomePessoal_600_DataID': nomePessoal_600_DataID,
      'etiqueta_600': etiqueta_600,
      'primeiroIndicador_600': primeiroIndicador_600,
      'segundoIndicador_600': segundoIndicador_600,
      '\$a_nomePessoal_600': $a_nomePessoal_600,
      '\$b_algarismosRomanosQueSeguemOPronome_600': $b_algarismosRomanosQueSeguemOPronome_600,
      '\$c_titulosEOutrasPalavras_600': $c_titulosEOutrasPalavras_600,
      '\$d_datasAssociadasAoNome_600': $d_datasAssociadasAoNome_600,
      '\$e_termoDeRelacao_600': $e_termoDeRelacao_600,
      '\$f_dataDaPublicacaoDoTrabalho_600': $f_dataDaPublicacaoDoTrabalho_600,
      '\$g_informacoesAdicionais_600': $g_informacoesAdicionais_600,
      '\$h_meioDGM_600': $h_meioDGM_600,
      '\$j_atributo_600': $j_atributo_600,
      '\$k_subcabecalho_600': $k_subcabecalho_600,
      '\$l_idiomaDaPublicacao_600': $l_idiomaDaPublicacao_600,
      '\$m_meioDeExecucaoParaMusica_600': $m_meioDeExecucaoParaMusica_600,
      '\$n_numeroDaSecaoDaPublicacao_600': $n_numeroDaSecaoDaPublicacao_600,
      '\$o_ArranjoMusical_600': $o_ArranjoMusical_600,
      '\$p_nomeDaSecaoDaPublicacao_600': $p_nomeDaSecaoDaPublicacao_600,
      '\$q_formaCompletaDoNome_600': $q_formaCompletaDoNome_600,
      '\$r_escalaMusical_600': $r_escalaMusical_600,
      '\$s_versao_600': $s_versao_600,
      '\$t_tituloDaPublicacao_600': $t_tituloDaPublicacao_600,
      '\$u_afiliacao_600': $u_afiliacao_600,
      '\$v_subdivisaoDeForma_600': $v_subdivisaoDeForma_600,
      '\$x_subdivisaoGeral_600': $x_subdivisaoGeral_600,
      '\$y_subdivisaoCronologica_600': $y_subdivisaoCronologica_600,
      '\$z_subdivisaoGeografica_600': $z_subdivisaoGeografica_600,
      '\$0_NumeroDeControleDoRegistroDeAutoridade_600': $0_NumeroDeControleDoRegistroDeAutoridade_600,
      '\$2_fonteDoCabecalhoOuTermo_600': $2_fonteDoCabecalhoOuTermo_600,
      '\$3_materialEspecificado_600': $3_materialEspecificado_600,
      '\$4_relacao_600': $4_relacao_600,
      '\$6_ligacao_600': $6_ligacao_600,
      '\$8_campoDeLigacaoENumeroDeSequencia_600': $8_campoDeLigacaoENumeroDeSequencia_600,
      'topico_650_DataID': topico_650_DataID,
      'etiqueta_650': etiqueta_650,
      'primeiroIndicador_650': primeiroIndicador_650,
      'segundoIndicador_650': segundoIndicador_650,
      '\$a_cabecalhoTopicoOuNomeGeografico': $a_cabecalhoTopicoOuNomeGeografico,
      '\$b_cabecalhoTopicoSeguindoNomeGeografico': $b_cabecalhoTopicoSeguindoNomeGeografico,
      '\$c_localDoEvento': $c_localDoEvento,
      '\$d_dataDeRealizacaoDoEvento': $d_dataDeRealizacaoDoEvento,
      '\$e_termoDeRelacao_650': $e_termoDeRelacao_650,
      '\$g_informacoesAdicionais_650': $g_informacoesAdicionais_650,
      '\$v_subdivisaoDeForma': $v_subdivisaoDeForma,
      '\$x_subdivisaoGeral': $x_subdivisaoGeral,
      '\$y_subdivisaoCronologica': $y_subdivisaoCronologica,
      '\$z_subdivisaoGeografica': $z_subdivisaoGeografica,
      '\$0_numeroDeControleDoRegistroDeAutoridade_650': $0_numeroDeControleDoRegistroDeAutoridade_650,
      '\$2_fonteDoCabecalhoOuTermo': $2_fonteDoCabecalhoOuTermo,
      '\$3_materialEspecificado_650': $3_materialEspecificado_650,
      '\$4_relacao_650': $4_relacao_650,
      '\$6_ligacao_650': $6_ligacao_650,
      '\$8_campoDeLigacaoENumeroDeSequencia_650': $8_campoDeLigacaoENumeroDeSequencia_650,
      'nomePessoal_700_DataID': nomePessoal_700_DataID,
      'etiqueta_700': etiqueta_700,
      'primeiroIndicador_700': primeiroIndicador_700,
      'segundoIndicador_700': segundoIndicador_700,
      '\$a_nomePessoal': $a_nomePessoal_700,
      '\$b_algarismosRomanosQueSeguemOPrenome': $b_algarismosRomanosQueSeguemOPrenome,
      '\$c_titulosEOutrasPalavrasAssociadasAoNome_700': $c_titulosEOutrasPalavrasAssociadasAoNome_700,
      '\$d_datasAssociadasAoNome_700': $d_datasAssociadasAoNome_700,
      '\$e_termoDeRelacao_700': $e_termoDeRelacao_700,
      '\$f_dataDaPublicacaoDoTrabalho_700': $f_dataDaPublicacaoDoTrabalho_700,
      '\$g_informacoesAdicionais_700': $g_informacoesAdicionais_700,
      '\$h_meioDGM': $h_meioDGM,
      '\$i_informacoesSobreRelacoes': $i_informacoesSobreRelacoes,
      '\$j_atributo': $j_atributo,
      '\$k_subcabecalhos': $k_subcabecalhos,
      '\$l_idiomaDaPublicacao_700': $l_idiomaDaPublicacao_700,
      '\$m_instrumentosMusicais': $m_instrumentosMusicais,
      '\$n_numeroDaSecaoDaPublicacao_700': $n_numeroDaSecaoDaPublicacao_700,
      '\$o_arranjoMusical_700': $o_arranjoMusical_700,
      '\$p_nomeDaSecaoDaPublicacao_700': $p_nomeDaSecaoDaPublicacao_700,
      '\$q_formaCompletaDoNome_700': $q_formaCompletaDoNome_700,
      '\$r_escalaMusical_700': $r_escalaMusical_700,
      '\$s_versao_700': $s_versao_700,
      '\$t_tituloDaPublicacao_700': $t_tituloDaPublicacao_700,
      '\$u_afiliacao_700': $u_afiliacao_700,
      '\$x_ISSN': $x_ISSN,
      '\$0_numeroDeControleDoRegistroDeAutoridade_700': $0_numeroDeControleDoRegistroDeAutoridade_700,
      '\$3_materialEspecificado_700': $3_materialEspecificado_700,
      '\$4_relacao_700': $4_relacao_700,
      '\$5_codigoDaInstituicao_700': $5_codigoDaInstituicao_700,
      '\$6_ligacao_700': $6_ligacao_700,
      '\$8_campoDeLigacaoENumeroDeSequencia_700': $8_campoDeLigacaoENumeroDeSequencia_700,
      'entradaDeIdiomaOriginal_765_DataID': entradaDeIdiomaOriginal_765_DataID,
      'etiqueta_765': etiqueta_765,
      'primeiroIndicador_765': primeiroIndicador_765,
      'segundoIndicador_765': segundoIndicador_765,
      '\$a_entradaPrincipal_765': $a_entradaPrincipal_765,
      '\$b_edicao_765': $b_edicao_765,
      '\$c_informacaoQualificadora_765': $c_informacaoQualificadora_765,
      '\$d_lugarEditorEDataDePublicacao_765': $d_lugarEditorEDataDePublicacao_765,
      '\$g_partesRelacionadas_765': $g_partesRelacionadas_765,
      '\$h_descricaoFisica_765': $h_descricaoFisica_765,
      '\$i_informacoesSobreRelacoes_765': $i_informacoesSobreRelacoes_765,
      '\$k_dadosDaSerieDoDocumentoSelecionado_765': $k_dadosDaSerieDoDocumentoSelecionado_765,
      '\$m_detalhesDoMaterialEspecificado_765': $m_detalhesDoMaterialEspecificado_765,
      '\$n_nota_765': $n_nota_765,
      '\$o_outroIdentificadorDoDocumento_765': $o_outroIdentificadorDoDocumento_765,
      '\$r_numeroDeRelatorio_765': $r_numeroDeRelatorio_765,
      '\$s_tituloUniforme_765': $s_tituloUniforme_765,
      '\$t_titulo_765': $t_titulo_765,
      '\$u_standardTechnicalReportNumber_765': $u_standardTechnicalReportNumber_765,
      '\$w_numeroDeControleDoRegistro_765': $w_numeroDeControleDoRegistro_765,
      '\$x_ISSN_765': $x_ISSN_765,
      '\$y_designacaoCODEN_765': $y_designacaoCODEN_765,
      '\$z_ISBN_765': $z_ISBN_765,
      '\$4_relacao_765': $4_relacao_765,
      '\$6_ligacao_765': $6_ligacao_765,
      '\$7_subcampoDeControle_765': $7_subcampoDeControle_765,
      '\$8_campoDeLigacaoENumeroDeSequencia_765': $8_campoDeLigacaoENumeroDeSequencia_765,
      'localizacaoEAcessoEletronico_856_DataID': localizacaoEAcessoEletronico_856_DataID,
      'etiqueta_856': etiqueta_856,
      'primeiroIndicador_856': primeiroIndicador_856,
      'segundoIndicador_856': segundoIndicador_856,
      '\$a_nomeDoServidor': $a_nomeDoServidor,
      '\$b_numeroDoAcesso': $b_numeroDoAcesso,
      '\$c_informacoesSobreCompactacao': $c_informacoesSobreCompactacao,
      '\$d_caminho': $d_caminho,
      '\$f_nomeDoArquivoEletronico': $f_nomeDoArquivoEletronico,
      '\$h_username': $h_username,
      '\$i_instrucao': $i_instrucao,
      '\$j_bitsPorSegundo': $j_bitsPorSegundo,
      '\$k_password': $k_password,
      '\$l_login': $l_login,
      '\$m_contatoParaObterAjuda': $m_contatoParaObterAjuda,
      '\$n_nomeDaLocalizacaoDoServidor': $n_nomeDaLocalizacaoDoServidor,
      '\$o_sistemaOperativo': $o_sistemaOperativo,
      '\$p_porta': $p_porta,
      '\$q_tipoDoFormatoEletronico': $q_tipoDoFormatoEletronico,
      '\$r_configuracao': $r_configuracao,
      '\$s_tamanhoDoArquivo': $s_tamanhoDoArquivo,
      '\$t_emulacaoDeTerminal': $t_emulacaoDeTerminal,
      '\$u_identificadorUniformeDeRecursoURI': $u_identificadorUniformeDeRecursoURI,
      '\$v_horarioDeAcesso': $v_horarioDeAcesso,
      '\$w_numeroDeControleDeUmRegistro': $w_numeroDeControleDeUmRegistro,
      '\$x_notaInterna': $x_notaInterna,
      '\$y_textoDoLink': $y_textoDoLink,
      '\$z_notaDoPublico': $z_notaDoPublico,
      '\$2_metodoDeAcesso': $2_metodoDeAcesso,
      '\$3_materialEspecificado_856': $3_materialEspecificado_856,
      '\$6_ligacao_856': $6_ligacao_856,
      '\$8_campoDeLigacaoENumeroDeSequencia_856': $8_campoDeLigacaoENumeroDeSequencia_856,
    };
  }

  factory ClassLivroData.fromMap(Map<String, dynamic> map) {
    return ClassLivroData(
      livrosDataID: (map["livrosDataID"] ?? 0) as int,
      acervoDataID: (map["acervoDataID"] ?? 0) as int,
      exemplarNumero: (map["exemplarNumero"] ?? 0) as int,
      exemplarDataID: (map["exemplarDataID"] ?? 0) as int,
      livroSituacao: (map["livroSituacao"] ?? '') as String,
      livroReservado: (map["livroReservado"] ?? '') as String,
      liderID: (map["liderID"] ?? 0) as int,
      etiqueta_000: (map["etiqueta_000"] ?? '') as String,
      tamanhoDoRegistro_00_04: (map["tamanhoDoRegistro_00_04"] ?? '') as String,
      statusDoRegistro_05: (map["statusDoRegistro_05"] ?? '') as String,
      tipoDeRegistro_06: (map["tipoDeRegistro_06"] ?? '') as String,
      nivelBibliografico_07: (map["nivelBibliografico_07"] ?? '') as String,
      tipodeControle_08: (map["tipodeControle_08"] ?? '') as String,
      esquemaDeCodificacaoDeCaractere_09: (map["esquemaDeCodificacaoDeCaractere_09"] ?? '') as String,
      numeroDeIndicadores_10: (map["numeroDeIndicadores_10"] ?? '') as String,
      numeroDeSubcampos_11: (map["numeroDeSubcampos_11"] ?? '') as String,
      enderecoDeDados_12_16: (map["enderecoDeDados_12_16"] ?? '') as String,
      nivelDeCodificacao_17: (map["nivelDeCodificacao_17"] ?? '') as String,
      formaDeCatalogacaoDescritiva_18: (map["formaDeCatalogacaoDescritiva_18"] ?? '') as String,
      nivelDeRegistroDeRecurso_19: (map["nivelDeRegistroDeRecurso_19"] ?? '') as String,
      tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20: (map["tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20"] ?? '')     as String,
      tamanhoDaPosicaoDoCaractereDeInicio_21: (map["tamanhoDaPosicaoDoCaractereDeInicio_21"] ?? '') as String,
      tamanhoDaParteDefinidaParaImplementacao_22: (map["tamanhoDaParteDefinidaParaImplementacao_22"] ?? '') as String,
      entradaNaoDefinida_23: (map["entradaNaoDefinida_23"] ?? '') as String,
      camposDeControle_00X_DataID: (map["camposDeControle_00X_DataID"] ?? 0) as int,
      numeroDeControle_001: (map["numeroDeControle_001"] ?? '') as String,
      codigoAgenciaCatalogadora_003: (map["codigoAgenciaCatalogadora_003"] ?? '') as String,
      dataEHoraUltimaAtualizacao_005: (map["dataEHoraUltimaAtualizacao_005"] ?? '') as String,
      livro_006_DataID: (map["livro_006_DataID"] ?? 0) as int,
      formaDoMaterial_006: (map["formaDoMaterial_006"] ?? '') as String,
      ilustracoes_006: (map["ilustracoes_006"] ?? '') as String,
      publicoAlvo_006: (map["publicoAlvo_006"] ?? '') as String,
      formaDoDocumento_006: (map["formaDoDocumento_006"] ?? '') as String,
      naturezaDoConteudo_006: (map["naturezaDoConteudo_006"] ?? '') as String,
      publicacaoOficial_006: (map["publicacaoOficial_006"] ?? '') as String,
      publicacaoDeConferencia_006: (map["publicacaoDeConferencia_006"] ?? '') as String,
      coletaniaDeHomenagems_006: (map["coletaniaDeHomenagems_006"] ?? '') as String,
      indice_006: (map["indice_006"] ?? '') as String,
      indefinido_006: (map["indefinido_006"] ?? '') as String,
      formaLiteraria_006: (map["formaLiteraria_006"] ?? '') as String,
      biografia_006: (map["biografia_006"] ?? '') as String,
      todosOsMateriais_008_DataID: (map["todosOsMateriais_008_DataID"] ?? 0) as int,
      etiqueta_008: (map["etiqueta_008"] ?? '') as String,
      dataDeEntradaDoRegistroNoArquivo_00_05: (map["dataDeEntradaDoRegistroNoArquivo_00_05"] ?? '') as String,
      tipodeDataOuStatusDePublicacao_06: (map["tipodeDataOuStatusDePublicacao_06"] ?? '') as String,
      data1_07_10: (map["data1_07_10"] ?? '') as String,
      data2_11_14: (map["data2_11_14"] ?? '') as String,
      lugarDePublicacaoProducaoExecucao_15_17: (map["lugarDePublicacaoProducaoExecucao_15_17"] ?? '') as String,
      tipoDeMaterial_18_34: (map["tipoDeMaterial_18_34"] ?? '') as String,
      idiomaDoTextoDoDocumento_35_37: (map["idiomaDoTextoDoDocumento_35_37"] ?? '') as String,
      registroModificado_38: (map["registroModificado_38"] ?? '') as String,
      fonteDeCatalogacao_39: (map["fonteDeCatalogacao_39"] ?? '') as String,
      livros_008_DataID: (map["livros_008_DataID"] ?? 0) as int,
      ilustracoes_18_21: (map["ilustracoes_18_21"] ?? '') as String,
      publicoAlvo_22: (map["publicoAlvo_22"] ?? '') as String,
      formaDoDocumento_23: (map["formaDoDocumento_23"] ?? '') as String,
      naturezaDoConteudo_24_27: (map["naturezaDoConteudo_24_27"] ?? '') as String,
      publicacaoGovernamental_28: (map["publicacaoGovernamental_28"] ?? '') as String,
      publicacaoDeConferencia_29: (map["publicacaoDeConferencia_29"] ?? '') as String,
      obraComemorativa_30: (map["obraComemorativa_30"] ?? '') as String,
      indice_31: (map["indice_31"] ?? '') as String,
      indefinido_32: (map["indefinido_32"] ?? '') as String,
      formaLiteraria_33: (map["formaLiteraria_33"] ?? '') as String,
      biografia_34: (map["biografia_34"] ?? '') as String,
      isbn_020_DataID: (map["isbn_020_DataID"] ?? 0) as int,
      etiqueta_020: (map["etiqueta_020"] ?? '') as String,
      primeiroIndicador_020: (map["primeiroIndicador_020"] ?? '') as String,
      segundoIndicador_020: (map["segundoIndicador_020"] ?? '') as String,
      $a_numeroISBN: (map["\$a_numeroISBN"] ?? '') as String,
      $c_modalidadesDeAquisicao: (map["\$c_modalidadesDeAquisicao"] ?? '') as String,
      $q_informacaoQualificadora: (map["\$q_informacaoQualificadora"] ?? '') as String,
      $z_isbnCanceladoOuInvalido: (map["\$z_isbnCanceladoOuInvalido"] ?? '') as String,
      $6_ligacao_020: (map["\$6_ligacao_020"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_020: (map["\$8_campoDeLigacaoENumeroDeSequencia_020"] ?? '') as String,
      fonteDeCatalogacao_040_DataID: (map["fonteDeCatalogacao_040_DataID"] ?? 0) as int,
      etiqueta_040: (map["etiqueta_040"] ?? '') as String,
      primeiroIndicador_040: (map["primeiroIndicador_040"] ?? '') as String,
      segundoIndicador_040: (map["segundoIndicador_040"] ?? '') as String,
      $a_codigoDaAgenciaCatalogadora: (map["\$a_codigoDaAgenciaCatalogadora"] ?? '') as String,
      $b_idiomaCatalogacao: (map["\$b_idiomaCatalogacao"] ?? '') as String,
      $c_agenciaQueTranscreveuORegistro: (map["\$c_agenciaQueTranscreveuORegistro"] ?? '') as String,
      $d_agenciaQueAlterouORegistro: (map["\$d_agenciaQueAlterouORegistro"] ?? '') as String,
      $e_fontesConvencionaisDedescricaoDeDados: (map["\$e_fontesConvencionaisDedescricaoDeDados"] ?? '') as String,
      $6_ligacao_040: (map["\$6_ligacao_040"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_040: (map["\$8_campoDeLigacaoENumeroDeSequencia_040"] ?? '') as String,
      codigoDoIdioma_041_DataID: (map["codigoDoIdioma_041_DataID"] ?? 0) as int,
      etiqueta_041: (map["etiqueta_041"] ?? '') as String,
      primeiroIndicador_041: (map["primeiroIndicador_041"] ?? '') as String,
      segundoIndicador_041: (map["segundoIndicador_041"] ?? '') as String,
      $a_codigoDoIdiomaDoTexto: (map["\$a_codigoDoIdiomaDoTexto"] ?? '') as String,
      $b_codigoDoIdiomaDoResumo: (map["\$b_codigoDoIdiomaDoResumo"] ?? '') as String,
      $d_codigoDoIdiomaDaMusica: (map["\$d_codigoDoIdiomaDaMusica"] ?? '') as String,
      $e_codigoDoIdiomaDoLibreto: (map["\$e_codigoDoIdiomaDoLibreto"] ?? '') as String,
      $f_codigoDoIdiomaDoSumario: (map["\$f_codigoDoIdiomaDoSumario"] ?? '') as String,
      $g_codigoDoIdiomaDoMaterialAdicional: (map["\$g_codigoDoIdiomaDoMaterialAdicional"] ?? '') as String,
      $h_codigoDoIdiomaDoDocumentoOriginal: (map["\$h_codigoDoIdiomaDoDocumentoOriginal"] ?? '') as String,
      $j_codigoDoIdiomaDoSubtituloOuLegenda: (map["\$j_codigoDoIdiomaDoSubtituloOuLegenda"] ?? '') as String,
      $k_codigoDoIdiomaDaTraducaoIntermediaria: (map["\$k_codigoDoIdiomaDaTraducaoIntermediaria"] ?? '') as String,
      $m_codigoDoIdiomaOriginalDoMaterialAdicional: (map["\$m_codigoDoIdiomaOriginalDoMaterialAdicional"] ?? '') as String,
      $n_codigoDoIdiomaOriginalDoLibreto: (map["\$n_codigoDoIdiomaOriginalDoLibreto"] ?? '') as String,
      $2_fonteDoCodigo_041: (map["\$2_fonteDoCodigo_041"] ?? '') as String,
      $6_ligacao_041: (map["\$6_ligacao_041"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_041: (map["\$8_campoDeLigacaoENumeroDeSequencia_041"] ?? '') as String,
      codigoDaAreaGeografica_043_DataID: (map["codigoDaAreaGeografica_043_DataID"] ?? 0) as int,
      etiqueta_043: (map["etiqueta_043"] ?? '') as String,
      primeiroIndicador_043: (map["primeiroIndicador_043"] ?? '') as String,
      segundoIndicador_043: (map["segundoIndicador_043"] ?? '') as String,
      $a_codigoAreaGeografica: (map["\$a_codigoAreaGeografica"] ?? '') as String,
      $b_codigoAreaGeograficaLocal: (map["\$b_codigoAreaGeograficaLocal"] ?? '') as String,
      $c_codigoISO: (map["\$c_codigoISO"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_043: (map["\$0_numeroDeControleDoRegistroDeAutoridade_043"] ?? '') as String,
      $2_fonteDoCodigo_043: (map["\$2_fonteDoCodigo_043"] ?? '') as String,
      $6_ligacao_043: (map["\$6_ligacao_043"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_043: (map["\$8_campoDeLigacaoENumeroDeSequencia_043"] ?? '') as String,
      numeroDeClassificacaoDecimalUniversal_080_DataID: (map["numeroDeClassificacaoDecimalUniversal_080_DataID"] ?? 0) as int,
      etiqueta_080: (map["etiqueta_080"] ?? '') as String,
      primeiroIndicador_080: (map["primeiroIndicador_080"] ?? '') as String,
      segundoIndicador_080: (map["segundoIndicador_080"] ?? '') as String,
      $a_numeroDeClassificacaoDecimalUniversal: (map["\$a_numeroDeClassificacaoDecimalUniversal"] ?? '') as String,
      $b_numeroDoItem: (map["\$b_numeroDoItem"] ?? '') as String,
      $x_subdivisaoAuxiliarComum: (map["\$x_subdivisaoAuxiliarComun"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridades: (map["\$0_numeroDeControleDoRegistroDeAutoridades"] ?? '') as String,
      $2_numeroDeEdicao: (map["\$2_numeroDeEdicao"] ?? '') as String,
      $6_ligacao_080: (map["\$6_ligacao_080"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_080: (map["\$8_campoDeLigacaoENumeroDeSequencia_080"] ?? '') as String,
      numeroDeClassificacaoDeDewey_082_DataID: (map["numeroDeClassificacaoDeDewey_082_DataID_082"] ?? 0) as int,
      etiqueta_082: (map["etiqueta_082"] ?? '') as String,
      primeiroIndicador_082: (map["primeiroIndicador_082"] ?? '') as String,
      segundoIndicador_082: (map["segundoIndicador_082"] ?? '') as String,
      $a_numeroDeClassificacao_082: (map["\$a_numeroDeClassificacao_082"] ?? '') as String,
      $b_numeroDoItem_082: (map["\$b_numeroDoItem_082"] ?? '') as String,
      $m_designacaoPadraoOuOpcional_082: (map["\$m_designacaoPadraoOuOpcional_082"] ?? '') as String,
      $q_agenciaQueAtribuiONumeroDeClassificacao_082: (map["\$q_agenciaQueAtribuiONumeroDeClassificacao_082"] ?? '') as String,
      $2_numeroDaEdicao_082: (map["\$2_numeroDaEdicao_082"] ?? '') as String,
      $6_ligacao_082: (map["\$6_ligacao_082"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_082: (map["\$8_campoDeLigacaoENumeroDeSequencia_082"] ?? '') as String,
      numeroDeChamadaLocal_090_DataID: (map["numeroDeChamadaLocal_090_DataID"] ?? 0) as int,
      etiqueta_090: (map["etiqueta_090"] ?? '') as String,
      primeiroIndicador_090: (map["primeiroIndicador_090"] ?? '') as String,
      segundoIndicador_090: (map["segundoIndicador_090"] ?? '') as String,
      $a_classificacao: (map["\$a_classificacao"] ?? '') as String,
      $b_numeroDeCutter: (map["\$b_numeroDeCutter"] ?? '') as String,
      $c_anoDePublicacao: (map["\$c_anoDePublicacao"] ?? '') as String,
      $d_tipoDeObra: (map["\$d_tipoDeObra"] ?? '') as String,
      $8_unidadeCatalogadora: (map["\$8_unidadeCatalogadora"] ?? '') as String,
      siglaInstituicao: (map["siglaInstituicao"] ?? '') as String,
      nomePessoal_100_DataID: (map["nomePessoal_100_DataID"] ?? 0) as int,
      etiqueta_100: (map["etiqueta_100"] ?? '') as String,
      primeiroIndicador_100: (map["primeiroIndicador_100"] ?? '') as String,
      segundoIndicador_100: (map["segundoIndicador_100"] ?? '') as String,
      $a_nomePessoal_100: (map["\$a_nomePessoal_100"] ?? '') as String,
      $b_algarismosRomanosQueSeguemPrenome: (map["\$b_algarismosRomanosQueSeguemPrenome"] ?? '') as String,
      $c_titulosEOutrasPalavrasAssociadasAoNome_100: (map["\$c_titulosEOutrasPalavrasAssociadasAoNome_100"] ?? '')     as String,
      $d_datasAssociadasAoNome_100: (map["\$d_datasAssociadasAoNome_100"] ?? '') as String,
      $e_termoDeRelacao_100: (map["\$e_termoDeRelacao_100"] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_100: (map["\$f_dataDaPublicacaoDoTrabalho_100"] ?? '') as String,
      $g_informacoesAdicionais_100: (map["\$g_informacoesAdicionais_100"] ?? '') as String,
      $j_atributoQualificador: (map["\$j_atributoQualificador"] ?? '') as String,
      $k_subcabecalho: (map["\$k_subcabecalho"] ?? '') as String,
      $l_idiomaDaPublicacao_100: (map["\$l_idiomaDaPublicacao_100"] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_100: (map["\$n_numeroDaSecaoDaPublicacao_100"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_100: (map["\$p_nomeDaSecaoDaPublicacao_100"] ?? '') as String,
      $q_formaCompletaDoNome_100: (map["\$q_formaCompletaDoNome_100"] ?? '') as String,
      $t_tituloDaPublicacao_100: (map["\$t_tituloDaPublicacao_100"] ?? '') as String,
      $u_afiliacao_100: (map["\$u_afiliacao_100"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_100: (map["\$0_numeroDeControleDoRegistroDeAutoridade_100"] ?? '')     as String,
      $4_relacao_100: (map["\$4_relacao_100"] ?? '') as String,
      $6_ligacao_100: (map["\$6_ligacao_100"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_100: (map["\$8_campoDeLigacaoENumeroDeSequencia_100"] ?? '') as String,
      evento_111_DataID: (map["evento_111_DataID"] ?? 0) as int,
      etiqueta_111: (map["etiqueta_111"] ?? '') as String,
      primeiroIndicador_111: (map["primeiroIndicador_111"] ?? '') as String,
      segundoIndicador_111: (map["segundoIndicador_111"] ?? '') as String,
      $a_nomeDoEventoOuLugar_111: (map["\$a_nomeDoEventoOuLugar_111"] ?? '') as String,
      $c_localDeRealizacaoDoEvento_111: (map["\$c_localDeRealizacaoDoEvento_111"] ?? '') as String,
      $d_dataRealizacaoDoEvento_111: (map["\$d_dataRealizacaoDoEvento_111"] ?? '') as String,
      $e_unidadesSubordinadas_111: (map["\$e_unidadesSubordinadas_111"] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_111: (map["\$f_dataDaPublicacaoDoTrabalho_111"] ?? '') as String,
      $g_informacoesAdicionais_111: (map["\$g_informacoesAdicionais_111"] ?? '') as String,
      $j_termoDeRelacao_111: (map["\$j_termoDeRelacao_111"] ?? '') as String,
      $k_subcabecalho_111: (map["\$k_subcabecalho_111"] ?? '') as String,
      $l_idiomaDaPublicacao_111: (map["\$l_idiomaDaPublicacao_111"] ?? '') as String,
      $n_numeroDaSecaoDoEvento_111: (map["\$n_numeroDaSecaoDoEvento_111"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_111: (map["\$p_nomeDaSecaoDaPublicacao_111"] ?? '') as String,
      $q_nomeDoEventoSequindoONomeDaJurisdicao_111: (map["\$q_nomeDoEventoSequindoONomeDaJurisdicao_111"] ?? '') as String,
      $t_tituloDaPublicacao_111: (map["\$t_tituloDaPublicacao_111"] ?? '') as String,
      $u_afiliacao_111: (map["\$u_afiliacao_111"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_111: (map["\$0_numeroDeControleDoRegistroDeAutoridade_111"] ?? '') as String,
      $4_relacao_111: (map["\$4_relacao_111"] ?? '') as String,
      $6_ligacao_111: (map["\$6_ligacao_111"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_111: (map["\$8_campoDeLigacaoENumeroDeSequencia_111"] ?? '') as String,
      tituloUniforme_240_DataID: (map["tituloUniforme_240_DataID"] ?? 0) as int,
      etiqueta_240: (map["etiqueta_240"] ?? '') as String,
      primeiroIndicador_240: (map["primeiroIndicador_240"] ?? '') as String,
      segundoIndicador_240: (map["segundoIndicador_240"] ?? '') as String,
      $a_tituloUniforme: (map["\$a_tituloUniforme"] ?? '') as String,
      $d_dataDaAssinaturaTratado: (map["\$d_dataDaAssinaturaTratado"] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_240: (map["\$f_dataDaPublicacaoDoTrabalho_240"] ?? '') as String,
      $g_informacoesAdicionais_240: (map["\$g_informacoesAdicionais_240"] ?? '') as String,
      $h_meioDGM_240: (map["\$h_meioDGM_240"] ?? '') as String,
      $k_subcabecalho_240: (map["\$k_subcabecalho_240"] ?? '') as String,
      $l_idiomaDaPublicacao_240: (map["\$l_idiomaDaPublicacao_240"] ?? '') as String,
      $m_meioDeExecucaoParaMusica: (map["\$m_meioDeExecucaoParaMusica"] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_240: (map["\$n_numeroDaSecaoDaPublicacao_240"] ?? '') as String,
      $o_arranjoMusical_240: (map["\$o_arranjoMusical_240"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_240: (map["\$p_nomeDaSecaoDaPublicacao_240"] ?? '') as String,
      $r_escalaMusical_240: (map["\$r_escalaMusical_240"] ?? '') as String,
      $s_versao_240: (map["\$s_versao_240"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_240: (map["\$0_numeroDeControleDoRegistroDeAutoridade_240"] ?? '')     as String,
      $6_ligacao_240: (map["\$6_ligacao_240"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_240: (map["\$8_campoDeLigacaoENumeroDeSequencia_240"] ?? '') as String,
      tituloPrincipal_245_DataID: (map["tituloPrincipal_245_DataID"] ?? 0) as int,
      etiqueta_245: (map["etiqueta_245"] ?? '') as String,
      primeiroIndicador_245: (map["primeiroIndicador_245"] ?? '') as String,
      segundoIndicador_245: (map["segundoIndicador_245"] ?? '') as String,
      $a_tituloPrincipal: (map["\$a_tituloPrincipal"] ?? '') as String,
      $b_subtitulo: (map["\$b_subtitulo"] ?? '') as String,
      $c_indicacaoDeResponsabilidade: (map["\$c_indicacaoDeResponsabilidade"] ?? '') as String,
      $f_datasDeAbrangencia: (map["\$f_datasDeAbrangencia"] ?? '') as String,
      $g_conjuntoDeDatas: (map["\$g_conjuntoDeDatas"] ?? '') as String,
      $h_meioDGM_245: (map["\$h_meioDGM_245"] ?? '') as String,
      $k_formaDoMaterial: (map["\$k_formaDoMaterial"] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_245: (map["\$n_numeroDaSecaoDaPublicacao_245"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_245: (map["\$p_nomeDaSecaoDaPublicacao_245"] ?? '') as String,
      $s_versao_245: (map["\$s_versao_245"] ?? '') as String,
      $6_ligacao_245: (map["\$6_ligacao_245"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_245: (map["\$8_campoDeLigacaoENumeroDeSequencia_245"] ?? '') as String,
      formasVariadasDoTitulo_246_DataID: (map["formasVariadasDoTitulo_246_DataID"] ?? 0) as int,
      etiqueta_246: (map["etiqueta_246"] ?? '') as String,
      primeiroIndicador_246: (map["primeiroIndicador_246"] ?? '') as String,
      segundoIndicador_246: (map["segundoIndicador_246"] ?? '') as String,
      $a_tituloPrincipal_246: (map["\$a_tituloPrincipal_246"] ?? '') as String,
      $b_subtitulo_246: (map["\$b_subtitulo_246"] ?? '') as String,
      $f_designacaoDoVolumeENumeroDoFasciculo: (map["\$f_designacaoDoVolumeENumeroDoFasciculo"] ?? '') as String,
      $g_informacoesAdicionais_246: (map["\$g_informacoesAdicionais_246"] ?? '') as String,
      $h_meioDGM_246: (map["\$h_meioDGM_246"] ?? '') as String,
      $i_visualizarTexto: (map["\$i_visualizarTexto"] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_246: (map["\$n_numeroDaSecaoDaPublicacao_246"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao: (map["\$p_nomeDaSecaoDaPublicacao"] ?? '') as String,
      $5_codigoDaInstituicao: (map["\$5_codigoDaInstituicao"] ?? '') as String,
      $6_ligacao_246: (map["\$6_ligacao_246"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_246: (map["\$8_campoDeLigacaoENumeroDeSequencia_246"] ?? '') as String,
      edicao_250_DataID: (map["edicao_250_DataID"] ?? 0) as int,
      etiqueta_250: (map["etiqueta_250"] ?? '') as String,
      primeiroIndicador_250: (map["primeiroIndicador_250"] ?? '') as String,
      segundoIndicador_250: (map["segundoIndicador_250"] ?? '') as String,
      $a_edicao: (map["\$a_edicao"] ?? '') as String,
      $b_outrasInformacoesSobreEdicao: (map["\$b_outrasInformacoesSobreEdicao"] ?? '') as String,
      $3_materialEspecificado_250: (map["\$3_materialEspecificado_250"] ?? '') as String,
      $6_ligacao_250: (map["\$6_ligacao_250"] ?? '') as String,
      $8_campoDeLigacaoENumerosDeSequencia_250: (map["\$8_campoDeLigacaoENumerosDeSequencia_250"] ?? '') as String,
      imprenta_260_DataID: (map["imprenta_260_DataID"] ?? 0) as int,
      etiqueta_260: (map["etiqueta_260"] ?? '') as String,
      primeiroIndicador_260: (map["primeiroIndicador_260"] ?? '') as String,
      segundoIndicador_260: (map["segundoIndicador_260"] ?? '') as String,
      $a_lugarDePublicacao: (map["\$a_lugarDePublicacao"] ?? '') as String,
      $b_nomeDoEditor: (map["\$b_nomeDoEditor"] ?? '') as String,
      $c_dataDePublicacao: (map["\$c_dataDePublicacao"] ?? '') as String,
      $e_lugarDeFabricacao: (map["\$e_lugarDeFabricacao"] ?? '') as String,
      $f_nomeDoFabricante: (map["\$f_nomeDoFabricante"] ?? '') as String,
      $g_dataDeFabricacao: (map["\$g_dataDeFabricacao"] ?? '') as String,
      $3_materialEspecificado_260: (map["\$3_materialEspecificado_260"] ?? '') as String,
      $6_ligacao_260: (map["\$6_ligacao_260"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_260: (map["\$8_campoDeLigacaoENumeroDeSequencia_260"] ?? '') as String,
      descricaoFisica_300_DataID: (map["descricaoFisica_300_DataID"] ?? 0) as int,
      etiqueta_300: (map["etiqueta_300"] ?? '') as String,
      primeiroIndicador_300: (map["primeiroIndicador_300"] ?? '') as String,
      segundoIndicador_300: (map["segundoIndicador_300"] ?? '') as String,
      $a_extensao: (map["\$a_extensao"] ?? '') as String,
      $b_detalhesFisicosAdicionais: (map["\$b_detalhesFisicosAdicionais"] ?? '') as String,
      $c_dimensoes: (map["\$c_dimensoes"] ?? '') as String,
      $e_materialAdicional: (map["\$e_materialAdicional"] ?? '') as String,
      $f_tipoDeUnidade: (map["\$f_tipoDeUnidade"] ?? '') as String,
      $g_tamanhoDaUnidade: (map["\$g_tamanhoDaUnidade"] ?? '') as String,
      $3_materialEspecificado_300: (map["\$3_materialEspecificado_300"] ?? '') as String,
      $6_ligacao_300: (map["\$6_ligacao_300"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_300: (map["\$8_campoDeLigacaoENumeroDeSequencia_300"] ?? '') as String,
      indicacaoDeSeries_490_DataID: (map["indicacaoDeSeries_490_DataID"] ?? 0) as int,
      etiqueta_490: (map["etiqueta_490"] ?? '') as String,
      primeiroIndicador_490: (map["primeiroIndicador_490"] ?? '') as String,
      segundoIndicador_490: (map["segundoIndicador_490"] ?? '') as String,
      $a_tituloDaSerie: (map["\$a_tituloDaSerie"] ?? '') as String,
      $l_numeroDeChamadaDaLC: (map["\$l_numeroDeChamadaDaLC"] ?? '') as String,
      $v_numeroDoVolumeOuDesignacaoSequencialDaSerie: (map["\$v_numeroDoVolumeOuDesignacaoSequencialDaSerie"] ?? '') as String,
      $x_ISSN_490: (map["\$x_ISSN_490"] ?? '') as String,
      $3_materialEspecificado_490: (map["\$3_materialEspecificado_490"] ?? '') as String,
      $6_ligacao_490: (map["\$6_ligacao_490"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_490: (map["\$8_campoDeLigacaoENumeroDeSequencia_490"] ?? '') as String,
      notaGeral_500_DataID: (map["notageral_500_dataID"] ?? 0) as int,
      etiqueta_500: (map["etiqueta_500"] ?? '') as String,
      primeiroIndicador_500: (map["primeiroIndicador_500"] ?? '') as String,
      segundoIndicador_500: (map["segundoIndicador_500"] ?? '') as String,
      $a_notaGeral: (map["\$a_notaGeral"] ?? '') as String,
      $3_materialEspecificado_500: (map["\$3_materialEspecificado_500"] ?? '') as String,
      $5_codigoDaInstituicao_500: (map["\$5_codigoDaInstituicao_500"] ?? '') as String,
      $6_ligacao_500: (map["\$6_ligacao_500"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_500: (map["\$8_campoDeLigacaoENumeroDeSequencia_500"] ?? '') as String,
      notaDeBibliografia_504_DataID: (map["notaDeBibliografia_504_DataID"] ?? 0) as int,
      etiqueta_504: (map["etiqueta_504"] ?? '') as String,
      primeiroIndicador_504: (map["primeiroIndicador_504"] ?? '') as String,
      segundoIndicador_504: (map["segundoIndicador_504"] ?? '') as String,
      $a_notaDeBibliografia: (map["\$a_notaDeBibliografia"] ?? '') as String,
      $b_numeroDeReferencias: (map["\$b_numeroDeReferencias"] ?? '') as String,
      $6_ligacao_504: (map["\$6_ligacao_504"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_504: (map["\$8_campoDeLigacaoENumeroDeSequencia_504"] ?? '') as String,
      notaDeConteudo_505_DataID: (map["notadeconteudo_505_dataID"] ?? 0) as int,
      etiqueta_505: (map["etiqueta_505"] ?? '') as String,
      primeiroIndicador_505: (map["primeiroIndicador_505"] ?? '') as String,
      segundoIndicador_505: (map["segundoIndicador_505"] ?? '') as String,
      $a_notaDeConteudo: (map["\$a_notaDeConteudo"] ?? '') as String,
      $g_informacoesAdicionais: (map["\$g_informacoesAdicionais"] ?? '') as String,
      $r_indicacaoDeResposabilidade: (map["\$r_indicacaoDeResposabilidade"] ?? '') as String,
      $t_titulo: (map["\$t_titulo"] ?? '') as String,
      $u_URI: (map["\$u_URI"] ?? '') as String,
      $6_ligacao_505: (map["\$6_ligacao_505"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_505: (map["\$8_campoDeLigacaoENumeroDeSequencia_505"] ?? '') as String,
      notaDeResumo_520_DataID: (map["notaDeResumo_520_DataID"] ?? 0) as int,
      etiqueta_520: (map["etiqueta_520"] ?? '') as String,
      primeiroIndicador_520: (map["primeiroIndicador_520"] ?? '') as String,
      segundoIndicador_520: (map["segundoIndicador_520"] ?? '') as String,
      $a_notaDeResumo: (map["\$a_notaDeResumo"] ?? '') as String,
      $b_expansaoDaNotaDeResumo: (map["\$b_expansaoDaNotaDeResumo"] ?? '') as String,
      $c_agenciaDepositaria: (map["\$c_agenciaDepositaria"] ?? '') as String,
      $u_URI_520: (map["\$u_URI_520"] ?? '') as String,
      $2_fonte_520: (map["\$2_fonte_520"] ?? '') as String,
      $3_materialEspecificado_520: (map["\$3_materialEspecificado_520"] ?? '') as String,
      $6_ligacao_520: (map["\$6_ligacao_520"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_520: (map["\$8_campoDeLigacaoENumeroDeSequencia_520"] ?? '') as String,
      nomePessoal_600_DataID: (map["nomePessoal_600_DataID"] ?? 0) as int,
      etiqueta_600: (map["etiqueta_600"] ?? '') as String,
      primeiroIndicador_600: (map["primeiroIndicador_600"] ?? '') as String,
      segundoIndicador_600: (map["segundoIndicador_600"] ?? '') as String,
      $a_nomePessoal_600: (map["\$a_nomePessoal_600"] ?? '') as String,
      $b_algarismosRomanosQueSeguemOPronome_600: (map["\$b_algarismosRomanosQueSeguemOPronome_600"] ?? '') as String,
      $c_titulosEOutrasPalavras_600: (map["\$c_titulosEOutrasPalavras_600"] ?? '') as String,
      $d_datasAssociadasAoNome_600: (map["\$d_datasAssociadasAoNome_600"] ?? '') as String,
      $e_termoDeRelacao_600: (map["\$e_termoDeRelacao_600"] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_600: (map["\$f_dataDaPublicacaoDoTrabalho_600"] ?? '') as String,
      $g_informacoesAdicionais_600: (map["\$g_informacoesAdicionais_600"] ?? '') as String,
      $h_meioDGM_600: (map["\$h_meioDGM_600"] ?? '') as String,
      $j_atributo_600: (map["\$j_atributo_600"] ?? '') as String,
      $k_subcabecalho_600: (map["\$k_subcabecalho_600"] ?? '') as String,
      $l_idiomaDaPublicacao_600: (map["\$l_idiomaDaPublicacao_600"] ?? '') as String,
      $m_meioDeExecucaoParaMusica_600: (map["\$m_meioDeExecucaoParaMusica_600"] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_600: (map["\$n_numeroDaSecaoDaPublicacao_600"] ?? '') as String,
      $o_ArranjoMusical_600: (map["\$o_ArranjoMusical_600"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_600: (map["\$p_nomeDaSecaoDaPublicacao_600"] ?? '') as String,
      $q_formaCompletaDoNome_600: (map["\$q_formaCompletaDoNome_600"] ?? '') as String,
      $r_escalaMusical_600: (map["\$r_escalaMusical_600"] ?? '') as String,
      $s_versao_600: (map["\$s_versao_600"] ?? '') as String,
      $t_tituloDaPublicacao_600: (map["\$t_tituloDaPublicacao_600"] ?? '') as String,
      $u_afiliacao_600: (map["\$u_afiliacao_600"] ?? '') as String,
      $v_subdivisaoDeForma_600: (map["\$v_subdivisaoDeForma_600"] ?? '') as String,
      $x_subdivisaoGeral_600: (map["\$x_subdivisaoGeral_600"] ?? '') as String,
      $y_subdivisaoCronologica_600: (map["\$y_subdivisaoCronologica_600"] ?? '') as String,
      $z_subdivisaoGeografica_600: (map["\$z_subdivisaoGeografica_600"] ?? '') as String,
      $0_NumeroDeControleDoRegistroDeAutoridade_600: (map["\$0_NumeroDeControleDoRegistroDeAutoridade_600"] ?? '') as String,
      $2_fonteDoCabecalhoOuTermo_600: (map["\$2_fonteDoCabecalhoOuTermo_600"] ?? '') as String,
      $3_materialEspecificado_600: (map["\$3_materialEspecificado_600"] ?? '') as String,
      $4_relacao_600: (map["\$4_relacao_600"] ?? '') as String,
      $6_ligacao_600: (map["\$6_ligacao_600"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_600: (map["\$8_campoDeLigacaoENumeroDeSequencia_600"] ?? '') as String,
      topico_650_DataID: (map["topico_650_DataID"] ?? 0) as int,
      etiqueta_650: (map["etiqueta_650"] ?? '') as String,
      primeiroIndicador_650: (map["primeiroIndicador_650"] ?? '') as String,
      segundoIndicador_650: (map["segundoIndicador_650"] ?? '') as String,
      $a_cabecalhoTopicoOuNomeGeografico: (map["\$a_cabecalhoTopicoOuNomeGeografico"] ?? '') as String,
      $b_cabecalhoTopicoSeguindoNomeGeografico: (map["\$b_cabecalhoTopicoSeguindoNomeGeografico"] ?? '') as String,
      $c_localDoEvento: (map["\$c_localDoEvento"] ?? '') as String,
      $d_dataDeRealizacaoDoEvento: (map["\$d_dataDeRealizacaoDoEvento"] ?? '') as String,
      $e_termoDeRelacao_650: (map["\$e_termoDeRelacao_650"] ?? '') as String,
      $g_informacoesAdicionais_650: (map["\$g_informacoesAdicionais_650"] ?? '') as String,
      $v_subdivisaoDeForma: (map["\$v_subdivisaoDeForma"] ?? '') as String,
      $x_subdivisaoGeral: (map["\$x_subdivisaoGeral"] ?? '') as String,
      $y_subdivisaoCronologica: (map["\$y_subdivisaoCronologica"] ?? '') as String,
      $z_subdivisaoGeografica: (map["\$z_subdivisaoGeografica"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_650: (map["\$0_numeroDeControleDoRegistroDeAutoridade_650"] ?? '')     as String,
      $2_fonteDoCabecalhoOuTermo: (map["\$2_fonteDoCabecalhoOuTermo"] ?? '') as String,
      $3_materialEspecificado_650: (map["\$3_materialEspecificado_650"] ?? '') as String,
      $4_relacao_650: (map["\$4_relacao_650"] ?? '') as String,
      $6_ligacao_650: (map["\$6_ligacao_650"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_650: (map["\$8_campoDeLigacaoENumeroDeSequencia_650"] ?? '') as String,
      nomePessoal_700_DataID: (map["nomePessoal_700_DataID"] ?? 0) as int,
      etiqueta_700: (map["etiqueta_700"] ?? '') as String,
      primeiroIndicador_700: (map["primeiroIndicador_700"] ?? '') as String,
      segundoIndicador_700: (map["segundoIndicador_700"] ?? '') as String,
      $a_nomePessoal_700: (map["\$a_nomePessoal"] ?? '') as String,
      $b_algarismosRomanosQueSeguemOPrenome: (map["\$b_algarismosRomanosQueSeguemOPrenome"] ?? '') as String,
      $c_titulosEOutrasPalavrasAssociadasAoNome_700: (map["\$c_titulosEOutrasPalavrasAssociadasAoNome_700"] ?? '')     as String,
      $d_datasAssociadasAoNome_700: (map["\$d_datasAssociadasAoNome_700"] ?? '') as String,
      $e_termoDeRelacao_700: (map["\$e_termoDeRelacao_700"] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_700: (map["\$f_dataDaPublicacaoDoTrabalho_700"] ?? '') as String,
      $g_informacoesAdicionais_700: (map["\$g_informacoesAdicionais_700"] ?? '') as String,
      $h_meioDGM: (map["\$h_meioDGM"] ?? '') as String,
      $i_informacoesSobreRelacoes: (map["\$i_informacoesSobreRelacoes"] ?? '') as String,
      $j_atributo: (map["\$j_atributo"] ?? '') as String,
      $k_subcabecalhos: (map["\$k_subcabecalhos"] ?? '') as String,
      $l_idiomaDaPublicacao_700: (map["\$l_idiomaDaPublicacao_700"] ?? '') as String,
      $m_instrumentosMusicais: (map["\$m_instrumentosMusicais"] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_700: (map["\$n_numeroDaSecaoDaPublicacao_700"] ?? '') as String,
      $o_arranjoMusical_700: (map["\$o_arranjoMusical_700"] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_700: (map["\$p_nomeDaSecaoDaPublicacao_700"] ?? '') as String,
      $q_formaCompletaDoNome_700: (map["\$q_formaCompletaDoNome_700"] ?? '') as String,
      $r_escalaMusical_700: (map["\$r_escalaMusical_700"] ?? '') as String,
      $s_versao_700: (map["\$s_versao_700"] ?? '') as String,
      $t_tituloDaPublicacao_700: (map["\$t_tituloDaPublicacao_700"] ?? '') as String,
      $u_afiliacao_700: (map["\$u_afiliacao_700"] ?? '') as String,
      $x_ISSN: (map["\$x_ISSN"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_700: (map["\$0_numeroDeControleDoRegistroDeAutoridade_700"] ?? '')     as String,
      $3_materialEspecificado_700: (map["\$3_materialEspecificado_700"] ?? '') as String,
      $4_relacao_700: (map["\$4_relacao_700"] ?? '') as String,
      $5_codigoDaInstituicao_700: (map["\$5_codigoDaInstituicao_700"] ?? '') as String,
      $6_ligacao_700: (map["\$6_ligacao_700"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_700: (map["\$8_campoDeLigacaoENumeroDeSequencia_700"] ?? '') as String,
      entradaDeIdiomaOriginal_765_DataID: (map["entradaDeIdiomaOriginal_765_DataID"] ?? 0) as int,
      etiqueta_765: (map["etiqueta_765"] ?? '') as String,
      primeiroIndicador_765: (map["primeiroIndicador_765"] ?? '') as String,
      segundoIndicador_765: (map["segundoIndicador_765"] ?? '') as String,
      $a_entradaPrincipal_765: (map["\$a_entradaPrincipal_765"] ?? '') as String,
      $b_edicao_765: (map["\$b_edicao_765"] ?? '') as String,
      $c_informacaoQualificadora_765: (map["\$c_informacaoQualificadora_765"] ?? '') as String,
      $d_lugarEditorEDataDePublicacao_765: (map["\$d_lugarEditorEDataDePublicacao_765"] ?? '') as String,
      $g_partesRelacionadas_765: (map["\$g_partesRelacionadas_765"] ?? '') as String,
      $h_descricaoFisica_765: (map["\$h_descricaoFisica_765"] ?? '') as String,
      $i_informacoesSobreRelacoes_765: (map["\$i_informacoesSobreRelacoes_765"] ?? '') as String,
      $k_dadosDaSerieDoDocumentoSelecionado_765: (map["\$k_dadosDaSerieDoDocumentoSelecionado_765"] ?? '') as String,
      $m_detalhesDoMaterialEspecificado_765: (map["\$m_detalhesDoMaterialEspecificado_765"] ?? '') as String,
      $n_nota_765: (map["\$n_nota_765"] ?? '') as String,
      $o_outroIdentificadorDoDocumento_765: (map["\$o_outroIdentificadorDoDocumento_765"] ?? '') as String,
      $r_numeroDeRelatorio_765: (map["\$r_numeroDeRelatorio_765"] ?? '') as String,
      $s_tituloUniforme_765: (map["\$s_tituloUniforme_765"] ?? '') as String,
      $t_titulo_765: (map["\$t_titulo_765"] ?? '') as String,
      $u_standardTechnicalReportNumber_765: (map["\$u_standardTechnicalReportNumber_765"] ?? '') as String,
      $w_numeroDeControleDoRegistro_765: (map["\$w_numeroDeControleDoRegistro_765"] ?? '') as String,
      $x_ISSN_765: (map["\$x_ISSN_765"] ?? '') as String,
      $y_designacaoCODEN_765: (map["\$y_designacaoCODEN_765"] ?? '') as String,
      $z_ISBN_765: (map["\$z_ISBN_765"] ?? '') as String,
      $4_relacao_765: (map["\$4_relacao_765"] ?? '') as String,
      $6_ligacao_765: (map["\$6_ligacao_765"] ?? '') as String,
      $7_subcampoDeControle_765: (map["\$7_subcampoDeControle_765"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_765: (map["\$8_campoDeLigacaoENumeroDeSequencia_765"] ?? '') as String,
      localizacaoEAcessoEletronico_856_DataID: (map["localizacaoEAcessoEletronico_856_DataID"] ?? 0) as int,
      etiqueta_856: (map["etiqueta_856"] ?? '') as String,
      primeiroIndicador_856: (map["primeiroIndicador_856"] ?? '') as String,
      segundoIndicador_856: (map["segundoIndicador_856"] ?? '') as String,
      $a_nomeDoServidor: (map["\$a_nomeDoServidor"] ?? '') as String,
      $b_numeroDoAcesso: (map["\$b_numeroDoAcesso"] ?? '') as String,
      $c_informacoesSobreCompactacao: (map["\$c_informacoesSobreCompactacao"] ?? '') as String,
      $d_caminho: (map["\$d_caminho"] ?? '') as String,
      $f_nomeDoArquivoEletronico: (map["\$f_nomeDoArquivoEletronico"] ?? '') as String,
      $h_username: (map["\$h_username"] ?? '') as String,
      $i_instrucao: (map["\$i_instrucao"] ?? '') as String,
      $j_bitsPorSegundo: (map["\$j_bitsPorSegundo"] ?? '') as String,
      $k_password: (map["\$k_password"] ?? '') as String,
      $l_login: (map["\$l_login"] ?? '') as String,
      $m_contatoParaObterAjuda: (map["\$m_contatoParaObterAjuda"] ?? '') as String,
      $n_nomeDaLocalizacaoDoServidor: (map["\$n_nomeDaLocalizacaoDoServidor"] ?? '') as String,
      $o_sistemaOperativo: (map["\$o_sistemaOperativo"] ?? '') as String,
      $p_porta: (map["\$p_porta"] ?? '') as String,
      $q_tipoDoFormatoEletronico: (map["\$q_tipoDoFormatoEletronico"] ?? '') as String,
      $r_configuracao: (map["\$r_configuracao"] ?? '') as String,
      $s_tamanhoDoArquivo: (map["\$s_tamanhoDoArquivo"] ?? '') as String,
      $t_emulacaoDeTerminal: (map["\$t_emulacaoDeTerminal"] ?? '') as String,
      $u_identificadorUniformeDeRecursoURI: (map["\$u_identificadorUniformeDeRecursoURI"] ?? '') as String,
      $v_horarioDeAcesso: (map["\$v_horarioDeAcesso"] ?? '') as String,
      $w_numeroDeControleDeUmRegistro: (map["\$w_numeroDeControleDeUmRegistro"] ?? '') as String,
      $x_notaInterna: (map["\$x_notaInterna"] ?? '') as String,
      $y_textoDoLink: (map["\$y_textoDoLink"] ?? '') as String,
      $z_notaDoPublico: (map["\$z_notaDoPublico"] ?? '') as String,
      $2_metodoDeAcesso: (map["\$2_metodoDeAcesso"] ?? '') as String,
      $3_materialEspecificado_856: (map["\$3_materialEspecificado_856"] ?? '') as String,
      $6_ligacao_856: (map["\$6_ligacao_856"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_856: (map["\$8_campoDeLigacaoENumeroDeSequencia_856"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassLivroData.fromJson(String source) =>
      ClassLivroData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'livrosDataID: $livrosDataID, exemplarNumero: $exemplarNumero, liderID: $liderID, etiqueta_000: $etiqueta_000, tamanhoDoRegistro_00_04: $tamanhoDoRegistro_00_04, statusDoRegistro_05: $statusDoRegistro_05, tipoDeRegistro_06: $tipoDeRegistro_06, nivelBibliografico_07: $nivelBibliografico_07, tipodeControle_08: $tipodeControle_08, esquemaDeCodificacaoDeCaractere_09: $esquemaDeCodificacaoDeCaractere_09, numeroDeIndicadores_10: $numeroDeIndicadores_10, numeroDeSubcampos_11: $numeroDeSubcampos_11, enderecoDeDados_12_16: $enderecoDeDados_12_16, nivelDeCodificacao_17: $nivelDeCodificacao_17, formaDeCatalogacaoDescritiva_18: $formaDeCatalogacaoDescritiva_18, nivelDeRegistroDeRecurso_19: $nivelDeRegistroDeRecurso_19, tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20: $tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20, tamanhoDaPosicaoDoCaractereDeInicio_21: $tamanhoDaPosicaoDoCaractereDeInicio_21, tamanhoDaParteDefinidaParaImplementacao_22: $tamanhoDaParteDefinidaParaImplementacao_22, entradaNaoDefinida_23: $entradaNaoDefinida_23, camposDeControle_00X_DataID: $camposDeControle_00X_DataID, numeroDeControle_001: $numeroDeControle_001, codigoAgenciaCatalogadora_003: $codigoAgenciaCatalogadora_003, dataEHoraUltimaAtualizacao_005: $dataEHoraUltimaAtualizacao_005, todosOsMateriais_008_DataID: $todosOsMateriais_008_DataID, etiqueta_008: $etiqueta_008, dataDeEntradaDoRegistroNoArquivo_00_05: $dataDeEntradaDoRegistroNoArquivo_00_05, tipodeDataOuStatusDePublicacao_06: $tipodeDataOuStatusDePublicacao_06, data1_07_10: $data1_07_10, data2_11_14: $data2_11_14, lugarDePublicacaoProducaoExecucao_15_17: $lugarDePublicacaoProducaoExecucao_15_17, tipoDeMaterial_18_34: $tipoDeMaterial_18_34, idiomaDoTextoDoDocumento_35_37: $idiomaDoTextoDoDocumento_35_37, registroModificado_38: $registroModificado_38, fonteDeCatalogacao_39: $fonteDeCatalogacao_39, livros_008_DataID: $livros_008_DataID, ilustracoes_18_21: $ilustracoes_18_21, publicoAlvo_22: $publicoAlvo_22, formaDoDocumento_23: $formaDoDocumento_23, naturezaDoConteudo_24_27: $naturezaDoConteudo_24_27, publicacaoGovernamental_28: $publicacaoGovernamental_28, publicacaoDeConferencia_29: $publicacaoDeConferencia_29, obraComemorativa_30: $obraComemorativa_30, indice_31: $indice_31, indefinido_32: $indefinido_32, formaLiteraria_33: $formaLiteraria_33, biografia_34: $biografia_34, isbn_020_DataID: $isbn_020_DataID, etiqueta_020: $etiqueta_020, primeiroIndicador_020: $primeiroIndicador_020, segundoIndicador_020: $segundoIndicador_020, \$a_numeroISBN: ${$a_numeroISBN}, \$c_modalidadesDeAquisicao: ${$c_modalidadesDeAquisicao}, \$q_informacaoQualificadora: ${$q_informacaoQualificadora}, \$z_isbnCanceladoOuInvalido: ${$z_isbnCanceladoOuInvalido}, \$6_ligacao_020: ${$6_ligacao_020}, \$8_campoDeLigacaoENumeroDeSequencia_020: ${$8_campoDeLigacaoENumeroDeSequencia_020}, fonteDeCatalogacao_040_DataID: $fonteDeCatalogacao_040_DataID, etiqueta_040: $etiqueta_040, primeiroIndicador_040: $primeiroIndicador_040, segundoIndicador_040: $segundoIndicador_040, \$a_codigoDaAgenciaCatalogadora: ${$a_codigoDaAgenciaCatalogadora}, \$b_idiomaCatalogacao: ${$b_idiomaCatalogacao}, \$c_agenciaQueTranscreveuORegistro: ${$c_agenciaQueTranscreveuORegistro}, \$d_agenciaQueAlterouORegistro: ${$d_agenciaQueAlterouORegistro}, \$e_fontesConvencionaisDedescricaoDeDados: ${$e_fontesConvencionaisDedescricaoDeDados}, \$6_ligacao_040: ${$6_ligacao_040}, \$8_campoDeLigacaoENumeroDeSequencia_040: ${$8_campoDeLigacaoENumeroDeSequencia_040}, codigoDoIdioma_041_DataID: $codigoDoIdioma_041_DataID, etiqueta_041: $etiqueta_041, primeiroIndicador_041: $primeiroIndicador_041, segundoIndicador_041: $segundoIndicador_041, \$a_codigoDoIdiomaDoTexto: ${$a_codigoDoIdiomaDoTexto}, \$b_codigoDoIdiomaDoResumo: ${$b_codigoDoIdiomaDoResumo}, \$d_codigoDoIdiomaDaMusica: ${$d_codigoDoIdiomaDaMusica}, \$e_codigoDoIdiomaDoLibreto: ${$e_codigoDoIdiomaDoLibreto}, \$f_codigoDoIdiomaDoSumario: ${$f_codigoDoIdiomaDoSumario}, \$g_codigoDoIdiomaDoMaterialAdicional: ${$g_codigoDoIdiomaDoMaterialAdicional}, \$h_codigoDoIdiomaDoDocumentoOriginal: ${$h_codigoDoIdiomaDoDocumentoOriginal}, \$j_codigoDoIdiomaDoSubtituloOuLegenda: ${$j_codigoDoIdiomaDoSubtituloOuLegenda}, \$k_codigoDoIdiomaDaTraducaoIntermediaria: ${$k_codigoDoIdiomaDaTraducaoIntermediaria}, \$m_codigoDoIdiomaOriginalDoMaterialAdicional: ${$m_codigoDoIdiomaOriginalDoMaterialAdicional}, \$n_codigoDoIdiomaOriginalDoLibreto: ${$n_codigoDoIdiomaOriginalDoLibreto}, \$2_fonteDoCodigo_041: ${$2_fonteDoCodigo_041}, \$6_ligacao_041: ${$6_ligacao_041}, \$8_campoDeLigacaoENumeroDeSequencia_041: ${$8_campoDeLigacaoENumeroDeSequencia_041}, codigoDaAreaGeografica_043_DataID: $codigoDaAreaGeografica_043_DataID, etiqueta_043: $etiqueta_043, primeiroIndicador_043: $primeiroIndicador_043, segundoIndicador_043: $segundoIndicador_043, \$a_codigoAreaGeografica: ${$a_codigoAreaGeografica}, \$b_codigoAreaGeograficaLocal: ${$b_codigoAreaGeograficaLocal}, \$c_codigoISO: ${$c_codigoISO}, \$0_numeroDeControleDoRegistroDeAutoridade_043: ${$0_numeroDeControleDoRegistroDeAutoridade_043}, \$2_fonteDoCodigo_043: ${$2_fonteDoCodigo_043}, \$6_ligacao_043: ${$6_ligacao_043}, \$8_campoDeLigacaoENumeroDeSequencia_043: ${$8_campoDeLigacaoENumeroDeSequencia_043}, numeroDeClassificacaoDecimalUniversal_080_DataID: $numeroDeClassificacaoDecimalUniversal_080_DataID, etiqueta_080: $etiqueta_080, primeiroIndicador_080: $primeiroIndicador_080, segundoIndicador_080: $segundoIndicador_080, \$a_numeroDeClassificacaoDecimalUniversal: ${$a_numeroDeClassificacaoDecimalUniversal}, \$b_numeroDoItem: ${$b_numeroDoItem}, \$x_subdivisaoAuxiliarComum: ${$x_subdivisaoAuxiliarComum}, \$0_numeroDeControleDoRegistroDeAutoridades: ${$0_numeroDeControleDoRegistroDeAutoridades}, \$2_numeroDeEdicao: ${$2_numeroDeEdicao}, \$6_ligacao_080: ${$6_ligacao_080}, \$8_campoDeLigacaoENumeroDeSequencia_080: ${$8_campoDeLigacaoENumeroDeSequencia_080}, numeroDeChamadaLocal_090_DataID: $numeroDeChamadaLocal_090_DataID, etiqueta_090: $etiqueta_090, primeiroIndicador_090: $primeiroIndicador_090, segundoIndicador_090: $segundoIndicador_090, \$a_classificacao: ${$a_classificacao}, \$b_numeroDeCutter: ${$b_numeroDeCutter}, \$c_anoDePublicacao: ${$c_anoDePublicacao}, \$d_tipoDeObra: ${$d_tipoDeObra}, \$8_unidadeCatalogadora: ${$8_unidadeCatalogadora}, siglaInsituicao: $siglaInstituicao, nomePessoal_100_DataID: $nomePessoal_100_DataID, etiqueta_100: $etiqueta_100, primeiroIndicador_100: $primeiroIndicador_100, segundoIndicador_100: $segundoIndicador_100, \$a_nomePessoal_100: ${$a_nomePessoal_100}, \$b_algarismosRomanosQueSeguemPrenome: ${$b_algarismosRomanosQueSeguemPrenome}, \$c_titulosEOutrasPalavrasAssociadasAoNome_100: ${$c_titulosEOutrasPalavrasAssociadasAoNome_100}, \$d_datasAssociadasAoNome_100: ${$d_datasAssociadasAoNome_100}, \$e_termoDeRelacao_100: ${$e_termoDeRelacao_100}, \$f_dataDaPublicacaoDoTrabalho_100: ${$f_dataDaPublicacaoDoTrabalho_100}, \$g_informacoesAdicionais_100: ${$g_informacoesAdicionais_100}, \$j_atributoQualificador: ${$j_atributoQualificador}, \$k_subcabecalho: ${$k_subcabecalho}, \$l_idiomaDaPublicacao_100: ${$l_idiomaDaPublicacao_100}, \$n_numeroDaSecaoDaPublicacao_100: ${$n_numeroDaSecaoDaPublicacao_100}, \$p_nomeDaSecaoDaPublicacao_100: ${$p_nomeDaSecaoDaPublicacao_100}, \$q_formaCompletaDoNome_100: ${$q_formaCompletaDoNome_100}, \$t_tituloDaPublicacao_100: ${$t_tituloDaPublicacao_100}, \$u_afiliacao_100: ${$u_afiliacao_100}, \$0_numeroDeControleDoRegistroDeAutoridade_100: ${$0_numeroDeControleDoRegistroDeAutoridade_100}, \$4_relacao_100: ${$4_relacao_100}, \$6_ligacao_100: ${$6_ligacao_100}, \$8_campoDeLigacaoENumeroDeSequencia_100: ${$8_campoDeLigacaoENumeroDeSequencia_100}, tituloUniforme_240_DataID: $tituloUniforme_240_DataID, etiqueta_240: $etiqueta_240, primeiroIndicador_240: $primeiroIndicador_240, segundoIndicador_240: $segundoIndicador_240, \$a_tituloUniforme: ${$a_tituloUniforme}, \$d_dataDaAssinaturaTratado: ${$d_dataDaAssinaturaTratado}, \$f_dataDaPublicacaoDoTrabalho_240: ${$f_dataDaPublicacaoDoTrabalho_240}, \$g_informacoesAdicionais_240: ${$g_informacoesAdicionais_240}, \$h_meioDGM_240: ${$h_meioDGM_240}, \$k_subcabecalho_240: ${$k_subcabecalho_240}, \$l_idiomaDaPublicacao_240: ${$l_idiomaDaPublicacao_240}, \$m_meioDeExecucaoParaMusica: ${$m_meioDeExecucaoParaMusica}, \$n_numeroDaSecaoDaPublicacao_240: ${$n_numeroDaSecaoDaPublicacao_240}, \$o_arranjoMusical_240: ${$o_arranjoMusical_240}, \$p_nomeDaSecaoDaPublicacao_240: ${$p_nomeDaSecaoDaPublicacao_240}, \$r_escalaMusical_240: ${$r_escalaMusical_240}, \$s_versao_240: ${$s_versao_240}, \$0_numeroDeControleDoRegistroDeAutoridade_240: ${$0_numeroDeControleDoRegistroDeAutoridade_240}, \$6_ligacao_240: ${$6_ligacao_240}, \$8_campoDeLigacaoENumeroDeSequencia_240: ${$8_campoDeLigacaoENumeroDeSequencia_240}, tituloPrincipal_245_DataID: $tituloPrincipal_245_DataID, etiqueta_245: $etiqueta_245, primeiroIndicador_245: $primeiroIndicador_245, segundoIndicador_245: $segundoIndicador_245, \$a_tituloPrincipal: ${$a_tituloPrincipal}, \$b_subtitulo: ${$b_subtitulo}, \$c_indicacaoDeResponsabilidade: ${$c_indicacaoDeResponsabilidade}, \$f_datasDeAbrangencia: ${$f_datasDeAbrangencia}, \$g_conjuntoDeDatas: ${$g_conjuntoDeDatas}, \$h_meioDGM_245: ${$h_meioDGM_245}, \$k_formaDoMaterial: ${$k_formaDoMaterial}, \$n_numeroDaSecaoDaPublicacao_245: ${$n_numeroDaSecaoDaPublicacao_245}, \$p_nomeDaSecaoDaPublicacao_245: ${$p_nomeDaSecaoDaPublicacao_245}, \$s_versao_245: ${$s_versao_245}, \$6_ligacao_245: ${$6_ligacao_245}, \$8_campoDeLigacaoENumeroDeSequencia_245: ${$8_campoDeLigacaoENumeroDeSequencia_245}, edicao_250_DataID: $edicao_250_DataID, etiqueta_250: $etiqueta_250, primeiroIndicador_250: $primeiroIndicador_250, segundoIndicador_250: $segundoIndicador_250, \$a_edicao: ${$a_edicao}, \$b_outrasInformacoesSobreEdicao: ${$b_outrasInformacoesSobreEdicao}, \$3_materialEspecificado_250: ${$3_materialEspecificado_250}, \$6_ligacao_250: ${$6_ligacao_250}, \$8_campoDeLigacaoENumerosDeSequencia_250: ${$8_campoDeLigacaoENumerosDeSequencia_250}, imprenta_260_DataID: $imprenta_260_DataID, etiqueta_260: $etiqueta_260, primeiroIndicador_260: $primeiroIndicador_260, segundoIndicador_260: $segundoIndicador_260, \$a_lugarDePublicacao: ${$a_lugarDePublicacao}, \$b_nomeDoEditor: ${$b_nomeDoEditor}, \$c_dataDePublicacao: ${$c_dataDePublicacao}, \$e_lugarDeFabricacao: ${$e_lugarDeFabricacao}, \$f_nomeDoFabricante: ${$f_nomeDoFabricante}, \$g_dataDeFabricacao: ${$g_dataDeFabricacao}, \$3_materialEspecificado_260: ${$3_materialEspecificado_260}, \$6_ligacao_260: ${$6_ligacao_260}, \$8_campoDeLigacaoENumeroDeSequencia_260: ${$8_campoDeLigacaoENumeroDeSequencia_260}, descricaoFisica_300_DataID: $descricaoFisica_300_DataID, etiqueta_300: $etiqueta_300, primeiroIndicador_300: $primeiroIndicador_300, segundoIndicador_300: $segundoIndicador_300, \$a_extensao: ${$a_extensao}, \$b_detalhesFisicosAdicionais: ${$b_detalhesFisicosAdicionais}, \$c_dimensoes: ${$c_dimensoes}, \$e_materialAdicional: ${$e_materialAdicional}, \$f_tipoDeUnidade: ${$f_tipoDeUnidade}, \$g_tamanhoDaUnidade: ${$g_tamanhoDaUnidade}, \$3_materialEspecificado_300: ${$3_materialEspecificado_300}, \$6_ligacao_300: ${$6_ligacao_300}, \$8_campoDeLigacaoENumeroDeSequencia_300: ${$8_campoDeLigacaoENumeroDeSequencia_300}, indicacaoDeSeries_490_DataID: $indicacaoDeSeries_490_DataID, etiqueta_490: $etiqueta_490, primeiroIndicador_490: $primeiroIndicador_490, segundoIndicador_490: $segundoIndicador_490, \$a_tituloDaSerie: ${$a_tituloDaSerie}, \$l_numeroDeChamadaDaLC: ${$l_numeroDeChamadaDaLC}, \$v_numeroDoVolumeOuDesignacaoSequencialDaSerie: ${$v_numeroDoVolumeOuDesignacaoSequencialDaSerie}, \$x_ISSN_490: ${$x_ISSN_490}, \$3_materialEspecificado_490: ${$3_materialEspecificado_490}, \$6_ligacao_490: ${$6_ligacao_490}, \$8_campoDeLigacaoENumeroDeSequencia_490: ${$8_campoDeLigacaoENumeroDeSequencia_490}, notaGeral_500_DataID: $notaGeral_500_DataID, etiqueta_500: $etiqueta_500, primeiroIndicador_500: $primeiroIndicador_500, segundoIndicador_500: $segundoIndicador_500, \$a_notaGeral: ${$a_notaGeral}, \$3_materialEspecificado_500: ${$3_materialEspecificado_500}, \$5_codigoDaInstituicao_500: ${$5_codigoDaInstituicao_500}, \$6_ligacao_500: ${$6_ligacao_500}, \$8_campoDeLigacaoENumeroDeSequencia_500: ${$8_campoDeLigacaoENumeroDeSequencia_500}, notaDeBibliografia_504_DataID: $notaDeBibliografia_504_DataID, etiqueta_504: $etiqueta_504, primeiroIndicador_504: $primeiroIndicador_504, segundoIndicador_504: $segundoIndicador_504, \$a_notaDeBibliografia: ${$a_notaDeBibliografia}, \$b_numeroDeReferencias: ${$b_numeroDeReferencias}, \$6_ligacao_504: ${$6_ligacao_504}, \$8_campoDeLigacaoENumeroDeSequencia_504: ${$8_campoDeLigacaoENumeroDeSequencia_504}, notaDeConteudo_505_DataID: $notaDeConteudo_505_DataID, etiqueta_505: $etiqueta_505, primeiroIndicador_505: $primeiroIndicador_505, segundoIndicador_505: $segundoIndicador_505, \$a_notaDeConteudo: ${$a_notaDeConteudo}, \$g_informacoesAdicionais: ${$g_informacoesAdicionais}, \$r_indicacaoDeResposabilidade: ${$r_indicacaoDeResposabilidade}, \$t_titulo: ${$t_titulo}, \$u_URI: ${$u_URI}, \$6_ligacao_505: ${$6_ligacao_505}, \$8_campoDeLigacaoENumeroDeSequencia_505: ${$8_campoDeLigacaoENumeroDeSequencia_505}, notaDeResumo_520_DataID: $notaDeResumo_520_DataID, etiqueta_520: $etiqueta_520, primeiroIndicador_520: $primeiroIndicador_520, segundoIndicador_520: $segundoIndicador_520, \$a_notaDeResumo: ${$a_notaDeResumo}, \$b_expansaoDaNotaDeResumo: ${$b_expansaoDaNotaDeResumo}, \$c_agenciaDepositaria: ${$c_agenciaDepositaria}, \$u_URI_520: ${$u_URI_520}, \$2_fonte_520: ${$2_fonte_520}, \$3_materialEspecificado_520: ${$3_materialEspecificado_520}, \$6_ligacao_520: ${$6_ligacao_520}, \$8_campoDeLigacaoENumeroDeSequencia_520: ${$8_campoDeLigacaoENumeroDeSequencia_520}, topico_650_DataID: $topico_650_DataID, etiqueta_650: $etiqueta_650, primeiroIndicador_650: $primeiroIndicador_650, segundoIndicador_650: $segundoIndicador_650, \$a_cabecalhoTopicoOuNomeGeografico: ${$a_cabecalhoTopicoOuNomeGeografico}, \$b_cabecalhoTopicoSeguindoNomeGeografico: ${$b_cabecalhoTopicoSeguindoNomeGeografico}, \$c_localDoEvento: ${$c_localDoEvento}, \$d_dataDeRealizacaoDoEvento: ${$d_dataDeRealizacaoDoEvento}, \$e_termoDeRelacao_650: ${$e_termoDeRelacao_650}, \$g_informacoesAdicionais_650: ${$g_informacoesAdicionais_650}, \$v_subdivisaoDeForma: ${$v_subdivisaoDeForma}, \$x_subdivisaoGeral: ${$x_subdivisaoGeral}, \$y_subdivisaoCronologica: ${$y_subdivisaoCronologica}, \$z_subdivisaoGeografica: ${$z_subdivisaoGeografica}, \$0_numeroDeControleDoRegistroDeAutoridade_650: ${$0_numeroDeControleDoRegistroDeAutoridade_650}, \$2_fonteDoCabecalhoOuTermo: ${$2_fonteDoCabecalhoOuTermo}, \$3_materialEspecificado_650: ${$3_materialEspecificado_650}, \$4_relacao_650: ${$4_relacao_650}, \$6_ligacao_650: ${$6_ligacao_650}, \$8_campoDeLigacaoENumeroDeSequencia_650: ${$8_campoDeLigacaoENumeroDeSequencia_650}, nomePessoal_700_DataID: $nomePessoal_700_DataID, etiqueta_700: $etiqueta_700, primeiroIndicador_700: $primeiroIndicador_700, segundoIndicador_700: $segundoIndicador_700, \$a_nomePessoal_700: ${$a_nomePessoal_700}, \$b_algarismosRomanosQueSeguemOPrenome: ${$b_algarismosRomanosQueSeguemOPrenome}, \$c_titulosEOutrasPalavrasAssociadasAoNome_700: ${$c_titulosEOutrasPalavrasAssociadasAoNome_700}, \$d_datasAssociadasAoNome_700: ${$d_datasAssociadasAoNome_700}, \$e_termoDeRelacao_700: ${$e_termoDeRelacao_700}, \$f_dataDaPublicacaoDoTrabalho_700: ${$f_dataDaPublicacaoDoTrabalho_700}, \$g_informacoesAdicionais_700: ${$g_informacoesAdicionais_700}, \$h_meioDGM: ${$h_meioDGM}, \$i_informacoesSobreRelacoes: ${$i_informacoesSobreRelacoes}, \$j_atributo: ${$j_atributo}, \$k_subcabecalhos: ${$k_subcabecalhos}, \$l_idiomaDaPublicacao_700: ${$l_idiomaDaPublicacao_700}, \$m_instrumentosMusicais: ${$m_instrumentosMusicais}, \$n_numeroDaSecaoDaPublicacao_700: ${$n_numeroDaSecaoDaPublicacao_700}, \$o_arranjoMusical_700: ${$o_arranjoMusical_700}, \$p_nomeDaSecaoDaPublicacao_700: ${$p_nomeDaSecaoDaPublicacao_700}, \$q_formaCompletaDoNome_700: ${$q_formaCompletaDoNome_700}, \$r_escalaMusical_700: ${$r_escalaMusical_700}, \$s_versao_700: ${$s_versao_700}, \$t_tituloDaPublicacao_700: ${$t_tituloDaPublicacao_700}, \$u_afiliacao_700: ${$u_afiliacao_700}, \$x_ISSN: ${$x_ISSN}, \$0_numeroDeControleDoRegistroDeAutoridade_700: ${$0_numeroDeControleDoRegistroDeAutoridade_700}, \$3_materialEspecificado_700: ${$3_materialEspecificado_700}, \$4_relacao_700: ${$4_relacao_700}, \$5_codigoDaInstituicao_700: ${$5_codigoDaInstituicao_700}, \$6_ligacao_700: ${$6_ligacao_700}, \$8_campoDeLigacaoENumeroDeSequencia_700: ${$8_campoDeLigacaoENumeroDeSequencia_700}, localizacaoEAcessoEletronico_856_DataID: $localizacaoEAcessoEletronico_856_DataID, etiqueta_856: $etiqueta_856, primeiroIndicador_856: $primeiroIndicador_856, segundoIndicador_856: $segundoIndicador_856, \$a_nomeDoServidor: ${$a_nomeDoServidor}, \$b_numeroDoAcesso: ${$b_numeroDoAcesso}, \$c_informacoesSobreCompactacao: ${$c_informacoesSobreCompactacao}, \$d_caminho: ${$d_caminho}, \$f_nomeDoArquivoEletronico: ${$f_nomeDoArquivoEletronico}, \$h_username: ${$h_username}, \$i_instrucao: ${$i_instrucao}, \$j_bitsPorSegundo: ${$j_bitsPorSegundo}, \$k_password: ${$k_password}, \$l_login: ${$l_login}, \$m_contatoParaObterAjuda: ${$m_contatoParaObterAjuda}, \$n_nomeDaLocalizacaoDoServidor: ${$n_nomeDaLocalizacaoDoServidor}, \$o_sistemaOperativo: ${$o_sistemaOperativo}, \$p_porta: ${$p_porta}, \$q_tipoDoFormatoEletronico: ${$q_tipoDoFormatoEletronico}, \$r_configuracao: ${$r_configuracao}, \$s_tamanhoDoArquivo: ${$s_tamanhoDoArquivo}, \$t_emulacaoDeTerminal: ${$t_emulacaoDeTerminal}, \$u_identificadorUniformeDeRecursoURI: ${$u_identificadorUniformeDeRecursoURI}, \$v_horarioDeAcesso: ${$v_horarioDeAcesso}, \$w_numeroDeControleDeUmRegistro: ${$w_numeroDeControleDeUmRegistro}, \$x_notaInterna: ${$x_notaInterna}, \$y_textoDoLink: ${$y_textoDoLink}, \$z_notaDoPublico: ${$z_notaDoPublico}, \$2_metodoDeAcesso: ${$2_metodoDeAcesso}, \$3_materialEspecificado_856: ${$3_materialEspecificado_856}, \$6_ligacao_856: ${$6_ligacao_856}, \$8_campoDeLigacaoENumeroDeSequencia_856: ${$8_campoDeLigacaoENumeroDeSequencia_856}';
  }
}