// ignore_for_file: camel_case_types
// Documentação MARC 21 : https://www.dbd.puc-rio.br/MARC21/conteudo.html
// A forma de escrita das classes e atributos foram de acordo com a documentação

// Ex: Lider(NR) 00-04 - Tamanho do registro
// No atributo da classe ficou tamanhoDoRegistro_00_04 (variáveis não podem ser declaradas com iniciais numéricas)
import './classes_marc21_bibliografico_exports.dart';

class ClassMarc21BibliograficoData {
  ClassLiderData lider;
  ClassCamposDeControle_00X_Data camposDeControle_00X;
  ClassCampoFixoMaterialAdicional_006_Data campoFixoMaterialAdicional_006;
  ClassCampoFixoDescricaoFisica_007_Data campoFixoDescricaoFisica_007;
  ClassCampoDeTamanhoFixo_008_Data campoDeTamanhoFixo_008;
  ClassCamposDeNumerosECodigos_02X_09X_Data camposDeNumerosECodigos_02X_09X;
  ClassEntradaPrincipalCampos_1XX_Data entradaPrincipalCampos_1XX;
  ClassTituloETituloRelacionado_20X_24X_Data tituloETituloRelacionado_20X_24X;
  ClassEdicaoImpressaoEtc_25X_28X_Data edicaoImpressaoEtc_25X_28X;
  ClassDescricaoFisicaEtc_3XX_Data descricaoFisicaEtc_3XX;
  ClassSeries_4XX_Data series_4XX;
  ClassNotas_5XX_Data notas_5XX;
  ClassAssuntos_6XX_Data assuntos_6XX;
  ClassEntradaSecundaria_70X_75X_Data entradaSecundaria_70X_75X;
  ClassEntradasDeLigacao_76X_78X_Data entradasDeLigacao_76X_78X;
  ClassEntradaSecundariaSerie_80X_840_Data entradaSecundariaSerie_80X_840;
  ClassColecoesLocalizacaoGraficosAlternados_841_88X_Data colecoesLocalizacaoGraficosAlternados_841_88X;
  ClassTabelasAuxiliaresData tabelas;

  ClassMarc21BibliograficoData(
    this.lider,
    this.camposDeControle_00X,
    this.campoFixoMaterialAdicional_006,
    this.campoFixoDescricaoFisica_007,
    this.campoDeTamanhoFixo_008,
    this.camposDeNumerosECodigos_02X_09X,
    this.entradaPrincipalCampos_1XX, 
    this.tituloETituloRelacionado_20X_24X, 
    this.edicaoImpressaoEtc_25X_28X, 
    this.descricaoFisicaEtc_3XX, 
    this.series_4XX, 
    this.notas_5XX, 
    this.assuntos_6XX, 
    this.entradaSecundaria_70X_75X, 
    this.entradasDeLigacao_76X_78X,
    this.entradaSecundariaSerie_80X_840, 
    this.colecoesLocalizacaoGraficosAlternados_841_88X,
    this.tabelas,
  );
}
