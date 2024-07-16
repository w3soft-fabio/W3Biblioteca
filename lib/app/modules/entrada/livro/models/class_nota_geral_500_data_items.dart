// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'dart:convert';

class NotaGeral500DataItems {
  int notaGeral_500_DataID;
  String etiqueta_500;
  String primeiroIndicador;
  String segundoIndicador;
  String $a_notaGeral;
  String $3_materialEspecificado;
  String $5_codigoDaInstituicao;
  String $6_ligacao;
  String $8_campoDeLigacaoENumeroDeSequencia;

  NotaGeral500DataItems({
    required this.notaGeral_500_DataID,
    required this.etiqueta_500,
    required this.primeiroIndicador,
    required this.segundoIndicador,
    required this.$a_notaGeral,
    required this.$3_materialEspecificado,
    required this.$5_codigoDaInstituicao,
    required this.$6_ligacao,
    required this.$8_campoDeLigacaoENumeroDeSequencia,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notaGeral_500_DataID': notaGeral_500_DataID,
      'etiqueta_500': etiqueta_500,
      'primeiroIndicador': primeiroIndicador,
      'segundoIndicador': segundoIndicador,
      '\$a_notaGeral': $a_notaGeral,
      '\$3_materialEspecificado': $3_materialEspecificado,
      '\$5_codigoDaInstituicao': $5_codigoDaInstituicao,
      '\$6_ligacao': $6_ligacao,
      '\$8_campoDeLigacaoENumeroDeSequencia': $8_campoDeLigacaoENumeroDeSequencia,
    };
  }

  factory NotaGeral500DataItems.fromMap(Map<String, dynamic> map) {
    return NotaGeral500DataItems(
      notaGeral_500_DataID: (map["notaGeral_500_DataID"] ?? 0) as int,
      etiqueta_500: (map["etiqueta_500"] ?? '') as String,
      primeiroIndicador: (map["primeiroIndicador"] ?? '') as String,
      segundoIndicador: (map["segundoIndicador"] ?? '') as String,
      $a_notaGeral: (map["\$a_notaGeral"] ?? '') as String,
      $3_materialEspecificado: (map["\$3_materialEspecificado"] ?? '') as String,
      $5_codigoDaInstituicao: (map["\$5_codigoDaInstituicao"] ?? '') as String,
      $6_ligacao: (map["\$6_ligacao_500"] ?? '') as String,
      $8_campoDeLigacaoENumeroDeSequencia: (map["\$8_campoDeLigacaoENumeroDeSequencia"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotaGeral500DataItems.fromJson(String source) => NotaGeral500DataItems.fromMap(json.decode(source) as Map<String, dynamic>);
}
