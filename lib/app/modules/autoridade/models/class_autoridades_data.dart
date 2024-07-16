// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
class ClassAutoridadesData {
  final int autoridadesDataID;
  //Lider
  final int liderAutoridadesDataID;
  final String etiqueta_000;
  final String tamanhoLogicoDoRegistro_00_04;
  final String statusDoRegistro_05;
  final String tipoDeRegistro_06;
  final String posicaoDeCaracteresIndefinida_07_08;
  final String esquemaDeCodificacaoDeCaracteres_09;
  final String numeroDeIndicadores_10;
  final String contagemDeCodigosDeSubcampos_11;
  final String enderecoDeDadosNaBase_12_16;
  final String nivelDeCatalogacao_17;
  final String politicaDePontuacao_18;
  final String indefinido_19;
  final String comprimentoDaParteDeComprimentoDeCampo_20;
  final String comprimentoDaParteDaPosicaoDoCaractereInicial_21;
  final String comprimentoDaParteDefinidaPelaImplementacao_22;
  final String indefinido_23;

  //Campos de controle
  final int camposDeControleAutoridades_00X_DataID;
  final String numeroDeControle_001;
  final String identificadorDoNumeroDeControle_003;
  final String dataEHoraDaUltimaAtualizacao_005;

  //Campos fixos
  final int camposFixosAutoridades_00X_DataID;
  final String etiqueta_008;
  final String dataInseridaNoArquivo_00_05;
  final String subdivisaoGeograficaDiretaOuIndireta_06;
  final String esquemaDeLatinizacao_07;
  final String idiomaDoCatalogo_08;
  final String tipoDeRegistro_09;
  final String regrasDescritivasDeCatalogacao_10;
  final String sistemaDeCabecalhoDeAssunto_11;
  final String tipoDeSerie_12;
  final String serieNumeradaOuNaoNumerada_13;
  final String cabecalhoAplicadoEntradaPrincipalOuSecundaria_14;
  final String cabecalhoAplicadoEntradaDeAssunto_15;
  final String seriePrincipalESerieSecundaria_16;
  final String tipoDeSubdivisaoDeAssunto_17;
  final String posicoesDeCaracteresIndifinidas_18_27;
  final String tipoDeAgenciaGovernamental_28;
  final String avaliacaoDeReferencias_29;
  final String posicaoDeCaractereIndefinido_30;
  final String processoDeAtualizacaoDoRegistro_31;
  final String nomePessoalNaoDiferenciado_32;
  final String nivelDeAutorizacao_33;
  final String posicoesDeCaracteresIndefinidas_34_37;
  final String registroModificado_38;
  final String fonteDeCatalogacao_39;

  //Fonte catalogadora
  final int fonteCatalogadoraAutoridade_01X_09X_DataID;
  final String etiqueta_040;
  final String primeiroIndicador_040;
  final String segundoIndicador_040;
  final String $a_agenciaDeCatalogacaoOriginal;
  final String $b_idiomaDaCatalogacao;
  final String $c_agenciaDeTranscricao;
  final String $d_agenciaModificadora;
  final String $e_convencoesDeDescricao;
  final String $f_convencoesDeCabecalhoDeAssunto;
  final String $6_ligacao_040;
  final String $8_campoDeLigacaoENumeroDeSequencia_040;

  //Nome pessoal
  final int nomePessoalAutoridade_1XX_3XX_DataID;
  final String etiqueta_100;
  final String primeiroIndicador_100;
  final String segundoIndicador_100;
  final String $a_nomePessoal_100;
  final String $b_numeracao_100;
  final String $c_titulosEOutrasPalavrasAssociadasAoNome_100;
  final String $d_datasAssociadasAoNome_100;
  final String $e_termoDeRelacao_100;
  final String $f_dataDaObra_100;
  final String $g_informacoesDiversas_100;
  final String $h_meio_100;
  final String $j_qualificadorDeAtribuicao_100;
  final String $k_subcabecalhoDeForma_100;
  final String $l_idiomaDaObra_100;
  final String $m_meioDeExecucaoParaMusica_100;
  final String $n_numeroDaSecaoDaObra_100;
  final String $o_arranjoMusical_100;
  final String $p_nomeDaSecaoDaObra_100;
  final String $q_formaCompletaDoNome_100;
  final String $r_tonalidade_100;
  final String $s_versao_100;
  final String $t_tituloDaObra_100;
  final String $v_subdivisaoDeForma_100;
  final String $x_subdivisaoGeral_100;
  final String $y_subdivisaoCronologica_100;
  final String $z_subdivisaoGeografica_100;
  final String $6_ligacao_100;
  final String $7_provenienciaDosDados_100;
  final String $8_campoDeLigacaoENumeroDeSequencia_100;

