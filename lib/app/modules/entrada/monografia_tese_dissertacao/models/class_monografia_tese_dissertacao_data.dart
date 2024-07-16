// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class ClassMonografiaTeseDissertacaoData {
  int monografiaTeseEDissertacaoDataID;
  //LIDER
  int liderID;
  int acervoDataID;
  int exemplarNumero;
  int exemplarDataID;
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
  //CDU
  int numeroDeClassificacaoUniversal_080_DataID;
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
  String $k_subcabecalho_100;
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
  //NOTA DE DISSERTAÇÃO OU TESE
  int notaDeDissertacaoOuTese_502_DataID;
  String etiqueta_502;
  String primeiroIndicador_502;
  String segundoIndicador_502;
  String $a_notaDeDissertacaoOuTese;
  String $6_ligacao_502;
  String $8_campoDeLigacaoENumeroDeSequencia_502;
  //NOTA DE BIBLIOGRAFIA
  int notaDeBibliografia_504_DataID;
  String etiqueta_504;
  String primeiroIndicador_504;
  String segundoIndicador_504;
  String $a_notaDeBibliografia;
  String $b_numeroDeReferencias;
  String $6_ligacao_504;
  String $8_campoDeLigacaoENumeroDeSequencia_504;
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
  //NOTA DE OUTROS FORMATOS DISPONÍVEIS
  int notaDeOutrosFormatosDisponiveis_530_DataID;
  String notas_5XX_DataID;
  String etiqueta_530;
  String primeiroIndicador_530;
  String segundoIndicador_530;
  String $a_outroFormatoDisponivel;
  String $b_fonte_530;
  String $c_condicoes;
  String $d_numeroDeOrdem;
  String $u_URI_530;
  String $3_materialEspecificado_530;
  String $6_ligacao_530;
  String $8_campoDeLigacaoENumeroDeSequencia_530;
  //ASSUNTO - ENTIDADE
  int entidade_610_DataID;
  String etiqueta_610;
  String primeiroIndicador_610;
  String segundoIndicador_610;
  String $a_nomeDaEntidadeOuLugar;
  String $b_unidadesSubordinadas_10;
  String $c_LocalDeRealizacaoDoEncontro;
  String $d_dataDeRealizacaoDoEvento_610;
  String $e_termoDeRelacao_610;
  String $f_dataDaPublicacaoDoTrabalho;
  String $g_informacoesAdicionais_610;
  String $h_meioDGM_610;
  String $k_subcabecalho_610;
  String $l_idiomaDaPublicacao_610;
  String $m_instrumentosMusicais_610;
  String $n_numeroDaSecaoOuEvento;
  String $o_arranjoMusical_610;
  String $p_nomeDaSecaoPublicada;
  String $r_escalaMusical_610;
  String $s_versao_610;
  String $t_tituloDaPublicacao_610;
  String $u_afiliacao_610;
  String $v_subdivisaoDeForma_610;
  String $x_subdivisaoGeral_610;
  String $y_subdivisaoCronologica_610;
  String $z_subdivisaoGeografica_610;
  String $0_numeroDeControleDoRegistroDeAutoridade_610;
  String $2_fonteDoCabecalhoOuTermo_610;
  String $3_materialEspecificado_610;
  String $4_relacao_610;
  String $6_ligacao_610;
  String $8_campoDeLigacaoENumeroDeSequencia_610;
  //ASSUNTO - TÓPICO
  int topico_650_DataID;
  String etiqueta_650;
  String primeiroIndicador_650;
  String segundoIndicador_650;
  String $a_cabecalhoTopicoOuNomeGeografico;
  String $b_cabecalhoTopicoSeguindoNomeGeografico;
  String $c_localDoEvento;
  String $d_dataDeRealizacaoDoEvento_650;
  String $e_termoDeRelacao_650;
  String $g_informacoesAdicionais_650;
  String $v_subdivisaoDeForma_650;
  String $x_subdivisaoGeral_650;
  String $y_subdivisaoCronologica_650;
  String $z_subdivisaoGeografica_650;
  String $0_numeroDeControleDoRegistroDeAutoridade_650;
  String $2_fonteDoCabecalhoOuTermo_650;
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
  String $h_meioDGM_700;
  String $i_informacoesSobreRelacoes_700;
  String $j_atributo;
  String $k_subcabecalhos;
  String $l_idiomaDaPublicacao_700;
  String $m_instrumentosMusicais_700;
  String $n_numeroDaSecaoDaPublicacao_700;
  String $o_arranjoMusical_700;
  String $p_nomeDaSecaoDaPublicacao_700;
  String $q_formaCompletaDoNome_700;
  String $r_escalaMusical_700;
  String $s_versao_700;
  String $t_tituloDaPublicacao_700;
  String $u_afiliacao_700;
  String $x_ISSN_700;
  String $0_numeroDeControleDoRegistroDeAutoridade_700;
  String $3_materialEspecificado_700;
  String $4_relacao_700;
  String $5_codigoDaInstituicao_700;
  String $6_ligacao_700;
  String $8_campoDeLigacaoENumeroDeSequencia_700;
  //ENTRADA SECUNDARIA - ENTIDADE
  int entidade_710_DataID;
  String etiqueta_710;
  String primeiroIndicador_710;
  String segundoIndicador_710;
  String $a_nomeDaEntidadeOuDoLugar;
  String $b_unidadesSubordinadas_710;
  String $c_localDeRealizacaoDoEvento;
  String $d_dataDeRealizacaoDoEvento;
  String $e_termoDeRelacao_710;
  String $f_dataDePublicacao;
  String $g_informacoesAdicionais_710;
  String $h_meioDGM;
  String $i_informacoesSobreRelacoes_710;
  String $k_subcabecalho;
  String $l_idiomaDaPublicacao_710;
  String $m_meioDeExecucaoParaMusica;
  String $n_numeroDaSecao;
  String $o_arranjoMusical_710;
  String $p_nomeDaSecaoDaPublicacao;
  String $r_escalaMusical_710;
  String $s_versao_710;
  String $t_tituloDaPublicacao_710;
  String $u_afiliacao_710;
  String $x_ISSN_710;
  String $0_numeroDeControleDoRegistroDeAutoridade_710;
  String $3_materialEspecificado_710;
  String $4_relacao_710;
  String $5_codigoDaInstituicao_710;
  String $6_ligacao_710;
  String $8_campoDeLigacaoENumeroDeSequencia_710;
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

  ClassMonografiaTeseDissertacaoData({
    this.monografiaTeseEDissertacaoDataID = 0,
    this.liderID = 0,
    this.acervoDataID = 0,
    this.exemplarNumero = 0,
    this.exemplarDataID = 0,
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
    this.numeroDeClassificacaoUniversal_080_DataID = 0,
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
    this.numeroDeChamadaLocal_090_DataID = 0,
    this.etiqueta_090 = '',
    this.primeiroIndicador_090 = '',
    this.segundoIndicador_090 = '',
    this.$a_classificacao = '',
    this.$b_numeroDeCutter = '',
    this.$c_anoDePublicacao = '',
    this.$d_tipoDeObra = '',
    this.$8_unidadeCatalogadora = '',
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
    this.$k_subcabecalho_100 = '',
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
    this.notaGeral_500_DataID = 0,
    this.etiqueta_500 = '',
    this.primeiroIndicador_500 = '',
    this.segundoIndicador_500 = '',
    this.$a_notaGeral = '',
    this.$3_materialEspecificado_500 = '',
    this.$5_codigoDaInstituicao_500 = '',
    this.$6_ligacao_500 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_500 = '',
    this.notaDeDissertacaoOuTese_502_DataID = 0,
    this.etiqueta_502 = '',
    this.primeiroIndicador_502 = '',
    this.segundoIndicador_502 = '',
    this.$a_notaDeDissertacaoOuTese = '',
    this.$6_ligacao_502 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_502 = '',
    this.notaDeBibliografia_504_DataID = 0,
    this.etiqueta_504 = '',
    this.primeiroIndicador_504 = '',
    this.segundoIndicador_504 = '',
    this.$a_notaDeBibliografia = '',
    this.$b_numeroDeReferencias = '',
    this.$6_ligacao_504 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_504 = '',
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
    this.notaDeOutrosFormatosDisponiveis_530_DataID = 0,
    this.notas_5XX_DataID = '',
    this.etiqueta_530 = '',
    this.primeiroIndicador_530 = '',
    this.segundoIndicador_530 = '',
    this.$a_outroFormatoDisponivel = '',
    this.$b_fonte_530 = '',
    this.$c_condicoes = '',
    this.$d_numeroDeOrdem = '',
    this.$u_URI_530 = '',
    this.$3_materialEspecificado_530 = '',
    this.$6_ligacao_530 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_530 = '',
    this.entidade_610_DataID = 0,
    this.etiqueta_610 = '',
    this.primeiroIndicador_610 = '',
    this.segundoIndicador_610 = '',
    this.$a_nomeDaEntidadeOuLugar = '',
    this.$b_unidadesSubordinadas_10 = '',
    this.$c_LocalDeRealizacaoDoEncontro = '',
    this.$d_dataDeRealizacaoDoEvento_610 = '',
    this.$e_termoDeRelacao_610 = '',
    this.$f_dataDaPublicacaoDoTrabalho = '',
    this.$g_informacoesAdicionais_610 = '',
    this.$h_meioDGM_610 = '',
    this.$k_subcabecalho_610 = '',
    this.$l_idiomaDaPublicacao_610 = '',
    this.$m_instrumentosMusicais_610 = '',
    this.$n_numeroDaSecaoOuEvento = '',
    this.$o_arranjoMusical_610 = '',
    this.$p_nomeDaSecaoPublicada = '',
    this.$r_escalaMusical_610 = '',
    this.$s_versao_610 = '',
    this.$t_tituloDaPublicacao_610 = '',
    this.$u_afiliacao_610 = '',
    this.$v_subdivisaoDeForma_610 = '',
    this.$x_subdivisaoGeral_610 = '',
    this.$y_subdivisaoCronologica_610 = '',
    this.$z_subdivisaoGeografica_610 = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_610 = '',
    this.$2_fonteDoCabecalhoOuTermo_610 = '',
    this.$3_materialEspecificado_610 = '',
    this.$4_relacao_610 = '',
    this.$6_ligacao_610 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_610 = '',
    this.topico_650_DataID = 0,
    this.etiqueta_650 = '',
    this.primeiroIndicador_650 = '',
    this.segundoIndicador_650 = '',
    this.$a_cabecalhoTopicoOuNomeGeografico = '',
    this.$b_cabecalhoTopicoSeguindoNomeGeografico = '',
    this.$c_localDoEvento = '',
    this.$d_dataDeRealizacaoDoEvento_650 = '',
    this.$e_termoDeRelacao_650 = '',
    this.$g_informacoesAdicionais_650 = '',
    this.$v_subdivisaoDeForma_650 = '',
    this.$x_subdivisaoGeral_650 = '',
    this.$y_subdivisaoCronologica_650 = '',
    this.$z_subdivisaoGeografica_650 = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_650 = '',
    this.$2_fonteDoCabecalhoOuTermo_650 = '',
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
    this.$h_meioDGM_700 = '',
    this.$i_informacoesSobreRelacoes_700 = '',
    this.$j_atributo = '',
    this.$k_subcabecalhos = '',
    this.$l_idiomaDaPublicacao_700 = '',
    this.$m_instrumentosMusicais_700 = '',
    this.$n_numeroDaSecaoDaPublicacao_700 = '',
    this.$o_arranjoMusical_700 = '',
    this.$p_nomeDaSecaoDaPublicacao_700 = '',
    this.$q_formaCompletaDoNome_700 = '',
    this.$r_escalaMusical_700 = '',
    this.$s_versao_700 = '',
    this.$t_tituloDaPublicacao_700 = '',
    this.$u_afiliacao_700 = '',
    this.$x_ISSN_700 = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_700 = '',
    this.$3_materialEspecificado_700 = '',
    this.$4_relacao_700 = '',
    this.$5_codigoDaInstituicao_700 = '',
    this.$6_ligacao_700 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_700 = '',
    this.entidade_710_DataID = 0,
    this.etiqueta_710 = '',
    this.primeiroIndicador_710 = '',
    this.segundoIndicador_710 = '',
    this.$a_nomeDaEntidadeOuDoLugar = '',
    this.$b_unidadesSubordinadas_710 = '',
    this.$c_localDeRealizacaoDoEvento = '',
    this.$d_dataDeRealizacaoDoEvento = '',
    this.$e_termoDeRelacao_710 = '',
    this.$f_dataDePublicacao = '',
    this.$g_informacoesAdicionais_710 = '',
    this.$h_meioDGM = '',
    this.$i_informacoesSobreRelacoes_710 = '',
    this.$k_subcabecalho = '',
    this.$l_idiomaDaPublicacao_710 = '',
    this.$m_meioDeExecucaoParaMusica = '',
    this.$n_numeroDaSecao = '',
    this.$o_arranjoMusical_710 = '',
    this.$p_nomeDaSecaoDaPublicacao = '',
    this.$r_escalaMusical_710 = '',
    this.$s_versao_710 = '',
    this.$t_tituloDaPublicacao_710 = '',
    this.$u_afiliacao_710 = '',
    this.$x_ISSN_710 = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade_710 = '',
    this.$3_materialEspecificado_710 = '',
    this.$4_relacao_710 = '',
    this.$5_codigoDaInstituicao_710 = '',
    this.$6_ligacao_710 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_710 = '',
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
      'monografiaTeseEDissertacaoDataID': monografiaTeseEDissertacaoDataID,
      'liderID': liderID,
      'acervoDataID': acervoDataID,
      'exemplarNumero': exemplarNumero,
      'exemplarDataID': exemplarDataID,
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
      'tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20':
          tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20,
      'tamanhoDaPosicaoDoCaractereDeInicio_21':
          tamanhoDaPosicaoDoCaractereDeInicio_21,
      'tamanhoDaParteDefinidaParaImplementacao_22':
          tamanhoDaParteDefinidaParaImplementacao_22,
      'entradaNaoDefinida_23': entradaNaoDefinida_23,
      'camposDeControle_00X_DataID': camposDeControle_00X_DataID,
      'numeroDeControle_001': numeroDeControle_001,
      'codigoAgenciaCatalogadora_003': codigoAgenciaCatalogadora_003,
      'dataEHoraUltimaAtualizacao_005': dataEHoraUltimaAtualizacao_005,
      'todosOsMateriais_008_DataID': todosOsMateriais_008_DataID,
      'etiqueta_008': etiqueta_008,
      'dataDeEntradaDoRegistroNoArquivo_00_05':
          dataDeEntradaDoRegistroNoArquivo_00_05,
      'tipodeDataOuStatusDePublicacao_06': tipodeDataOuStatusDePublicacao_06,
      'data1_07_10': data1_07_10,
      'data2_11_14': data2_11_14,
      'lugarDePublicacaoProducaoExecucao_15_17':
          lugarDePublicacaoProducaoExecucao_15_17,
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
      'fonteDeCatalogacao_040_DataID': fonteDeCatalogacao_040_DataID,
      'etiqueta_040': etiqueta_040,
      'primeiroIndicador_040': primeiroIndicador_040,
      'segundoIndicador_040': segundoIndicador_040,
      '\$a_codigoDaAgenciaCatalogadora': $a_codigoDaAgenciaCatalogadora,
      '\$b_idiomaCatalogacao': $b_idiomaCatalogacao,
      '\$c_agenciaQueTranscreveuORegistro': $c_agenciaQueTranscreveuORegistro,
      '\$d_agenciaQueAlterouORegistro': $d_agenciaQueAlterouORegistro,
      '\$e_fontesConvencionaisDedescricaoDeDados':
          $e_fontesConvencionaisDedescricaoDeDados,
      '\$6_ligacao_040': $6_ligacao_040,
      '\$8_campoDeLigacaoENumeroDeSequencia_040':
          $8_campoDeLigacaoENumeroDeSequencia_040,
      'numeroDeClassificacaoDecimalUniversal_080_DataID':
          numeroDeClassificacaoUniversal_080_DataID,
      'etiqueta_080': etiqueta_080,
      'primeiroIndicador_080': primeiroIndicador_080,
      'segundoIndicador_080': segundoIndicador_080,
      '\$a_numeroDeClassificacaoDecimalUniversal':
          $a_numeroDeClassificacaoDecimalUniversal,
      '\$b_numeroDoItem': $b_numeroDoItem,
      '\$x_subdivisaoAuxiliarComum': $x_subdivisaoAuxiliarComum,
      '\$0_numeroDeControleDoRegistroDeAutoridades':
          $0_numeroDeControleDoRegistroDeAutoridades,
      '\$2_numeroDeEdicao': $2_numeroDeEdicao,
      '\$6_ligacao_080': $6_ligacao_080,
      '\$8_campoDeLigacaoENumeroDeSequencia_080':
          $8_campoDeLigacaoENumeroDeSequencia_080,
      'numeroDeChamadaLocal_090_DataID': numeroDeChamadaLocal_090_DataID,
      'etiqueta_090': etiqueta_090,
      'primeiroIndicador_090': primeiroIndicador_090,
      'segundoIndicador_090': segundoIndicador_090,
      '\$a_classificacao': $a_classificacao,
      '\$b_numeroDeCutter': $b_numeroDeCutter,
      '\$c_anoDePublicacao': $c_anoDePublicacao,
      '\$d_tipoDeObra': $d_tipoDeObra,
      '\$8_unidadeCatalogadora': $8_unidadeCatalogadora,
      'nomePessoal_100_DataID': nomePessoal_100_DataID,
      'etiqueta_100': etiqueta_100,
      'primeiroIndicador_100': primeiroIndicador_100,
      'segundoIndicador_100': segundoIndicador_100,
      '\$a_nomePessoal_100': $a_nomePessoal_100,
      '\$b_algarismosRomanosQueSeguemPrenome':
          $b_algarismosRomanosQueSeguemPrenome,
      '\$c_titulosEOutrasPalavrasAssociadasAoNome_100':
          $c_titulosEOutrasPalavrasAssociadasAoNome_100,
      '\$d_datasAssociadasAoNome_100': $d_datasAssociadasAoNome_100,
      '\$e_termoDeRelacao_100': $e_termoDeRelacao_100,
      '\$f_dataDaPublicacaoDoTrabalho_100': $f_dataDaPublicacaoDoTrabalho_100,
      '\$g_informacoesAdicionais_100': $g_informacoesAdicionais_100,
      '\$j_atributoQualificador': $j_atributoQualificador,
      '\$k_subcabecalho_100': $k_subcabecalho_100,
      '\$l_idiomaDaPublicacao_100': $l_idiomaDaPublicacao_100,
      '\$n_numeroDaSecaoDaPublicacao_100': $n_numeroDaSecaoDaPublicacao_100,
      '\$p_nomeDaSecaoDaPublicacao_100': $p_nomeDaSecaoDaPublicacao_100,
      '\$q_formaCompletaDoNome_100': $q_formaCompletaDoNome_100,
      '\$t_tituloDaPublicacao_100': $t_tituloDaPublicacao_100,
      '\$u_afiliacao_100': $u_afiliacao_100,
      '\$0_numeroDeControleDoRegistroDeAutoridade_100':
          $0_numeroDeControleDoRegistroDeAutoridade_100,
      '\$4_relacao_100': $4_relacao_100,
      '\$6_ligacao_100': $6_ligacao_100,
      '\$8_campoDeLigacaoENumeroDeSequencia_100':
          $8_campoDeLigacaoENumeroDeSequencia_100,
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
      '\$8_campoDeLigacaoENumeroDeSequencia_245':
          $8_campoDeLigacaoENumeroDeSequencia_245,
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
      '\$8_campoDeLigacaoENumeroDeSequencia_260':
          $8_campoDeLigacaoENumeroDeSequencia_260,
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
      '\$8_campoDeLigacaoENumeroDeSequencia_300':
          $8_campoDeLigacaoENumeroDeSequencia_300,
      'notageral_500_dataID': notaGeral_500_DataID,
      'etiqueta_500': etiqueta_500,
      'primeiroIndicador_500': primeiroIndicador_500,
      'segundoIndicador_500': segundoIndicador_500,
      '\$a_notaGeral': $a_notaGeral,
      '\$3_materialEspecificado_500': $3_materialEspecificado_500,
      '\$5_codigoDaInstituicao_500': $5_codigoDaInstituicao_500,
      '\$6_ligacao_500': $6_ligacao_500,
      '\$8_campoDeLigacaoENumeroDeSequencia_500':
          $8_campoDeLigacaoENumeroDeSequencia_500,
      'notaDeDissertacaoOuTese_502_DataID': notaDeDissertacaoOuTese_502_DataID,
      'etiqueta_502': etiqueta_502,
      'primeiroIndicador_502': primeiroIndicador_502,
      'segundoIndicador_502': segundoIndicador_502,
      '\$a_notaDeDissertacaoOuTese': $a_notaDeDissertacaoOuTese,
      '\$6_ligacao_502': $6_ligacao_502,
      '\$8_campoDeLigacaoENumeroDeSequencia_502':
          $8_campoDeLigacaoENumeroDeSequencia_502,
      'notaDeBibliografia_504_DataID': notaDeBibliografia_504_DataID,
      'etiqueta_504': etiqueta_504,
      'primeiroIndicador_504': primeiroIndicador_504,
      'segundoIndicador_504': segundoIndicador_504,
      '\$a_notaDeBibliografia': $a_notaDeBibliografia,
      '\$b_numeroDeReferencias': $b_numeroDeReferencias,
      '\$6_ligacao_504': $6_ligacao_504,
      '\$8_campoDeLigacaoENumeroDeSequencia_504':
          $8_campoDeLigacaoENumeroDeSequencia_504,
      'notaDeResumo_520_DataID': notaDeResumo_520_DataID,
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
      '\$8_campoDeLigacaoENumeroDeSequencia_520':
          $8_campoDeLigacaoENumeroDeSequencia_520,
      'notaDeOutrosFormatosDisponiveis_530_DataID':
          notaDeOutrosFormatosDisponiveis_530_DataID,
      'notas_5XX_DataID': notas_5XX_DataID,
      'etiqueta_530': etiqueta_530,
      'primeiroIndicador_530': primeiroIndicador_530,
      'segundoIndicador_530': segundoIndicador_530,
      '\$a_outroFormatoDisponivel': $a_outroFormatoDisponivel,
      '\$b_fonte_530': $b_fonte_530,
      '\$c_condicoes': $c_condicoes,
      '\$d_numeroDeOrdem': $d_numeroDeOrdem,
      '\$u_URI_530': $u_URI_530,
      '\$3_materialEspecificado_530': $3_materialEspecificado_530,
      '\$6_ligacao_530': $6_ligacao_530,
      '\$8_campoDeLigacaoENumeroDeSequencia_530':
          $8_campoDeLigacaoENumeroDeSequencia_530,
      'entidade_610_DataID': entidade_610_DataID,
      'etiqueta_610': etiqueta_610,
      'primeiroIndicador_610': primeiroIndicador_610,
      'segundoIndicador_610': segundoIndicador_610,
      '\$a_nomeDaEntidadeOuLugar': $a_nomeDaEntidadeOuLugar,
      '\$b_unidadesSubordinadas_10': $b_unidadesSubordinadas_10,
      '\$c_LocalDeRealizacaoDoEncontro': $c_LocalDeRealizacaoDoEncontro,
      '\$d_dataDeRealizacaoDoEvento_610': $d_dataDeRealizacaoDoEvento_610,
      '\$e_termoDeRelacao_610': $e_termoDeRelacao_610,
      '\$f_dataDaPublicacaoDoTrabalho': $f_dataDaPublicacaoDoTrabalho,
      '\$g_informacoesAdicionais_610': $g_informacoesAdicionais_610,
      '\$h_meioDGM_610': $h_meioDGM_610,
      '\$k_subcabecalho_610': $k_subcabecalho_610,
      '\$l_idiomaDaPublicacao_610': $l_idiomaDaPublicacao_610,
      '\$m_instrumentosMusicais_610': $m_instrumentosMusicais_610,
      '\$n_numeroDaSecaoOuEvento': $n_numeroDaSecaoOuEvento,
      '\$o_arranjoMusical_610': $o_arranjoMusical_610,
      '\$p_nomeDaSecaoPublicada': $p_nomeDaSecaoPublicada,
      '\$r_escalaMusical_610': $r_escalaMusical_610,
      '\$s_versao_610': $s_versao_610,
      '\$t_tituloDaPublicacao_610': $t_tituloDaPublicacao_610,
      '\$u_afiliacao_610': $u_afiliacao_610,
      '\$v_subdivisaoDeForma_610': $v_subdivisaoDeForma_610,
      '\$x_subdivisaoGeral_610': $x_subdivisaoGeral_610,
      '\$y_subdivisaoCronologica_610': $y_subdivisaoCronologica_610,
      '\$z_subdivisaoGeografica_610': $z_subdivisaoGeografica_610,
      '\$0_numeroDeControleDoRegistroDeAutoridade_610':
          $0_numeroDeControleDoRegistroDeAutoridade_610,
      '\$2_fonteDoCabecalhoOuTermo_610': $2_fonteDoCabecalhoOuTermo_610,
      '\$3_materialEspecificado_610': $3_materialEspecificado_610,
      '\$4_relacao_610': $4_relacao_610,
      '\$6_ligacao_610': $6_ligacao_610,
      '\$8_campoDeLigacaoENumeroDeSequencia_610':
          $8_campoDeLigacaoENumeroDeSequencia_610,
      'topico_650_DataID': topico_650_DataID,
      'etiqueta_650': etiqueta_650,
      'primeiroIndicador_650': primeiroIndicador_650,
      'segundoIndicador_650': segundoIndicador_650,
      '\$a_cabecalhoTopicoOuNomeGeografico': $a_cabecalhoTopicoOuNomeGeografico,
      '\$b_cabecalhoTopicoSeguindoNomeGeografico':
          $b_cabecalhoTopicoSeguindoNomeGeografico,
      '\$c_localDoEvento': $c_localDoEvento,
      '\$d_dataDeRealizacaoDoEvento_650': $d_dataDeRealizacaoDoEvento_650,
      '\$e_termoDeRelacao_650': $e_termoDeRelacao_650,
      '\$g_informacoesAdicionais_650': $g_informacoesAdicionais_650,
      '\$v_subdivisaoDeForma_650': $v_subdivisaoDeForma_650,
      '\$x_subdivisaoGeral_650': $x_subdivisaoGeral_650,
      '\$y_subdivisaoCronologica_650': $y_subdivisaoCronologica_650,
      '\$z_subdivisaoGeografica_650': $z_subdivisaoGeografica_650,
      '\$0_numeroDeControleDoRegistroDeAutoridade_650':
          $0_numeroDeControleDoRegistroDeAutoridade_650,
      '\$2_fonteDoCabecalhoOuTermo_650': $2_fonteDoCabecalhoOuTermo_650,
      '\$3_materialEspecificado_650': $3_materialEspecificado_650,
      '\$4_relacao_650': $4_relacao_650,
      '\$6_ligacao_650': $6_ligacao_650,
      '\$8_campoDeLigacaoENumeroDeSequencia_650':
          $8_campoDeLigacaoENumeroDeSequencia_650,
      'nomePessoal_700_DataID': nomePessoal_700_DataID,
      'etiqueta_700': etiqueta_700,
      'primeiroIndicador_700': primeiroIndicador_700,
      'segundoIndicador_700': segundoIndicador_700,
      '\$a_nomePessoal_700': $a_nomePessoal_700,
      '\$b_algarismosRomanosQueSeguemOPrenome':
          $b_algarismosRomanosQueSeguemOPrenome,
      '\$c_titulosEOutrasPalavrasAssociadasAoNome_700':
          $c_titulosEOutrasPalavrasAssociadasAoNome_700,
      '\$d_datasAssociadasAoNome_700': $d_datasAssociadasAoNome_700,
      '\$e_termoDeRelacao_700': $e_termoDeRelacao_700,
      '\$f_dataDaPublicacaoDoTrabalho_700': $f_dataDaPublicacaoDoTrabalho_700,
      '\$g_informacoesAdicionais_700': $g_informacoesAdicionais_700,
      '\$h_meioDGM_700': $h_meioDGM_700,
      '\$i_informacoesSobreRelacoes_700': $i_informacoesSobreRelacoes_700,
      '\$j_atributo': $j_atributo,
      '\$k_subcabecalhos': $k_subcabecalhos,
      '\$l_idiomaDaPublicacao_700': $l_idiomaDaPublicacao_700,
      '\$m_instrumentosMusicais_700': $m_instrumentosMusicais_700,
      '\$n_numeroDaSecaoDaPublicacao_700': $n_numeroDaSecaoDaPublicacao_700,
      '\$o_arranjoMusical_700': $o_arranjoMusical_700,
      '\$p_nomeDaSecaoDaPublicacao_700': $p_nomeDaSecaoDaPublicacao_700,
      '\$q_formaCompletaDoNome_700': $q_formaCompletaDoNome_700,
      '\$r_escalaMusical_700': $r_escalaMusical_700,
      '\$s_versao_700': $s_versao_700,
      '\$t_tituloDaPublicacao_700': $t_tituloDaPublicacao_700,
      '\$u_afiliacao_700': $u_afiliacao_700,
      '\$x_ISSN_700': $x_ISSN_700,
      '\$0_numeroDeControleDoRegistroDeAutoridade_700':
          $0_numeroDeControleDoRegistroDeAutoridade_700,
      '\$3_materialEspecificado_700': $3_materialEspecificado_700,
      '\$4_relacao_700': $4_relacao_700,
      '\$5_codigoDaInstituicao_700': $5_codigoDaInstituicao_700,
      '\$6_ligacao_700': $6_ligacao_700,
      '\$8_campoDeLigacaoENumeroDeSequencia_700':
          $8_campoDeLigacaoENumeroDeSequencia_700,
      'entidade_710_DataID': entidade_710_DataID,
      'etiqueta_710': etiqueta_710,
      'primeiroIndicador_710': primeiroIndicador_710,
      'segundoIndicador_710': segundoIndicador_710,
      '\$a_nomeDaEntidadeOuDoLugar': $a_nomeDaEntidadeOuDoLugar,
      '\$b_unidadesSubordinadas_710': $b_unidadesSubordinadas_710,
      '\$c_localDeRealizacaoDoEvento': $c_localDeRealizacaoDoEvento,
      '\$d_dataDeRealizacaoDoEvento': $d_dataDeRealizacaoDoEvento,
      '\$e_termoDeRelacao_710': $e_termoDeRelacao_710,
      '\$f_dataDePublicacao': $f_dataDePublicacao,
      '\$g_informacoesAdicionais_710': $g_informacoesAdicionais_710,
      '\$h_meioDGM': $h_meioDGM,
      '\$i_informacoesSobreRelacoes_710': $i_informacoesSobreRelacoes_710,
      '\$k_subcabecalho': $k_subcabecalho,
      '\$l_idiomaDaPublicacao_710': $l_idiomaDaPublicacao_710,
      '\$m_meioDeExecucaoParaMusica': $m_meioDeExecucaoParaMusica,
      '\$n_numeroDaSecao': $n_numeroDaSecao,
      '\$o_arranjoMusical_710': $o_arranjoMusical_710,
      '\$p_nomeDaSecaoDaPublicacao': $p_nomeDaSecaoDaPublicacao,
      '\$r_escalaMusical_710': $r_escalaMusical_710,
      '\$s_versao_710': $s_versao_710,
      '\$t_tituloDaPublicacao_710': $t_tituloDaPublicacao_710,
      '\$u_afiliacao_710': $u_afiliacao_710,
      '\$x_ISSN_710': $x_ISSN_710,
      '\$0_numeroDeControleDoRegistroDeAutoridade_710':
          $0_numeroDeControleDoRegistroDeAutoridade_710,
      '\$3_materialEspecificado_710': $3_materialEspecificado_710,
      '\$4_relacao_710': $4_relacao_710,
      '\$5_codigoDaInstituicao_710': $5_codigoDaInstituicao_710,
      '\$6_ligacao_710': $6_ligacao_710,
      '\$8_campoDeLigacaoENumeroDeSequencia_710':
          $8_campoDeLigacaoENumeroDeSequencia_710,
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

  factory ClassMonografiaTeseDissertacaoData.fromMap(Map<String, dynamic> map) {
    return ClassMonografiaTeseDissertacaoData(
      monografiaTeseEDissertacaoDataID: (map['monografiaTeseEDissertacaoDataID'] ?? 0) as int,
      liderID: (map['liderID'] ?? 0) as int,
      acervoDataID: (map['acervoDataID'] ?? 0) as int,
      exemplarNumero: (map['exemplarNumero'] ?? 0) as int,
      exemplarDataID: (map['exemplarDataID'] ?? 0) as int,
      etiqueta_000: (map['etiqueta_000'] ?? '') as String,
      tamanhoDoRegistro_00_04: (map['tamanhoDoRegistro_00_04'] ?? '') as String,
      statusDoRegistro_05: (map['statusDoRegistro_05'] ?? '') as String,
      tipoDeRegistro_06: (map['tipoDeRegistro_06'] ?? '') as String,
      nivelBibliografico_07: (map['nivelBibliografico_07'] ?? '') as String,
      tipodeControle_08: (map['tipodeControle_08'] ?? '') as String,
      esquemaDeCodificacaoDeCaractere_09: (map['esquemaDeCodificacaoDeCaractere_09'] ?? '') as String,
      numeroDeIndicadores_10: (map['numeroDeIndicadores_10'] ?? '') as String,
      numeroDeSubcampos_11: (map['numeroDeSubcampos_11'] ?? '') as String,
      enderecoDeDados_12_16: (map['enderecoDeDados_12_16'] ?? '') as String,
      nivelDeCodificacao_17: (map['nivelDeCodificacao_17'] ?? '') as String,
      formaDeCatalogacaoDescritiva_18: (map['formaDeCatalogacaoDescritiva_18'] ?? '') as String,
      nivelDeRegistroDeRecurso_19: (map['nivelDeRegistroDeRecurso_19'] ?? '') as String,
      tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20: (map['tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20'] ?? '') as String,
      tamanhoDaPosicaoDoCaractereDeInicio_21: (map['tamanhoDaPosicaoDoCaractereDeInicio_21'] ?? '') as String,
      tamanhoDaParteDefinidaParaImplementacao_22: (map['tamanhoDaParteDefinidaParaImplementacao_22'] ?? '') as String,
      entradaNaoDefinida_23: (map['entradaNaoDefinida_23'] ?? '') as String,
      camposDeControle_00X_DataID: (map['camposDeControle_00X_DataID'] ?? 0) as int,
      numeroDeControle_001: (map['numeroDeControle_001'] ?? '') as String,
      codigoAgenciaCatalogadora_003: (map['codigoAgenciaCatalogadora_003'] ?? '') as String,
      dataEHoraUltimaAtualizacao_005: (map['dataEHoraUltimaAtualizacao_005'] ?? '') as String,
      todosOsMateriais_008_DataID: (map['todosOsMateriais_008_DataID'] ?? 0) as int,
      etiqueta_008: (map['etiqueta_008'] ?? '') as String,
      dataDeEntradaDoRegistroNoArquivo_00_05: (map['dataDeEntradaDoRegistroNoArquivo_00_05'] ?? '') as String,
      tipodeDataOuStatusDePublicacao_06: (map['tipodeDataOuStatusDePublicacao_06'] ?? '') as String,
      data1_07_10: (map['data1_07_10'] ?? '') as String,
      data2_11_14: (map['data2_11_14'] ?? '') as String,
      lugarDePublicacaoProducaoExecucao_15_17: (map['lugarDePublicacaoProducaoExecucao_15_17'] ?? '') as String,
      tipoDeMaterial_18_34: (map['tipoDeMaterial_18_34'] ?? '') as String,
      idiomaDoTextoDoDocumento_35_37: (map['idiomaDoTextoDoDocumento_35_37'] ?? '') as String,
      registroModificado_38: (map['registroModificado_38'] ?? '') as String,
      fonteDeCatalogacao_39: (map['fonteDeCatalogacao_39'] ?? '') as String,
      livros_008_DataID: (map['livros_008_DataID'] ?? 0) as int,
      ilustracoes_18_21: (map['ilustracoes_18_21'] ?? '') as String,
      publicoAlvo_22: (map['publicoAlvo_22'] ?? '') as String,
      formaDoDocumento_23: (map['formaDoDocumento_23'] ?? '') as String,
      naturezaDoConteudo_24_27: (map['naturezaDoConteudo_24_27'] ?? '') as String,
      publicacaoGovernamental_28: (map['publicacaoGovernamental_28'] ?? '') as String,
      publicacaoDeConferencia_29: (map['publicacaoDeConferencia_29'] ?? '') as String,
      obraComemorativa_30: (map['obraComemorativa_30'] ?? '') as String,
      indice_31: (map['indice_31'] ?? '') as String,
      indefinido_32: (map['indefinido_32'] ?? '') as String,
      formaLiteraria_33: (map['formaLiteraria_33'] ?? '') as String,
      biografia_34: (map['biografia_34'] ?? '') as String,
      fonteDeCatalogacao_040_DataID: (map['fonteDeCatalogacao_040_DataID'] ?? 0) as int,
      etiqueta_040: (map['etiqueta_040'] ?? '') as String,
      primeiroIndicador_040: (map['primeiroIndicador_040'] ?? '') as String,
      segundoIndicador_040: (map['segundoIndicador_040'] ?? '') as String,
      $a_codigoDaAgenciaCatalogadora: (map['\$a_codigoDaAgenciaCatalogadora'] ?? '') as String,
      $b_idiomaCatalogacao: (map['\$b_idiomaCatalogacao'] ?? '') as String,
      $c_agenciaQueTranscreveuORegistro: (map['\$c_agenciaQueTranscreveuORegistro'] ?? '') as String,
      $d_agenciaQueAlterouORegistro: (map['\$d_agenciaQueAlterouORegistro'] ?? '') as String,
      $e_fontesConvencionaisDedescricaoDeDados: (map['\$e_fontesConvencionaisDedescricaoDeDados'] ?? '') as String,
      $6_ligacao_040: (map['\$6_ligacao_040'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_040: (map['\$8_campoDeLigacaoENumeroDeSequencia_040'] ?? '') as String,
      numeroDeClassificacaoUniversal_080_DataID: (map['numeroDeClassificacaoDecimalUniversal_080_DataID'] ?? 0) as int,
      etiqueta_080: (map['etiqueta_080'] ?? '') as String,
      primeiroIndicador_080: (map['primeiroIndicador_080'] ?? '') as String,
      segundoIndicador_080: (map['segundoIndicador_080'] ?? '') as String,
      $a_numeroDeClassificacaoDecimalUniversal: (map['\$a_numeroDeClassificacaoDecimalUniversal'] ?? '') as String,
      $b_numeroDoItem: (map['\$b_numeroDoItem'] ?? '') as String,
      $x_subdivisaoAuxiliarComum: (map['\$x_subdivisaoAuxiliarComum'] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridades: (map['\$0_numeroDeControleDoRegistroDeAutoridades'] ?? '') as String,
      $2_numeroDeEdicao: (map['\$2_numeroDeEdicao'] ?? '') as String,
      $6_ligacao_080: (map['\$6_ligacao_080'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_080: (map['\$8_campoDeLigacaoENumeroDeSequencia_080'] ?? '') as String,
      numeroDeChamadaLocal_090_DataID: (map['numeroDeChamadaLocal_090_DataID'] ?? 0) as int,
      etiqueta_090: (map['etiqueta_090'] ?? '') as String,
      primeiroIndicador_090: (map['primeiroIndicador_090'] ?? '') as String,
      segundoIndicador_090: (map['segundoIndicador_090'] ?? '') as String,
      $a_classificacao: (map['\$a_classificacao'] ?? '') as String,
      $b_numeroDeCutter: (map['\$b_numeroDeCutter'] ?? '') as String,
      $c_anoDePublicacao: (map['\$c_anoDePublicacao'] ?? '') as String,
      $d_tipoDeObra: (map['\$d_tipoDeObra'] ?? '') as String,
      $8_unidadeCatalogadora: (map['\$8_unidadeCatalogadora'] ?? '') as String,
      nomePessoal_100_DataID: (map['nomePessoal_100_DataID'] ?? 0) as int,
      etiqueta_100: (map['etiqueta_100'] ?? '') as String,
      primeiroIndicador_100: (map['primeiroIndicador_100'] ?? '') as String,
      segundoIndicador_100: (map['segundoIndicador_100'] ?? '') as String,
      $a_nomePessoal_100: (map['\$a_nomePessoal_100'] ?? '') as String,
      $b_algarismosRomanosQueSeguemPrenome: (map['\$b_algarismosRomanosQueSeguemPrenome'] ?? '') as String,
      $c_titulosEOutrasPalavrasAssociadasAoNome_100: (map['\$c_titulosEOutrasPalavrasAssociadasAoNome_100'] ?? '') as String,
      $d_datasAssociadasAoNome_100: (map['\$d_datasAssociadasAoNome_100'] ?? '') as String,
      $e_termoDeRelacao_100: (map['\$e_termoDeRelacao_100'] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_100: (map['\$f_dataDaPublicacaoDoTrabalho_100'] ?? '') as String,
      $g_informacoesAdicionais_100: (map['\$g_informacoesAdicionais_100'] ?? '') as String,
      $j_atributoQualificador: (map['\$j_atributoQualificador'] ?? '') as String,
      $k_subcabecalho_100: (map['\$k_subcabecalho_100'] ?? '') as String,
      $l_idiomaDaPublicacao_100: (map['\$l_idiomaDaPublicacao_100'] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_100: (map['\$n_numeroDaSecaoDaPublicacao_100'] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_100: (map['\$p_nomeDaSecaoDaPublicacao_100'] ?? '') as String,
      $q_formaCompletaDoNome_100: (map['\$q_formaCompletaDoNome_100'] ?? '') as String,
      $t_tituloDaPublicacao_100: (map['\$t_tituloDaPublicacao_100'] ?? '') as String,
      $u_afiliacao_100: (map['\$u_afiliacao_100'] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_100: (map['\$0_numeroDeControleDoRegistroDeAutoridade_100'] ?? '') as String,
      $4_relacao_100: (map['\$4_relacao_100'] ?? '') as String,
      $6_ligacao_100: (map['\$6_ligacao_100'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_100: (map['\$8_campoDeLigacaoENumeroDeSequencia_100'] ?? '') as String,
      tituloPrincipal_245_DataID: (map['tituloPrincipal_245_DataID'] ?? 0) as int,
      etiqueta_245: (map['etiqueta_245'] ?? '') as String,
      primeiroIndicador_245: (map['primeiroIndicador_245'] ?? '') as String,
      segundoIndicador_245: (map['segundoIndicador_245'] ?? '') as String,
      $a_tituloPrincipal: (map['\$a_tituloPrincipal'] ?? '') as String,
      $b_subtitulo: (map['\$b_subtitulo'] ?? '') as String,
      $c_indicacaoDeResponsabilidade: (map['\$c_indicacaoDeResponsabilidade'] ?? '') as String,
      $f_datasDeAbrangencia: (map['\$f_datasDeAbrangencia'] ?? '') as String,
      $g_conjuntoDeDatas: (map['\$g_conjuntoDeDatas'] ?? '') as String,
      $h_meioDGM_245: (map['\$h_meioDGM_245'] ?? '') as String,
      $k_formaDoMaterial: (map['\$k_formaDoMaterial'] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_245: (map['\$n_numeroDaSecaoDaPublicacao_245'] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_245: (map['\$p_nomeDaSecaoDaPublicacao_245'] ?? '') as String,
      $s_versao_245: (map['\$s_versao_245'] ?? '') as String,
      $6_ligacao_245: (map['\$6_ligacao_245'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_245: (map['\$8_campoDeLigacaoENumeroDeSequencia_245'] ?? '') as String,
      imprenta_260_DataID: (map['imprenta_260_DataID'] ?? 0) as int,
      etiqueta_260: (map['etiqueta_260'] ?? '') as String,
      primeiroIndicador_260: (map['primeiroIndicador_260'] ?? '') as String,
      segundoIndicador_260: (map['segundoIndicador_260'] ?? '') as String,
      $a_lugarDePublicacao: (map['\$a_lugarDePublicacao'] ?? '') as String,
      $b_nomeDoEditor: (map['\$b_nomeDoEditor'] ?? '') as String,
      $c_dataDePublicacao: (map['\$c_dataDePublicacao'] ?? '') as String,
      $e_lugarDeFabricacao: (map['\$e_lugarDeFabricacao'] ?? '') as String,
      $f_nomeDoFabricante: (map['\$f_nomeDoFabricante'] ?? '') as String,
      $g_dataDeFabricacao: (map['\$g_dataDeFabricacao'] ?? '') as String,
      $3_materialEspecificado_260: (map['\$3_materialEspecificado_260'] ?? '') as String,
      $6_ligacao_260: (map['\$6_ligacao_260'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_260: (map['\$8_campoDeLigacaoENumeroDeSequencia_260'] ?? '') as String,
      descricaoFisica_300_DataID: (map['descricaoFisica_300_DataID'] ?? 0) as int,
      etiqueta_300: (map['etiqueta_300'] ?? '') as String,
      primeiroIndicador_300: (map['primeiroIndicador_300'] ?? '') as String,
      segundoIndicador_300: (map['segundoIndicador_300'] ?? '') as String,
      $a_extensao: (map['\$a_extensao'] ?? '') as String,
      $b_detalhesFisicosAdicionais: (map['\$b_detalhesFisicosAdicionais'] ?? '') as String,
      $c_dimensoes: (map['\$c_dimensoes'] ?? '') as String,
      $e_materialAdicional: (map['\$e_materialAdicional'] ?? '') as String,
      $f_tipoDeUnidade: (map['\$f_tipoDeUnidade'] ?? '') as String,
      $g_tamanhoDaUnidade: (map['\$g_tamanhoDaUnidade'] ?? '') as String,
      $3_materialEspecificado_300: (map['\$3_materialEspecificado_300'] ?? '') as String,
      $6_ligacao_300: (map['\$6_ligacao_300'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_300: (map['\$8_campoDeLigacaoENumeroDeSequencia_300'] ?? '') as String,
      notaGeral_500_DataID: (map['notageral_500_dataID'] ?? 0) as int,
      etiqueta_500: (map['etiqueta_500'] ?? '') as String,
      primeiroIndicador_500: (map['primeiroIndicador_500'] ?? '') as String,
      segundoIndicador_500: (map['segundoIndicador_500'] ?? '') as String,
      $a_notaGeral: (map['\$a_notaGeral'] ?? '') as String,
      $3_materialEspecificado_500: (map['\$3_materialEspecificado_500'] ?? '') as String,
      $5_codigoDaInstituicao_500: (map['\$5_codigoDaInstituicao_500'] ?? '') as String,
      $6_ligacao_500: (map['\$6_ligacao_500'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_500: (map['\$8_campoDeLigacaoENumeroDeSequencia_500'] ?? '') as String,
      notaDeDissertacaoOuTese_502_DataID: (map['notaDeDissertacaoOuTese_502_DataID'] ?? 0) as int,
      etiqueta_502: (map['etiqueta_502'] ?? '') as String,
      primeiroIndicador_502: (map['primeiroIndicador_502'] ?? '') as String,
      segundoIndicador_502: (map['segundoIndicador_502'] ?? '') as String,
      $a_notaDeDissertacaoOuTese: (map['\$a_notaDeDissertacaoOuTese'] ?? '') as String,
      $6_ligacao_502: (map['\$6_ligacao_502'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_502: (map['\$8_campoDeLigacaoENumeroDeSequencia_502'] ?? '') as String,
      notaDeBibliografia_504_DataID: (map['notaDeBibliografia_504_DataID'] ?? 0) as int,
      etiqueta_504: (map['etiqueta_504'] ?? '') as String,
      primeiroIndicador_504: (map['primeiroIndicador_504'] ?? '') as String,
      segundoIndicador_504: (map['segundoIndicador_504'] ?? '') as String,
      $a_notaDeBibliografia: (map['\$a_notaDeBibliografia'] ?? '') as String,
      $b_numeroDeReferencias: (map['\$b_numeroDeReferencias'] ?? '') as String,
      $6_ligacao_504: (map['\$6_ligacao_504'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_504: (map['\$8_campoDeLigacaoENumeroDeSequencia_504'] ?? '') as String,
      notaDeResumo_520_DataID: (map['notaDeResumo_520_DataID'] ?? 0) as int,
      etiqueta_520: (map['etiqueta_520'] ?? '') as String,
      primeiroIndicador_520: (map['primeiroIndicador_520'] ?? '') as String,
      segundoIndicador_520: (map['segundoIndicador_520'] ?? '') as String,
      $a_notaDeResumo: (map['\$a_notaDeResumo'] ?? '') as String,
      $b_expansaoDaNotaDeResumo: (map['\$b_expansaoDaNotaDeResumo'] ?? '') as String,
      $c_agenciaDepositaria: (map['\$c_agenciaDepositaria'] ?? '') as String,
      $u_URI_520: (map['\$u_URI_520'] ?? '') as String,
      $2_fonte_520: (map['\$2_fonte_520'] ?? '') as String,
      $3_materialEspecificado_520: (map['\$3_materialEspecificado_520'] ?? '') as String,
      $6_ligacao_520: (map['\$6_ligacao_520'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_520: (map['\$8_campoDeLigacaoENumeroDeSequencia_520'] ?? '') as String,
      notaDeOutrosFormatosDisponiveis_530_DataID: (map['notaDeOutrosFormatosDisponiveis_530_DataID'] ?? 0) as int,
      notas_5XX_DataID: (map['notas_5XX_DataID'] ?? '') as String,
      etiqueta_530: (map['etiqueta_530'] ?? '') as String,
      primeiroIndicador_530: (map['primeiroIndicador_530'] ?? '') as String,
      segundoIndicador_530: (map['segundoIndicador_530'] ?? '') as String,
      $a_outroFormatoDisponivel: (map['\$a_outroFormatoDisponivel'] ?? '') as String,
      $b_fonte_530: (map['\$b_fonte_530'] ?? '') as String,
      $c_condicoes: (map['\$c_condicoes'] ?? '') as String,
      $d_numeroDeOrdem: (map['\$d_numeroDeOrdem'] ?? '') as String,
      $u_URI_530: (map['\$u_URI_530'] ?? '') as String,
      $3_materialEspecificado_530: (map['\$3_materialEspecificado_530'] ?? '') as String,
      $6_ligacao_530: (map['\$6_ligacao_530'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_530: (map['\$8_campoDeLigacaoENumeroDeSequencia_530'] ?? '') as String,
      entidade_610_DataID: (map['entidade_610_DataID'] ?? 0) as int,
      etiqueta_610: (map['etiqueta_610'] ?? '') as String,
      primeiroIndicador_610: (map['primeiroIndicador_610'] ?? '') as String,
      segundoIndicador_610: (map['segundoIndicador_610'] ?? '') as String,
      $a_nomeDaEntidadeOuLugar: (map['\$a_nomeDaEntidadeOuLugar'] ?? '') as String,
      $b_unidadesSubordinadas_10: (map['\$b_unidadesSubordinadas_10'] ?? '') as String,
      $c_LocalDeRealizacaoDoEncontro: (map['\$c_LocalDeRealizacaoDoEncontro'] ?? '') as String,
      $d_dataDeRealizacaoDoEvento_610: (map['\$d_dataDeRealizacaoDoEvento_610'] ?? '') as String,
      $e_termoDeRelacao_610: (map['\$e_termoDeRelacao_610'] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho: (map['\$f_dataDaPublicacaoDoTrabalho'] ?? '') as String,
      $g_informacoesAdicionais_610: (map['\$g_informacoesAdicionais_610'] ?? '') as String,
      $h_meioDGM_610: (map['\$h_meioDGM_610'] ?? '') as String,
      $k_subcabecalho_610: (map['\$k_subcabecalho_610'] ?? '') as String,
      $l_idiomaDaPublicacao_610: (map['\$l_idiomaDaPublicacao_610'] ?? '') as String,
      $m_instrumentosMusicais_610: (map['\$m_instrumentosMusicais_610'] ?? '') as String,
      $n_numeroDaSecaoOuEvento: (map['\$n_numeroDaSecaoOuEvento'] ?? '') as String,
      $o_arranjoMusical_610: (map['\$o_arranjoMusical_610'] ?? '') as String,
      $p_nomeDaSecaoPublicada: (map['\$p_nomeDaSecaoPublicada'] ?? '') as String,
      $r_escalaMusical_610: (map['\$r_escalaMusical_610'] ?? '') as String,
      $s_versao_610: (map['\$s_versao_610'] ?? '') as String,
      $t_tituloDaPublicacao_610: (map['\$t_tituloDaPublicacao_610'] ?? '') as String,
      $u_afiliacao_610: (map['\$u_afiliacao_610'] ?? '') as String,
      $v_subdivisaoDeForma_610: (map['\$v_subdivisaoDeForma_610'] ?? '') as String,
      $x_subdivisaoGeral_610: (map['\$x_subdivisaoGeral_610'] ?? '') as String,
      $y_subdivisaoCronologica_610: (map['\$y_subdivisaoCronologica_610'] ?? '') as String,
      $z_subdivisaoGeografica_610: (map['\$z_subdivisaoGeografica_610'] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_610: (map['\$0_numeroDeControleDoRegistroDeAutoridade_610'] ?? '') as String,
      $2_fonteDoCabecalhoOuTermo_610: (map['\$2_fonteDoCabecalhoOuTermo_610'] ?? '') as String,
      $3_materialEspecificado_610: (map['\$3_materialEspecificado_610'] ?? '') as String,
      $4_relacao_610: (map['\$4_relacao_610'] ?? '') as String,
      $6_ligacao_610: (map['\$6_ligacao_610'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_610: (map['\$8_campoDeLigacaoENumeroDeSequencia_610'] ?? '') as String,
      topico_650_DataID: (map['topico_650_DataID'] ?? 0) as int,
      etiqueta_650: (map['etiqueta_650'] ?? '') as String,
      primeiroIndicador_650: (map['primeiroIndicador_650'] ?? '') as String,
      segundoIndicador_650: (map['segundoIndicador_650'] ?? '') as String,
      $a_cabecalhoTopicoOuNomeGeografico: (map['\$a_cabecalhoTopicoOuNomeGeografico'] ?? '') as String,
      $b_cabecalhoTopicoSeguindoNomeGeografico: (map['\$b_cabecalhoTopicoSeguindoNomeGeografico'] ?? '') as String,
      $c_localDoEvento: (map['\$c_localDoEvento'] ?? '') as String,
      $d_dataDeRealizacaoDoEvento_650: (map['\$d_dataDeRealizacaoDoEvento_650'] ?? '') as String,
      $e_termoDeRelacao_650: (map['\$e_termoDeRelacao_650'] ?? '') as String,
      $g_informacoesAdicionais_650: (map['\$g_informacoesAdicionais_650'] ?? '') as String,
      $v_subdivisaoDeForma_650: (map['\$v_subdivisaoDeForma_650'] ?? '') as String,
      $x_subdivisaoGeral_650: (map['\$x_subdivisaoGeral_650'] ?? '') as String,
      $y_subdivisaoCronologica_650: (map['\$y_subdivisaoCronologica_650'] ?? '') as String,
      $z_subdivisaoGeografica_650: (map['\$z_subdivisaoGeografica_650'] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_650: (map['\$0_numeroDeControleDoRegistroDeAutoridade_650'] ?? '') as String,
      $2_fonteDoCabecalhoOuTermo_650: (map['\$2_fonteDoCabecalhoOuTermo_650'] ?? '') as String,
      $3_materialEspecificado_650: (map['\$3_materialEspecificado_650'] ?? '') as String,
      $4_relacao_650: (map['\$4_relacao_650'] ?? '') as String,
      $6_ligacao_650: (map['\$6_ligacao_650'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_650: (map['\$8_campoDeLigacaoENumeroDeSequencia_650'] ?? '') as String,
      nomePessoal_700_DataID: (map['nomePessoal_700_DataID'] ?? 0) as int,
      etiqueta_700: (map['etiqueta_700'] ?? '') as String,
      primeiroIndicador_700: (map['primeiroIndicador_700'] ?? '') as String,
      segundoIndicador_700: (map['segundoIndicador_700'] ?? '') as String,
      $a_nomePessoal_700: (map['\$a_nomePessoal_700'] ?? '') as String,
      $b_algarismosRomanosQueSeguemOPrenome: (map['\$b_algarismosRomanosQueSeguemOPrenome'] ?? '') as String,
      $c_titulosEOutrasPalavrasAssociadasAoNome_700: (map['\$c_titulosEOutrasPalavrasAssociadasAoNome_700'] ?? '') as String,
      $d_datasAssociadasAoNome_700: (map['\$d_datasAssociadasAoNome_700'] ?? '') as String,
      $e_termoDeRelacao_700: (map['\$e_termoDeRelacao_700'] ?? '') as String,
      $f_dataDaPublicacaoDoTrabalho_700: (map['\$f_dataDaPublicacaoDoTrabalho_700'] ?? '') as String,
      $g_informacoesAdicionais_700: (map['\$g_informacoesAdicionais_700'] ?? '') as String,
      $h_meioDGM_700: (map['\$h_meioDGM_700'] ?? '') as String,
      $i_informacoesSobreRelacoes_700: (map['\$i_informacoesSobreRelacoes_700'] ?? '') as String,
      $j_atributo: (map['\$j_atributo'] ?? '') as String,
      $k_subcabecalhos: (map['\$k_subcabecalhos'] ?? '') as String,
      $l_idiomaDaPublicacao_700: (map['\$l_idiomaDaPublicacao_700'] ?? '') as String,
      $m_instrumentosMusicais_700: (map['\$m_instrumentosMusicais_700'] ?? '') as String,
      $n_numeroDaSecaoDaPublicacao_700: (map['\$n_numeroDaSecaoDaPublicacao_700'] ?? '') as String,
      $o_arranjoMusical_700: (map['\$o_arranjoMusical_700'] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao_700: (map['\$p_nomeDaSecaoDaPublicacao_700'] ?? '') as String,
      $q_formaCompletaDoNome_700: (map['\$q_formaCompletaDoNome_700'] ?? '') as String,
      $r_escalaMusical_700: (map['\$r_escalaMusical_700'] ?? '') as String,
      $s_versao_700: (map['\$s_versao_700'] ?? '') as String,
      $t_tituloDaPublicacao_700: (map['\$t_tituloDaPublicacao_700'] ?? '') as String,
      $u_afiliacao_700: (map['\$u_afiliacao_700'] ?? '') as String,
      $x_ISSN_700: (map['\$x_ISSN_700'] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_700: (map['\$0_numeroDeControleDoRegistroDeAutoridade_700'] ?? '') as String,
      $3_materialEspecificado_700: (map['\$3_materialEspecificado_700'] ?? '') as String,
      $4_relacao_700: (map['\$4_relacao_700'] ?? '') as String,
      $5_codigoDaInstituicao_700: (map['\$5_codigoDaInstituicao_700'] ?? '') as String,
      $6_ligacao_700: (map['\$6_ligacao_700'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_700: (map['\$8_campoDeLigacaoENumeroDeSequencia_700'] ?? '') as String,
      entidade_710_DataID: (map['entidade_710_DataID'] ?? 0) as int,
      etiqueta_710: (map['etiqueta_710'] ?? '') as String,
      primeiroIndicador_710: (map['primeiroIndicador_710'] ?? '') as String,
      segundoIndicador_710: (map['segundoIndicador_710'] ?? '') as String,
      $a_nomeDaEntidadeOuDoLugar: (map['\$a_nomeDaEntidadeOuDoLugar'] ?? '') as String,
      $b_unidadesSubordinadas_710: (map['\$b_unidadesSubordinadas_710'] ?? '') as String,
      $c_localDeRealizacaoDoEvento: (map['\$c_localDeRealizacaoDoEvento'] ?? '') as String,
      $d_dataDeRealizacaoDoEvento: (map['\$d_dataDeRealizacaoDoEvento'] ?? '') as String,
      $e_termoDeRelacao_710: (map['\$e_termoDeRelacao_710'] ?? '') as String,
      $f_dataDePublicacao: (map['\$f_dataDePublicacao'] ?? '') as String,
      $g_informacoesAdicionais_710: (map['\$g_informacoesAdicionais_710'] ?? '') as String,
      $h_meioDGM: (map['\$h_meioDGM'] ?? '') as String,
      $i_informacoesSobreRelacoes_710: (map['\$i_informacoesSobreRelacoes_710'] ?? '') as String,
      $k_subcabecalho: (map['\$k_subcabecalho'] ?? '') as String,
      $l_idiomaDaPublicacao_710: (map['\$l_idiomaDaPublicacao_710'] ?? '') as String,
      $m_meioDeExecucaoParaMusica: (map['\$m_meioDeExecucaoParaMusica'] ?? '') as String,
      $n_numeroDaSecao: (map['\$n_numeroDaSecao'] ?? '') as String,
      $o_arranjoMusical_710: (map['\$o_arranjoMusical_710'] ?? '') as String,
      $p_nomeDaSecaoDaPublicacao: (map['\$p_nomeDaSecaoDaPublicacao'] ?? '') as String,
      $r_escalaMusical_710: (map['\$r_escalaMusical_710'] ?? '') as String,
      $s_versao_710: (map['\$s_versao_710'] ?? '') as String,
      $t_tituloDaPublicacao_710: (map['\$t_tituloDaPublicacao_710'] ?? '') as String,
      $u_afiliacao_710: (map['\$u_afiliacao_710'] ?? '') as String,
      $x_ISSN_710: (map['\$x_ISSN_710'] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade_710: (map['\$0_numeroDeControleDoRegistroDeAutoridade_710'] ?? '') as String,
      $3_materialEspecificado_710: (map['\$3_materialEspecificado_710'] ?? '') as String,
      $4_relacao_710: (map['\$4_relacao_710'] ?? '') as String,
      $5_codigoDaInstituicao_710: (map['\$5_codigoDaInstituicao_710'] ?? '') as String,
      $6_ligacao_710: (map['\$6_ligacao_710'] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_710: (map['\$8_campoDeLigacaoENumeroDeSequencia_710'] ?? '') as String,
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

  factory ClassMonografiaTeseDissertacaoData.fromJson(String source) =>
      ClassMonografiaTeseDissertacaoData.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
