// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassPessoaDados {
  final String erro;
  final String? cpf;
  final String? nome;
  final String? nomeSocial;
  final String? telefone;
  final String? email;

  ClassPessoaDados({
    this.erro = '',
    this.cpf = '',
    this.nome = '',
    this.nomeSocial = '',
    this.telefone = '',
    this.email = '',
  });

  @override
  String toString() {
    return 'ClassPessoaDados(erro: $erro, cpf: $cpf, nome: $nome, nomeSocial: $nomeSocial, telefone: $telefone, email: $email)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'erro': erro,
      'cpf': cpf,
      'nome': nome,
      'nomeSocial': nomeSocial,
      'telefone': telefone,
      'email': email,
    };
  }

  factory ClassPessoaDados.fromMap(Map<String, dynamic> map) {
    return ClassPessoaDados(
      erro: map['erro'] as String,
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      nomeSocial:
          map['nomeSocial'] != null ? map['nomeSocial'] as String : null,
      telefone: map['telefone'] != null ? map['telefone'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassPessoaDados.fromJson(String source) =>
      ClassPessoaDados.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassPessoaDados other) {
    if (identical(this, other)) return true;
  
    return 
      other.erro == erro &&
      other.cpf == cpf &&
      other.nome == nome &&
      other.nomeSocial == nomeSocial &&
      other.telefone == telefone &&
      other.email == email;
  }

  @override
  int get hashCode {
    return erro.hashCode ^
      cpf.hashCode ^
      nome.hashCode ^
      nomeSocial.hashCode ^
      telefone.hashCode ^
      email.hashCode;
  }

  ClassPessoaDados copyWith({
    String? erro,
    String? cpf,
    String? nome,
    String? nomeSocial,
    String? telefone,
    String? email,
  }) {
    return ClassPessoaDados(
      erro: erro ?? this.erro,
      cpf: cpf ?? this.cpf,
      nome: nome ?? this.nome,
      nomeSocial: nomeSocial ?? this.nomeSocial,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
    );
  }
}
