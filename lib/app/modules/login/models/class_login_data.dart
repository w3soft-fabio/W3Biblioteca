// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassLoginData {
  final String? usuarioID;
  final String cpf;
  final String nome;
  final String senha;
  final String erro;

  ClassLoginData({
    this.usuarioID = "0",
    this.cpf = '',
    this.nome = '',
    this.senha = '',
    this.erro = '',
  });

  @override
  String toString() {
    return 'ClassLoginData(usuarioID: $usuarioID, cpf: $cpf, nome: $nome, senha: $senha, erro: $erro)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usuarioID': usuarioID,
      'cpf': cpf,
      'nome': nome,
      'senha': senha,
      'erro': erro,
    };
  }

  factory ClassLoginData.fromMap(Map<String, dynamic> map) {
    return ClassLoginData(
      usuarioID: map['usuarioID'] as String,
      cpf: map['cpf'] as String,
      nome: map['nome'] as String,
      senha: map['senha'] as String,
      erro: map['erro'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassLoginData.fromJson(String source) =>
      ClassLoginData.fromMap(json.decode(source) as Map<String, dynamic>);
}