  //Nome pessoal remissiva "Ver"
  final int nomePessoalAutoridade_4XX_DataID;
  final String etiqueta_400;
  final String primeiroIndicador_400;
  final String segundoIndicador_400;
  final String $a_nomePessoal_400;
  final String $b_numeracao_400;
  final String $c_titulosEOutrasPalavrasAssociadasAoNome_400;
  final String $d_datasAssociadasAoNome_400;
  final String $e_termoDeRelacao_400;
  final String $f_dataDaObra_400;
  final String $g_informacoesDiversas_400;
  final String $h_meio_400;
  final String $i_informacaoDeRelacionamento;
  final String $j_qualificadorDeAtribuicao_400;
  final String $k_subcabecalhoDeForma_400;
  final String $l_idiomaDaObra_400;
  final String $m_meioDeExecucaoParaMusica_400;
  final String $n_numeroDaSecaoDaObra_400;
  final String $o_arranjoMusical_400;
  final String $p_nomeDaSecaoDaObra_400;
  final String $q_formaCompletaDoNome_400;
  final String $r_tonalidade_400;
  final String $s_versao_400;
  final String $t_tituloDaObra_400;
  final String $v_subdivisaoDeForma_400;
  final String $w_subcampoDeControle;
  final String $x_subdivisaoGeral_400;
  final String $y_subdivisaoCronologica_400;
  final String $z_subdivisaoGeografica_400;
  final String $4_relaciomaneto_400;
  final String $5_institutoAQualOCampoSeAplica_400;
  final String $6_ligacao_400;
  final String $8_campoDeLigacaoENumeroDeSequencia_400;

  //Nota geral não pública
  final int notaGeralNaoPublicaAutoridade_667_68X_DataID;
  final String etiqueta_667;
  final String primeiroIndicador_667;
  final String segundoIndicador_667;
  final String $a_notaGeralNaoPublica;
  final String $5_instituicaoAQueCampoSeAplica;
  final String $6_ligacao_667;
  final String $8_campoDeLigacaoENumeroDeSequencia_667;

  //Dados de fontes encontrados
  final int dadosDeFontesEncontradosAutoridade_667_68X_DataID;
  final String etiqueta_670;
  final String primeiroIndicador_670;
  final String segundoIndicador_670;
  final String $a_citacaoDeFonte;
  final String $b_informacaoEncontrada;
  final String $u_URI;
  final String $w_numeroDeControleDoRegistroBibliografico;
  final String $6_ligacao_670;
  final String $8_campoDeLigacaoENumeroDeSequencia_670;

