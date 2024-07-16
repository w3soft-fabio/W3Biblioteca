// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class ClassEtiquetasData {
  int livrosDataID;
  int acervoDataID;
  int? exemplarDataID;
  int exemplarNumero;
  String? siglaInstituicao;
  String? $a_classificacao;
  String? $b_numeroDeCutter;
  String? $a_edicao;
  String? $a_nomePessoal;
  String? $a_tituloPrincipal;
  bool isSelected;

  ClassEtiquetasData({
    this.livrosDataID = 0,
    this.acervoDataID = 0,
    this.exemplarDataID = 0,
    this.exemplarNumero = 0,
    this.isSelected = false,
    this.siglaInstituicao = '',
    this.$a_classificacao = '',
    this.$b_numeroDeCutter = '',
    this.$a_edicao = '',
    this.$a_nomePessoal = '',
    this.$a_tituloPrincipal = '',
  });

  @override
  bool operator ==(covariant ClassEtiquetasData other) {
    if (identical(this, other)) return true;

    return other.livrosDataID == livrosDataID &&
        other.acervoDataID == acervoDataID &&
        other.exemplarDataID == exemplarDataID &&
        other.exemplarNumero == exemplarNumero &&
        other.siglaInstituicao == siglaInstituicao &&
        other.$a_classificacao == $a_classificacao &&
        other.$b_numeroDeCutter == $b_numeroDeCutter &&
        other.$a_edicao == $a_edicao &&
        other.$a_nomePessoal == $a_nomePessoal &&
        other.$a_tituloPrincipal == $a_tituloPrincipal;
  }

  @override
  int get hashCode {
    return livrosDataID.hashCode ^
        exemplarDataID.hashCode ^
        acervoDataID.hashCode ^
        exemplarNumero.hashCode ^
        siglaInstituicao.hashCode ^
        $a_classificacao.hashCode ^
        $b_numeroDeCutter.hashCode ^
        $a_edicao.hashCode ^
        $a_nomePessoal.hashCode ^
        $a_tituloPrincipal.hashCode;
  }

  @override
  String toString() {
    return 'ClassEtiquetasData(livroDataID: $livrosDataID, acervoDataID: $acervoDataID, exemplarDataID: $exemplarDataID, exemplarNumero: $exemplarNumero, siglaInstituicao: $siglaInstituicao, \$a_classificacao: ${$a_classificacao}, \$b_numeroDeCutter: ${$b_numeroDeCutter}, \$a_edicao: ${$a_edicao}, \$a_nomePessoal: ${$a_nomePessoal}, \$a_tituloPrincipal: ${$a_tituloPrincipal})';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livrosDataID': livrosDataID,
      'exemplarDataID': exemplarDataID,
      'acervoDataID': acervoDataID,
      'exemplarNumero': exemplarNumero,
      'siglaInstituicao': siglaInstituicao,
      '\$a_classificacao': $a_classificacao,
      '\$b_numeroDeCutter': $b_numeroDeCutter,
      '\$a_edicao': $a_edicao,
      '\$a_nomePessoal': $a_nomePessoal,
      '\$a_tituloPrincipal': $a_tituloPrincipal,
    };
  }

  factory ClassEtiquetasData.fromMap(Map<String, dynamic> map) {
    return ClassEtiquetasData(
      livrosDataID: map['livrosDataID'] as int,
      acervoDataID: map['acervoDataID'] as int,
      exemplarDataID: map['exemplarDataID'] != null ? map['exemplarDataID'] as int : null,
      exemplarNumero: map['exemplarNumero'] as int,
      siglaInstituicao: map['siglaInstituicao'] != null ? map['siglaInstituicao'] as String : null,
      $a_classificacao: map['\$a_classificacao'] != null ? map['\$a_classificacao'] as String : null,
      $b_numeroDeCutter: map['\$b_numeroDeCutter']!= null ? map['\$b_numeroDeCutter'] as String : null,
      $a_edicao: map['\$a_edicao'] != null ? map['\$a_edicao'] as String : null,
      $a_nomePessoal: map['\$a_nomePessoal'] != null ? map['\$a_nomePessoal'] as String : null,
      $a_tituloPrincipal: map['\$a_tituloPrincipal'] != null ? map['\$a_tituloPrincipal'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassEtiquetasData.fromJson(String source) =>
      ClassEtiquetasData.fromMap(json.decode(source) as Map<String, dynamic>);
}
