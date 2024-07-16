// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class ClassTopico_650_DataItems {
  final int topico_650_DataID;
  final String etiqueta_650;
  final String primeiroIndicador;
  final String segundoIndicador;
  final String $a_cabecalhoTopicoOuNomeGeografico;
  final String $b_cabecalhoTopicoSeguindoNomeGeografico;
  final String $c_localDoEvento;
  final String $d_dataDeRealizacaoDoEvento;
  final String $e_termoDeRelacao;
  final String $g_informacoesAdicionais;
  final String $v_subdivisaoDeForma;
  final String $x_subdivisaoGeral;
  final String $y_subdivisaoCronologica;
  final String $z_subdivisaoGeografica;
  final String $0_numeroDeControleDoRegistroDeAutoridade;
  final String $2_fonteDoCabecalhoOuTermo;
  final String $3_materialEspecificado;
  final String $4_relacao;
  final String $6_ligacao;
  final String $8_campoDeLigacaoENumeroDeSequencia;

  ClassTopico_650_DataItems({
    this.topico_650_DataID = 0,
    this.etiqueta_650 = '650',
    this.primeiroIndicador = '#',
    this.segundoIndicador = '#',
    this.$a_cabecalhoTopicoOuNomeGeografico = '',
    this.$b_cabecalhoTopicoSeguindoNomeGeografico = '',
    this.$c_localDoEvento = '',
    this.$d_dataDeRealizacaoDoEvento = '',
    this.$e_termoDeRelacao = '',
    this.$g_informacoesAdicionais = '',
    this.$v_subdivisaoDeForma = '',
    this.$x_subdivisaoGeral = '',
    this.$y_subdivisaoCronologica = '',
    this.$z_subdivisaoGeografica = '',
    this.$0_numeroDeControleDoRegistroDeAutoridade = '',
    this.$2_fonteDoCabecalhoOuTermo = '',
    this.$3_materialEspecificado = '',
    this.$4_relacao = '',
    this.$6_ligacao = '',
    this.$8_campoDeLigacaoENumeroDeSequencia = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topico_650_DataID': topico_650_DataID,
      'etiqueta_650': etiqueta_650,
      'primeiroIndicador': primeiroIndicador,
      'segundoIndicador': segundoIndicador,
      '\$a_cabecalhoTopicoOuNomeGeografico': $a_cabecalhoTopicoOuNomeGeografico,
      '\$b_cabecalhoTopicoSeguindoNomeGeografico': $b_cabecalhoTopicoSeguindoNomeGeografico,
      '\$c_localDoEvento': $c_localDoEvento,
      '\$d_dataDeRealizacaoDoEvento': $d_dataDeRealizacaoDoEvento,
      '\$e_termoDeRelacao': $e_termoDeRelacao,
      '\$g_informacoesAdicionais': $g_informacoesAdicionais,
      '\$v_subdivisaoDeForma': $v_subdivisaoDeForma,
      '\$x_subdivisaoGeral': $x_subdivisaoGeral,
      '\$y_subdivisaoCronologica': $y_subdivisaoCronologica,
      '\$z_subdivisaoGeografica': $z_subdivisaoGeografica,
      '\$0_numeroDeControleDoRegistroDeAutoridade': $0_numeroDeControleDoRegistroDeAutoridade,
      '\$2_fonteDoCabecalhoOuTermo': $2_fonteDoCabecalhoOuTermo,
      '\$3_materialEspecificado': $3_materialEspecificado,
      '\$4_relacao': $4_relacao,
      '\$6_ligacao': $6_ligacao,
      '\$8_campoDeLigacaoENumeroDeSequencia': $8_campoDeLigacaoENumeroDeSequencia,
    };
  }

  factory ClassTopico_650_DataItems.fromMap(Map<String, dynamic> map) {
    return ClassTopico_650_DataItems(
      topico_650_DataID: (map["topico_650_DataID"] ?? 0) as int,
      etiqueta_650: (map["etiqueta_650"] ?? '') as String,
      primeiroIndicador: (map["primeiroIndicador"] ?? '') as String,
      segundoIndicador: (map["segundoIndicador"] ?? '') as String,
      $a_cabecalhoTopicoOuNomeGeografico: (map["\$a_cabecalhoTopicoOuNomeGeografico"] ?? '') as String,
      $b_cabecalhoTopicoSeguindoNomeGeografico: (map["\$b_cabecalhoTopicoSeguindoNomeGeografico"] ?? '') as String,
      $c_localDoEvento: (map["\$c_localDoEvento"] ?? '') as String,
      $d_dataDeRealizacaoDoEvento: (map["\$d_dataDeRealizacaoDoEvento"] ?? '') as String,
      $e_termoDeRelacao: (map["\$e_termoDeRelacao"] ?? '') as String,
      $g_informacoesAdicionais: (map["\$g_informacoesAdicionais"] ?? '') as String,
      $v_subdivisaoDeForma: (map["\$v_subdivisaoDeForma"] ?? '') as String,
      $x_subdivisaoGeral: (map["\$x_subdivisaoGeral"] ?? '') as String,
      $y_subdivisaoCronologica: (map["\$y_subdivisaoCronologica"] ?? '') as String,
      $z_subdivisaoGeografica: (map["\$z_subdivisaoGeografica"] ?? '') as String,
      $0_numeroDeControleDoRegistroDeAutoridade: (map["\$0_numeroDeControleDoRegistroDeAutoridade"] ?? '') as String,
      $2_fonteDoCabecalhoOuTermo: (map["\$2_fonteDoCabecalhoOuTermo"] ?? '') as String,
      $3_materialEspecificado: (map["\$3_materialEspecificado"] ?? '') as String,
      $4_relacao: (map["\$4_relacao"] ?? '') as String,
      $6_ligacao: (map["\$6_ligacao"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia: (map["\$8_campoDeLigacaoENumeroDeSequencia"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassTopico_650_DataItems.fromJson(String source) => ClassTopico_650_DataItems.fromMap(json.decode(source) as Map<String, dynamic>);
}