  ClassAutoridadesData({
    this.autoridadesDataID = 0,
    this.liderAutoridadesDataID = 0,
    this.etiqueta_000 = '',
    this.tamanhoLogicoDoRegistro_00_04 = '',
    this.statusDoRegistro_05 = '',
    this.tipoDeRegistro_06 = '',
    this.posicaoDeCaracteresIndefinida_07_08 = '',
    this.esquemaDeCodificacaoDeCaracteres_09 = '',
    this.numeroDeIndicadores_10 = '',
    this.contagemDeCodigosDeSubcampos_11 = '',
    this.enderecoDeDadosNaBase_12_16 = '',
    this.nivelDeCatalogacao_17 = '',
    this.politicaDePontuacao_18 = '',
    this.indefinido_19 = '',
    this.comprimentoDaParteDeComprimentoDeCampo_20 = '',
    this.comprimentoDaParteDaPosicaoDoCaractereInicial_21 = '',
    this.comprimentoDaParteDefinidaPelaImplementacao_22 = '',
    this.indefinido_23 = '',
    this.camposDeControleAutoridades_00X_DataID = 0,
    this.numeroDeControle_001 = '',
    this.identificadorDoNumeroDeControle_003 = '',
    this.dataEHoraDaUltimaAtualizacao_005 = '',
    this.camposFixosAutoridades_00X_DataID = 0,
    this.etiqueta_008 = '',
    this.dataInseridaNoArquivo_00_05 = '',
    this.subdivisaoGeograficaDiretaOuIndireta_06 = '',
    this.esquemaDeLatinizacao_07 = '',
    this.idiomaDoCatalogo_08 = '',
    this.tipoDeRegistro_09 = '',
    this.regrasDescritivasDeCatalogacao_10 = '',
    this.sistemaDeCabecalhoDeAssunto_11 = '',
    this.tipoDeSerie_12 = '',
    this.serieNumeradaOuNaoNumerada_13 = '',
    this.cabecalhoAplicadoEntradaPrincipalOuSecundaria_14 = '',
    this.cabecalhoAplicadoEntradaDeAssunto_15 = '',
    this.seriePrincipalESerieSecundaria_16 = '',
    this.tipoDeSubdivisaoDeAssunto_17 = '',
    this.posicoesDeCaracteresIndifinidas_18_27 = '',
    this.tipoDeAgenciaGovernamental_28 = '',
    this.avaliacaoDeReferencias_29 = '',
    this.posicaoDeCaractereIndefinido_30 = '',
    this.processoDeAtualizacaoDoRegistro_31 = '',
    this.nomePessoalNaoDiferenciado_32 = '',
    this.nivelDeAutorizacao_33 = '',
    this.posicoesDeCaracteresIndefinidas_34_37 = '',
    this.registroModificado_38 = '',
    this.fonteDeCatalogacao_39 = '',
    this.fonteCatalogadoraAutoridade_01X_09X_DataID = 0,
    this.etiqueta_040 = '',
    this.primeiroIndicador_040 = '',
    this.segundoIndicador_040 = '',
    this.$a_agenciaDeCatalogacaoOriginal = '',
    this.$b_idiomaDaCatalogacao = '',
    this.$c_agenciaDeTranscricao = '',
    this.$d_agenciaModificadora = '',
    this.$e_convencoesDeDescricao = '',
    this.$f_convencoesDeCabecalhoDeAssunto = '',
    this.$6_ligacao_040 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_040 = '',
    this.nomePessoalAutoridade_1XX_3XX_DataID = 0,
    this.etiqueta_100 = '',
    this.primeiroIndicador_100 = '',
    this.segundoIndicador_100 = '',
    this.$a_nomePessoal_100 = '',
    this.$b_numeracao_100 = '',
    this.$c_titulosEOutrasPalavrasAssociadasAoNome_100 = '',
    this.$d_datasAssociadasAoNome_100 = '',
    this.$e_termoDeRelacao_100 = '',
    this.$f_dataDaObra_100 = '',
    this.$g_informacoesDiversas_100 = '',
    this.$h_meio_100 = '',
    this.$j_qualificadorDeAtribuicao_100 = '',
    this.$k_subcabecalhoDeForma_100 = '',
    this.$l_idiomaDaObra_100 = '',
    this.$m_meioDeExecucaoParaMusica_100 = '',
    this.$n_numeroDaSecaoDaObra_100 = '',
    this.$o_arranjoMusical_100 = '',
    this.$p_nomeDaSecaoDaObra_100 = '',
    this.$q_formaCompletaDoNome_100 = '',
    this.$r_tonalidade_100 = '',
    this.$s_versao_100 = '',
    this.$t_tituloDaObra_100 = '',
    this.$v_subdivisaoDeForma_100 = '',
    this.$x_subdivisaoGeral_100 = '',
    this.$y_subdivisaoCronologica_100 = '',
    this.$z_subdivisaoGeografica_100 = '',
    this.$6_ligacao_100 = '',
    this.$7_provenienciaDosDados_100 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_100 = '',
    this.nomePessoalAutoridade_4XX_DataID = 0,
    this.etiqueta_400 = '',
    this.primeiroIndicador_400 = '',
    this.segundoIndicador_400 = '',
    this.$a_nomePessoal_400 = '',
    this.$b_numeracao_400 = '',
    this.$c_titulosEOutrasPalavrasAssociadasAoNome_400 = '',
    this.$d_datasAssociadasAoNome_400 = '',
    this.$e_termoDeRelacao_400 = '',
    this.$f_dataDaObra_400 = '',
    this.$g_informacoesDiversas_400 = '',
    this.$h_meio_400 = '',
    this.$i_informacaoDeRelacionamento = '',
    this.$j_qualificadorDeAtribuicao_400 = '',
    this.$k_subcabecalhoDeForma_400 = '',
    this.$l_idiomaDaObra_400 = '',
    this.$m_meioDeExecucaoParaMusica_400 = '',
    this.$n_numeroDaSecaoDaObra_400 = '',
    this.$o_arranjoMusical_400 = '',
    this.$p_nomeDaSecaoDaObra_400 = '',
    this.$q_formaCompletaDoNome_400 = '',
    this.$r_tonalidade_400 = '',
    this.$s_versao_400 = '',
    this.$t_tituloDaObra_400 = '',
    this.$v_subdivisaoDeForma_400 = '',
    this.$w_subcampoDeControle = '',
    this.$x_subdivisaoGeral_400 = '',
    this.$y_subdivisaoCronologica_400 = '',
    this.$z_subdivisaoGeografica_400 = '',
    this.$4_relaciomaneto_400 = '',
    this.$5_institutoAQualOCampoSeAplica_400 = '',
    this.$6_ligacao_400 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_400 = '',
    this.notaGeralNaoPublicaAutoridade_667_68X_DataID = 0,
    this.etiqueta_667 = '',
    this.primeiroIndicador_667 = '',
    this.segundoIndicador_667 = '',
    this.$a_notaGeralNaoPublica = '',
    this.$5_instituicaoAQueCampoSeAplica = '',
    this.$6_ligacao_667 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_667 = '',
    this.dadosDeFontesEncontradosAutoridade_667_68X_DataID = 0,
    this.etiqueta_670 = '',
    this.primeiroIndicador_670 = '',
    this.segundoIndicador_670 = '',
    this.$a_citacaoDeFonte = '',
    this.$b_informacaoEncontrada = '',
    this.$u_URI = '',
    this.$w_numeroDeControleDoRegistroBibliografico = '',
    this.$6_ligacao_670 = '',
    this.$8_campoDeLigacaoENumeroDeSequencia_670 = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoridadesDataID': autoridadesDataID,
      'liderAutoridadesDataID': liderAutoridadesDataID,
      'etiqueta_000': etiqueta_000,
      'tamanhoLogicoDoRegistro_00_04': tamanhoLogicoDoRegistro_00_04,
      'statusDoRegistro_05': statusDoRegistro_05,
      'tipoDeRegistro_06': tipoDeRegistro_06,
      'posicaoDeCaracteresIndefinida_07_08': posicaoDeCaracteresIndefinida_07_08,
      'esquemaDeCodificacaoDeCaracteres_09': esquemaDeCodificacaoDeCaracteres_09,
      'numeroDeIndicadores_10': numeroDeIndicadores_10,
      'contagemDeCodigosDeSubcampos_11': contagemDeCodigosDeSubcampos_11,
      'enderecoDeDadosNaBase_12_16': enderecoDeDadosNaBase_12_16,
      'nivelDeCatalogacao_17': nivelDeCatalogacao_17,
      'politicaDePontuacao_18': politicaDePontuacao_18,
      'indefinido_19': indefinido_19,
      'comprimentoDaParteDeComprimentoDeCampo_20': comprimentoDaParteDeComprimentoDeCampo_20,
      'comprimentoDaParteDaPosicaoDoCaractereInicial_21': comprimentoDaParteDaPosicaoDoCaractereInicial_21,
      'comprimentoDaParteDefinidaPelaImplementacao_22': comprimentoDaParteDefinidaPelaImplementacao_22,
      'indefinido_23': indefinido_23,
      'camposDeControleAutoridades_00X_DataID': camposDeControleAutoridades_00X_DataID,
      'numeroDeControle_001': numeroDeControle_001,
      'identificadorDoNumeroDeControle_003': identificadorDoNumeroDeControle_003,
      'dataEHoraDaUltimaAtualizacao_005': dataEHoraDaUltimaAtualizacao_005,
      'camposFixosAutoridades_00X_DataID': camposFixosAutoridades_00X_DataID,
      'etiqueta_008': etiqueta_008,
      'dataInseridaNoArquivo_00_05': dataInseridaNoArquivo_00_05,
      'subdivisaoGeograficaDiretaOuIndireta_06': subdivisaoGeograficaDiretaOuIndireta_06,
      'esquemaDeLatinizacao_07': esquemaDeLatinizacao_07,
      'idiomaDoCatalogo_08': idiomaDoCatalogo_08,
      'tipoDeRegistro_09': tipoDeRegistro_09,
      'regrasDescritivasDeCatalogacao_10': regrasDescritivasDeCatalogacao_10,
      'sistemaDeCabecalhoDeAssunto_11': sistemaDeCabecalhoDeAssunto_11,
      'tipoDeSerie_12': tipoDeSerie_12,
      'serieNumeradaOuNaoNumerada_13': serieNumeradaOuNaoNumerada_13,
      'cabecalhoAplicadoEntradaPrincipalOuSecundaria_14': cabecalhoAplicadoEntradaPrincipalOuSecundaria_14,
      'cabecalhoAplicadoEntradaDeAssunto_15': cabecalhoAplicadoEntradaDeAssunto_15,
      'seriePrincipalESerieSecundaria_16': seriePrincipalESerieSecundaria_16,
      'tipoDeSubdivisaoDeAssunto_17': tipoDeSubdivisaoDeAssunto_17,
      'posicoesDeCaracteresIndifinidas_18_27': posicoesDeCaracteresIndifinidas_18_27,
      'tipoDeAgenciaGovernamental_28': tipoDeAgenciaGovernamental_28,
      'avaliacaoDeReferencias_29': avaliacaoDeReferencias_29,
      'posicaoDeCaractereIndefinido_30': posicaoDeCaractereIndefinido_30,
      'processoDeAtualizacaoDoRegistro_31': processoDeAtualizacaoDoRegistro_31,
      'nomePessoalNaoDiferenciado_32': nomePessoalNaoDiferenciado_32,
      'nivelDeAutorizacao_33': nivelDeAutorizacao_33,
      'posicoesDeCaracteresIndefinidas_34_37': posicoesDeCaracteresIndefinidas_34_37,
      'registroModificado_38': registroModificado_38,
      'fonteDeCatalogacao_39': fonteDeCatalogacao_39,
      'fonteCatalogadoraAutoridade_01X_09X_DataID': fonteCatalogadoraAutoridade_01X_09X_DataID,
      'etiqueta_040': etiqueta_040,
      'primeiroIndicador_040': primeiroIndicador_040,
      'segundoIndicador_040': segundoIndicador_040,
      '\$a_agenciaDeCatalogacaoOriginal': $a_agenciaDeCatalogacaoOriginal,
      '\$b_idiomaDaCatalogacao': $b_idiomaDaCatalogacao,
      '\$c_agenciaDeTranscricao': $c_agenciaDeTranscricao,
      '\$d_agenciaModificadora': $d_agenciaModificadora,
      '\$e_convencoesDeDescricao': $e_convencoesDeDescricao,
      '\$f_convencoesDeCabecalhoDeAssunto': $f_convencoesDeCabecalhoDeAssunto,
      '\$6_ligacao_040': $6_ligacao_040,
      '\$8_campoDeLigacaoENumeroDeSequencia_040': $8_campoDeLigacaoENumeroDeSequencia_040,
      'nomePessoalAutoridade_1XX_3XX_DataID': nomePessoalAutoridade_1XX_3XX_DataID,
      'etiqueta_100': etiqueta_100,
      'primeiroIndicador_100': primeiroIndicador_100,
      'segundoIndicador_100': segundoIndicador_100,
      '\$a_nomePessoal_100': $a_nomePessoal_100,
      '\$b_numeracao_100': $b_numeracao_100,
      '\$c_titulosEOutrasPalavrasAssociadasAoNome_100': $c_titulosEOutrasPalavrasAssociadasAoNome_100,
      '\$d_datasAssociadasAoNome_100': $d_datasAssociadasAoNome_100,
      '\$e_termoDeRelacao_100': $e_termoDeRelacao_100,
      '\$f_dataDaObra_100': $f_dataDaObra_100,
      '\$g_informacoesDiversas_100': $g_informacoesDiversas_100,
      '\$h_meio_100': $h_meio_100,
      '\$j_qualificadorDeAtribuicao_100': $j_qualificadorDeAtribuicao_100,
      '\$k_subcabecalhoDeForma_100': $k_subcabecalhoDeForma_100,
      '\$l_idiomaDaObra_100': $l_idiomaDaObra_100,
      '\$m_meioDeExecucaoParaMusica_100': $m_meioDeExecucaoParaMusica_100,
      '\$n_numeroDaSecaoDaObra_100': $n_numeroDaSecaoDaObra_100,
      '\$o_arranjoMusical_100': $o_arranjoMusical_100,
      '\$p_nomeDaSecaoDaObra_100': $p_nomeDaSecaoDaObra_100,
      '\$q_formaCompletaDoNome_100': $q_formaCompletaDoNome_100,
      '\$r_tonalidade_100': $r_tonalidade_100,
      '\$s_versao_100': $s_versao_100,
      '\$t_tituloDaObra_100': $t_tituloDaObra_100,
      '\$v_subdivisaoDeForma_100': $v_subdivisaoDeForma_100,
      '\$x_subdivisaoGeral_100': $x_subdivisaoGeral_100,
      '\$y_subdivisaoCronologica_100': $y_subdivisaoCronologica_100,
      '\$z_subdivisaoGeografica_100': $z_subdivisaoGeografica_100,
      '\$6_ligacao_100': $6_ligacao_100,
      '\$7_provenienciaDosDados_100': $7_provenienciaDosDados_100,
      '\$8_campoDeLigacaoENumeroDeSequencia_100': $8_campoDeLigacaoENumeroDeSequencia_100,
      'nomePessoalAutoridade_4XX_DataID': nomePessoalAutoridade_4XX_DataID,
      'etiqueta_400': etiqueta_400,
      'primeiroIndicador_400': primeiroIndicador_400,
      'segundoIndicador_400': segundoIndicador_400,
      '\$a_nomePessoal_400': $a_nomePessoal_400,
      '\$b_numeracao_400': $b_numeracao_400,
      '\$c_titulosEOutrasPalavrasAssociadasAoNome_400': $c_titulosEOutrasPalavrasAssociadasAoNome_400,
      '\$d_datasAssociadasAoNome_400': $d_datasAssociadasAoNome_400,
      '\$e_termoDeRelacao_400': $e_termoDeRelacao_400,
      '\$f_dataDaObra_400': $f_dataDaObra_400,
      '\$g_informacoesDiversas_400': $g_informacoesDiversas_400,
      '\$h_meio_400': $h_meio_400,
      '\$i_informacaoDeRelacionamento': $i_informacaoDeRelacionamento,
      '\$j_qualificadorDeAtribuicao_400': $j_qualificadorDeAtribuicao_400,
      '\$k_subcabecalhoDeForma_400': $k_subcabecalhoDeForma_400,
      '\$l_idiomaDaObra_400': $l_idiomaDaObra_400,
      '\$m_meioDeExecucaoParaMusica_400': $m_meioDeExecucaoParaMusica_400,
      '\$n_numeroDaSecaoDaObra_400': $n_numeroDaSecaoDaObra_400,
      '\$o_arranjoMusical_400': $o_arranjoMusical_400,
      '\$p_nomeDaSecaoDaObra_400': $p_nomeDaSecaoDaObra_400,
      '\$q_formaCompletaDoNome_400': $q_formaCompletaDoNome_400,
      '\$r_tonalidade_400': $r_tonalidade_400,
      '\$s_versao_400': $s_versao_400,
      '\$t_tituloDaObra_400': $t_tituloDaObra_400,
      '\$v_subdivisaoDeForma_400': $v_subdivisaoDeForma_400,
      '\$w_subcampoDeControle': $w_subcampoDeControle,
      '\$x_subdivisaoGeral_400': $x_subdivisaoGeral_400,
      '\$y_subdivisaoCronologica_400': $y_subdivisaoCronologica_400,
      '\$z_subdivisaoGeografica_400': $z_subdivisaoGeografica_400,
      '\$4_relaciomaneto_400': $4_relaciomaneto_400,
      '\$5_institutoAQualOCampoSeAplica_400': $5_institutoAQualOCampoSeAplica_400,
      '\$6_ligacao_400': $6_ligacao_400,
      '\$8_campoDeLigacaoENumeroDeSequencia_400': $8_campoDeLigacaoENumeroDeSequencia_400,
      'notaGeralNaoPublicaAutoridade_667_68X_DataID': notaGeralNaoPublicaAutoridade_667_68X_DataID,
      'etiqueta_667': etiqueta_667,
      'primeiroIndicador_667': primeiroIndicador_667,
      'segundoIndicador_667': segundoIndicador_667,
      '\$a_notaGeralNaoPublica': $a_notaGeralNaoPublica,
      '\$5_instituicaoAQueCampoSeAplica': $5_instituicaoAQueCampoSeAplica,
      '\$6_ligacao_667': $6_ligacao_667,
      '\$8_campoDeLigacaoENumeroDeSequencia_667': $8_campoDeLigacaoENumeroDeSequencia_667,
      'dadosDeFontesEncontradosAutoridade_667_68X_DataID': dadosDeFontesEncontradosAutoridade_667_68X_DataID,
      'etiqueta_670': etiqueta_670,
      'primeiroIndicador_670': primeiroIndicador_670,
      'segundoIndicador_670': segundoIndicador_670,
      '\$a_citacaoDeFonte': $a_citacaoDeFonte,
      '\$b_informacaoEncontrada': $b_informacaoEncontrada,
      '\$u_URI': $u_URI,
      '\$w_numeroDeControleDoRegistroBibliografico': $w_numeroDeControleDoRegistroBibliografico,
      '\$6_ligacao_670': $6_ligacao_670,
      '\$8_campoDeLigacaoENumeroDeSequencia_670': $8_campoDeLigacaoENumeroDeSequencia_670,
    };
  }

