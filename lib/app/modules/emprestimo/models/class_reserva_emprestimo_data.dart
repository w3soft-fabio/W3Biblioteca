// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassReservaEmprestimoData {
  final String livroDataID;
  final String cpf;
  final String nome;
  final String email;
  final String celular;

  ClassReservaEmprestimoData({
    required this.livroDataID,
    required this.cpf,
    required this.nome,
    required this.email,
    required this.celular,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livroDataID': livroDataID,
      'cpf': cpf,
      'nome': nome,
      'email': email,
      'celular': celular,
    };
  }
  
  factory ClassReservaEmprestimoData.fromMap(Map<String, dynamic> map) {
    return ClassReservaEmprestimoData(
      livroDataID: map['livroDataID'] as String,
      cpf: map['cpf'] as String,
      nome: map['nome'] as String,
      email: map['email'] as String,
      celular: map['celular'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassReservaEmprestimoData.fromJson(String source) =>
      ClassReservaEmprestimoData.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassReservaEmprestimoData other) {
    if (identical(this, other)) return true;

    return other.livroDataID == livroDataID &&
        other.cpf == cpf &&
        other.nome == nome &&
        other.email == email &&
        other.celular == celular;
  }

  @override
  int get hashCode {
    return livroDataID.hashCode ^
        cpf.hashCode ^
        nome.hashCode ^
        email.hashCode ^
        celular.hashCode;
  }

  @override
  String toString() {
    return 'ClassReservaEmprestimoData(livroDataID: $livroDataID, cpf: $cpf, nome: $nome, email: $email, celular: $celular)';
  }
}
