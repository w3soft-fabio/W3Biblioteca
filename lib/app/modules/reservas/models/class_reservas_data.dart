// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassReservasData {
  final int exemplarNumero;
  final int reservasDataID;
  final int livroDataID;
  final String reservaData;
  final String cpf;
  final String nome;
  final String email;
  final String celular;
  final String reservaSituacao;

  ClassReservasData({
    this.exemplarNumero = 0,
    this.livroDataID = 0,
    this.reservasDataID = 0,
    this.reservaData = '',
    this.cpf = '',
    this.nome = '',
    this.email = '',
    this.celular = '',
    this.reservaSituacao = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemplarNumero': exemplarNumero,
      'livroDataID': livroDataID,
      'reservasDataID': reservasDataID,
      'reservaData': reservaData,
      'cpf': cpf,
      'nome': nome,
      'email': email,
      'celular': celular,
      'reservaSituacao': reservaSituacao,
    };
  }

  factory ClassReservasData.fromMap(Map<String, dynamic> map) {
    return ClassReservasData(
      exemplarNumero: map['exemplarNumero'] as int,
      livroDataID: map['livroDataID'] as int,
      reservasDataID: map['reservasDataID'] as int,
      reservaData: map['reservaData'] as String,
      cpf: map['cpf'] as String,
      nome: map['nome'] as String,
      email: map['email'] as String,
      celular: map['celular'] as String,
      reservaSituacao: map['reservaSituacao'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassReservasData.fromJson(String source) =>
      ClassReservasData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClassReservasData(exemplarNumero: $exemplarNumero, reservasDataID: $reservasDataID, livroDataID: $livroDataID, reservaData: $reservaData, cpf: $cpf, nome: $nome, email: $email, celular: $celular, reservaSituacao: $reservaSituacao)';
  }

  @override
  bool operator ==(covariant ClassReservasData other) {
    if (identical(this, other)) return true;

    return other.exemplarNumero == exemplarNumero &&
        other.reservasDataID == reservasDataID &&
        other.livroDataID == livroDataID &&
        other.reservaData == reservaData &&
        other.cpf == cpf &&
        other.nome == nome &&
        other.email == email &&
        other.celular == celular &&
        other.reservaSituacao == reservaSituacao;
  }

  @override
  int get hashCode {
    return exemplarNumero.hashCode ^
        reservasDataID.hashCode ^
        livroDataID.hashCode ^
        reservaData.hashCode ^
        cpf.hashCode ^
        nome.hashCode ^
        email.hashCode ^
        celular.hashCode ^
        reservaSituacao.hashCode;
  }
}