  factory ClassAutoridadesData.fromMap(Map<String, dynamic> map) {
    return ClassAutoridadesData(
      autoridadesDataID: (map["autoridadesDataID"] ?? 0) as int,
      liderAutoridadesDataID: (map["liderAutoridadesDataID"] ?? 0) as int,
      etiqueta_000: (map["etiqueta_000"] ?? '') as String,
      tamanhoLogicoDoRegistro_00_04: (map["tamanhoLogicoDoRegistro_00_04"] ?? '') as String,
      statusDoRegistro_05: (map["statusDoRegistro_05"] ?? '') as String,
      tipoDeRegistro_06: (map["tipoDeRegistro_06"] ?? '') as String,
      posicaoDeCaracteresIndefinida_07_08: (map["posicaoDeCaracteresIndefinida_07_08"] ?? '') as String,
      esquemaDeCodificacaoDeCaracteres_09: (map["esquemaDeCodificacaoDeCaracteres_09"] ?? '') as String,
      numeroDeIndicadores_10: (map["numeroDeIndicadores_10"] ?? '') as String,
      contagemDeCodigosDeSubcampos_11: (map["contagemDeCodigosDeSubcampos_11"] ?? '') as String,
      enderecoDeDadosNaBase_12_16: (map["enderecoDeDadosNaBase_12_16"] ?? '') as String,
      nivelDeCatalogacao_17: (map["nivelDeCatalogacao_17"] ?? '') as String,
      politicaDePontuacao_18: (map["politicaDePontuacao_18"] ?? '') as String,
      indefinido_19: (map["indefinido_19"] ?? '') as String,
      comprimentoDaParteDeComprimentoDeCampo_20: (map["comprimentoDaParteDeComprimentoDeCampo_20"] ?? '') as String,
      comprimentoDaParteDaPosicaoDoCaractereInicial_21: (map["comprimentoDaParteDaPosicaoDoCaractereInicial_21"] ?? '') as String,
      comprimentoDaParteDefinidaPelaImplementacao_22: (map["comprimentoDaParteDefinidaPelaImplementacao_22"] ?? '') as String,
      indefinido_23: (map["indefinido_23"] ?? '') as String,
      camposDeControleAutoridades_00X_DataID: (map["camposDeControleAutoridades_00X_DataID"] ?? 0) as int,
      numeroDeControle_001: (map["numeroDeControle_001"] ?? '') as String,
      identificadorDoNumeroDeControle_003: (map["identificadorDoNumeroDeControle_003"] ?? '') as String,
      dataEHoraDaUltimaAtualizacao_005: (map["dataEHoraDaUltimaAtualizacao_005"] ?? '') as String,
      camposFixosAutoridades_00X_DataID: (map["camposFixosAutoridades_00X_DataID"] ?? 0) as int,
      etiqueta_008: (map["etiqueta_008"] ?? '') as String,
      dataInseridaNoArquivo_00_05: (map["dataInseridaNoArquivo_00_05"] ?? '') as String,
      subdivisaoGeograficaDiretaOuIndireta_06: (map["subdivisaoGeograficaDiretaOuIndireta_06"] ?? '') as String,
      esquemaDeLatinizacao_07: (map["esquemaDeLatinizacao_07"] ?? '') as String,
      idiomaDoCatalogo_08: (map["idiomaDoCatalogo_08"] ?? '') as String,
      tipoDeRegistro_09: (map["tipoDeRegistro_09"] ?? '') as String,
      regrasDescritivasDeCatalogacao_10: (map["regrasDescritivasDeCatalogacao_10"] ?? '') as String,
      sistemaDeCabecalhoDeAssunto_11: (map["sistemaDeCabecalhoDeAssunto_11"] ?? '') as String,
      tipoDeSerie_12: (map["tipoDeSerie_12"] ?? '') as String,
      serieNumeradaOuNaoNumerada_13: (map["serieNumeradaOuNaoNumerada_13"] ?? '') as String,
      cabecalhoAplicadoEntradaPrincipalOuSecundaria_14: (map["cabecalhoAplicadoEntradaPrincipalOuSecundaria_14"] ?? '') as String,
      cabecalhoAplicadoEntradaDeAssunto_15: (map["cabecalhoAplicadoEntradaDeAssunto_15"] ?? '') as String,
      seriePrincipalESerieSecundaria_16: (map["seriePrincipalESerieSecundaria_16"] ?? '') as String,
      tipoDeSubdivisaoDeAssunto_17: (map["tipoDeSubdivisaoDeAssunto_17"] ?? '') as String,
      posicoesDeCaracteresIndifinidas_18_27: (map["posicoesDeCaracteresIndifinidas_18_27"] ?? '') as String,
      tipoDeAgenciaGovernamental_28: (map["tipoDeAgenciaGovernamental_28"] ?? '') as String,
      avaliacaoDeReferencias_29: (map["avaliacaoDeReferencias_29"] ?? '') as String,
      posicaoDeCaractereIndefinido_30: (map["posicaoDeCaractereIndefinido_30"] ?? '') as String,
      processoDeAtualizacaoDoRegistro_31: (map["processoDeAtualizacaoDoRegistro_31"] ?? '') as String,
      nomePessoalNaoDiferenciado_32: (map["nomePessoalNaoDiferenciado_32"] ?? '') as String,
      nivelDeAutorizacao_33: (map["nivelDeAutorizacao_33"] ?? '') as String,
      posicoesDeCaracteresIndefinidas_34_37: (map["posicoesDeCaracteresIndefinidas_34_37"] ?? '') as String,
      registroModificado_38: (map["registroModificado_38"] ?? '') as String,
      fonteDeCatalogacao_39: (map["fonteDeCatalogacao_39"] ?? '') as String,
      fonteCatalogadoraAutoridade_01X_09X_DataID: (map["fonteCatalogadoraAutoridade_01X_09X_DataID"] ?? 0) as int,
      etiqueta_040: (map["etiqueta_040"] ?? '') as String,
      primeiroIndicador_040: (map["primeiroIndicador_040"] ?? '') as String,
      segundoIndicador_040: (map["segundoIndicador_040"] ?? '') as String,
      $a_agenciaDeCatalogacaoOriginal: (map["\$a_agenciaDeCatalogacaoOriginal"] ?? '') as String,
      $b_idiomaDaCatalogacao: (map["\$b_idiomaDaCatalogacao"] ?? '') as String,
      $c_agenciaDeTranscricao: (map["\$c_agenciaDeTranscricao"] ?? '') as String,
      $d_agenciaModificadora: (map["\$d_agenciaModificadora"] ?? '') as String,
      $e_convencoesDeDescricao: (map["\$e_convencoesDeDescricao"] ?? '') as String,
      $f_convencoesDeCabecalhoDeAssunto: (map["\$f_convencoesDeCabecalhoDeAssunto"] ?? '') as String,
      $6_ligacao_040: (map["\$6_ligacao_040"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_040: (map["\$8_campoDeLigacaoENumeroDeSequencia_040"] ?? '') as String,
      nomePessoalAutoridade_1XX_3XX_DataID: (map["nomePessoalAutoridade_1XX_3XX_DataID"] ?? 0) as int,
      etiqueta_100: (map["etiqueta_100"] ?? '') as String,
      primeiroIndicador_100: (map["primeiroIndicador_100"] ?? '') as String,
      segundoIndicador_100: (map["segundoIndicador_100"] ?? '') as String,
      $a_nomePessoal_100: (map["\$a_nomePessoal_100"] ?? '') as String,
      $b_numeracao_100: (map["\$b_numeracao_100"] ?? '') as String,
      $c_titulosEOutrasPalavrasAssociadasAoNome_100: (map["\$c_titulosEOutrasPalavrasAssociadasAoNome_100"] ?? '') as String,
      $d_datasAssociadasAoNome_100: (map["\$d_datasAssociadasAoNome_100"] ?? '') as String,
      $e_termoDeRelacao_100: (map["\$e_termoDeRelacao_100"] ?? '') as String,
      $f_dataDaObra_100: (map["\$f_dataDaObra_100"] ?? '') as String,
      $g_informacoesDiversas_100: (map["\$g_informacoesDiversas_100"] ?? '') as String,
      $h_meio_100: (map["\$h_meio_100"] ?? '') as String,
      $j_qualificadorDeAtribuicao_100: (map["\$j_qualificadorDeAtribuicao_100"] ?? '') as String,
      $k_subcabecalhoDeForma_100: (map["\$k_subcabecalhoDeForma_100"] ?? '') as String,
      $l_idiomaDaObra_100: (map["\$l_idiomaDaObra_100"] ?? '') as String,
      $m_meioDeExecucaoParaMusica_100: (map["\$m_meioDeExecucaoParaMusica_100"] ?? '') as String,
      $n_numeroDaSecaoDaObra_100: (map["\$n_numeroDaSecaoDaObra_100"] ?? '') as String,
      $o_arranjoMusical_100: (map["\$o_arranjoMusical_100"] ?? '') as String,
      $p_nomeDaSecaoDaObra_100: (map["\$p_nomeDaSecaoDaObra_100"] ?? '') as String,
      $q_formaCompletaDoNome_100: (map["\$q_formaCompletaDoNome_100"] ?? '') as String,
      $r_tonalidade_100: (map["\$r_tonalidade_100"] ?? '') as String,
      $s_versao_100: (map["\$s_versao_100"] ?? '') as String,
      $t_tituloDaObra_100: (map["\$t_tituloDaObra_100"] ?? '') as String,
      $v_subdivisaoDeForma_100: (map["\$v_subdivisaoDeForma_100"] ?? '') as String,
      $x_subdivisaoGeral_100: (map["\$x_subdivisaoGeral_100"] ?? '') as String,
      $y_subdivisaoCronologica_100: (map["\$y_subdivisaoCronologica_100"] ?? '') as String,
      $z_subdivisaoGeografica_100: (map["\$z_subdivisaoGeografica_100"] ?? '') as String,
      $6_ligacao_100: (map["\$6_ligacao_100"] ?? '') as String,
      $7_provenienciaDosDados_100: (map["\$7_provenienciaDosDados_100"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_100: (map["\$8_campoDeLigacaoENumeroDeSequencia_100"] ?? '') as String,
      nomePessoalAutoridade_4XX_DataID: (map["nomePessoalAutoridade_4XX_DataID"] ?? 0) as int,
      etiqueta_400: (map["etiqueta_400"] ?? '') as String,
      primeiroIndicador_400: (map["primeiroIndicador_400"] ?? '') as String,
      segundoIndicador_400: (map["segundoIndicador_400"] ?? '') as String,
      $a_nomePessoal_400: (map["\$a_nomePessoal_400"] ?? '') as String,
      $b_numeracao_400: (map["\$b_numeracao_400"] ?? '') as String,
      $c_titulosEOutrasPalavrasAssociadasAoNome_400: (map["\$c_titulosEOutrasPalavrasAssociadasAoNome_400"] ?? '') as String,
      $d_datasAssociadasAoNome_400: (map["\$d_datasAssociadasAoNome_400"] ?? '') as String,
      $e_termoDeRelacao_400: (map["\$e_termoDeRelacao_400"] ?? '') as String,
      $f_dataDaObra_400: (map["\$f_dataDaObra_400"] ?? '') as String,
      $g_informacoesDiversas_400: (map["\$g_informacoesDiversas_400"] ?? '') as String,
      $h_meio_400: (map["\$h_meio_400"] ?? '') as String,
      $i_informacaoDeRelacionamento: (map["\$i_informacaoDeRelacionamento"] ?? '') as String,
      $j_qualificadorDeAtribuicao_400: (map["\$j_qualificadorDeAtribuicao_400"] ?? '') as String,
      $k_subcabecalhoDeForma_400: (map["\$k_subcabecalhoDeForma_400"] ?? '') as String,
      $l_idiomaDaObra_400: (map["\$l_idiomaDaObra_400"] ?? '') as String,
      $m_meioDeExecucaoParaMusica_400: (map["\$m_meioDeExecucaoParaMusica_400"] ?? '') as String,
      $n_numeroDaSecaoDaObra_400: (map["\$n_numeroDaSecaoDaObra_400"] ?? '') as String,
      $o_arranjoMusical_400: (map["\$o_arranjoMusical_400"] ?? '') as String,
      $p_nomeDaSecaoDaObra_400: (map["\$p_nomeDaSecaoDaObra_400"] ?? '') as String,
      $q_formaCompletaDoNome_400: (map["\$q_formaCompletaDoNome_400"] ?? '') as String,
      $r_tonalidade_400: (map["\$r_tonalidade_400"] ?? '') as String,
      $s_versao_400: (map["\$s_versao_400"] ?? '') as String,
      $t_tituloDaObra_400: (map["\$t_tituloDaObra_400"] ?? '') as String,
      $v_subdivisaoDeForma_400: (map["\$v_subdivisaoDeForma_400"] ?? '') as String,
      $w_subcampoDeControle: (map["\$w_subcampoDeControle"] ?? '') as String,
      $x_subdivisaoGeral_400: (map["\$x_subdivisaoGeral_400"] ?? '') as String,
      $y_subdivisaoCronologica_400: (map["\$y_subdivisaoCronologica_400"] ?? '') as String,
      $z_subdivisaoGeografica_400: (map["\$z_subdivisaoGeografica_400"] ?? '') as String,
      $4_relaciomaneto_400: (map["\$4_relaciomaneto_400"] ?? '') as String,
      $5_institutoAQualOCampoSeAplica_400: (map["\$5_institutoAQualOCampoSeAplica_400"] ?? '') as String,
      $6_ligacao_400: (map["\$6_ligacao_400"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_400: (map["\$8_campoDeLigacaoENumeroDeSequencia_400"] ?? '') as String,
      notaGeralNaoPublicaAutoridade_667_68X_DataID: (map["notaGeralNaoPublicaAutoridade_667_68X_DataID"] ?? 0) as int,
      etiqueta_667: (map["etiqueta_667"] ?? '') as String,
      primeiroIndicador_667: (map["primeiroIndicador_667"] ?? '') as String,
      segundoIndicador_667: (map["segundoIndicador_667"] ?? '') as String,
      $a_notaGeralNaoPublica: (map["\$a_notaGeralNaoPublica"] ?? '') as String,
      $5_instituicaoAQueCampoSeAplica: (map["\$5_instituicaoAQueCampoSeAplica"] ?? '') as String,
      $6_ligacao_667: (map["\$6_ligacao_667"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_667: (map["\$8_campoDeLigacaoENumeroDeSequencia_667"] ?? '') as String,
      dadosDeFontesEncontradosAutoridade_667_68X_DataID: (map["dadosDeFontesEncontradosAutoridade_667_68X_DataID"] ?? 0) as int,
      etiqueta_670: (map["etiqueta_670"] ?? '') as String,
      primeiroIndicador_670: (map["primeiroIndicador_670"] ?? '') as String,
      segundoIndicador_670: (map["segundoIndicador_670"] ?? '') as String,
      $a_citacaoDeFonte: (map["\$a_citacaoDeFonte"] ?? '') as String,
      $b_informacaoEncontrada: (map["\$b_informacaoEncontrada"] ?? '') as String,
      $u_URI: (map["\$u_URI"] ?? '') as String,
      $w_numeroDeControleDoRegistroBibliografico: (map["\$w_numeroDeControleDoRegistroBibliografico"] ?? '') as String,
      $6_ligacao_670: (map["\$6_ligacao_670"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia_670: (map["\$8_campoDeLigacaoENumeroDeSequencia_670"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassAutoridadesData.fromJson(String source) => ClassAutoridadesData.fromMap(json.decode(source) as Map<String, dynamic>);
}
