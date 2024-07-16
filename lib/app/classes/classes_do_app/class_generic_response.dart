import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ClassGenericResponse {
  int statusCode;
  String codigoRetorno;
  String mensagem;

  ClassGenericResponse({
    this.statusCode = 0,
    this.codigoRetorno = '',
    this.mensagem = '',
  });

  @override
  String toString() =>
      'ClassGenericResponse(statusCode: $statusCode, codigoRetorno: $codigoRetorno, mensagem: $mensagem)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'codigoRetorno': codigoRetorno,
      'mensagem': mensagem,
    };
  }

  factory ClassGenericResponse.fromMap(Map<String, dynamic> map) {
    return ClassGenericResponse(
      statusCode: (map["statusCode"] ?? 0) as int,
      codigoRetorno: (map["codigoRetorno"] ?? '') as String,
      mensagem: (map["mensagem"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassGenericResponse.fromJson(String source) =>
      ClassGenericResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassGenericResponse other) {
    if (identical(this, other)) return true;

    return other.statusCode == statusCode &&
        other.codigoRetorno == codigoRetorno &&
        other.mensagem == mensagem;
  }

  @override
  int get hashCode =>
      statusCode.hashCode ^ codigoRetorno.hashCode ^ mensagem.hashCode;
}
