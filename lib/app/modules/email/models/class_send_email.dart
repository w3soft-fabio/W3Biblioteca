// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassSendEmail {
  final String contaID;
  final String assunto;
  final String mensagem;

  ClassSendEmail(
    this.contaID,
    this.assunto,
    this.mensagem,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contaID': contaID,
      'assunto': assunto,
      'mensagem': mensagem,
    };
  }

  factory ClassSendEmail.fromMap(Map<String, dynamic> map) {
    return ClassSendEmail(
      map['contaID'] as String,
      map['assunto'] as String,
      map['mensagem'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassSendEmail.fromJson(String source) =>
      ClassSendEmail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassSendEmail other) {
    if (identical(this, other)) return true;

    return other.contaID == contaID &&
        other.assunto == assunto &&
        other.mensagem == mensagem;
  }

  @override
  int get hashCode => contaID.hashCode ^ assunto.hashCode ^ mensagem.hashCode;

  @override
  String toString() =>
      'ClassSendEmail(contaID: $contaID, assunto: $assunto, mensagem: $mensagem)';
}
