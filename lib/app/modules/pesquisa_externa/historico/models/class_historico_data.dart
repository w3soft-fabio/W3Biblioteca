// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassHistoricoData {
  final int numeroExemplar;
  final String reservaData;
  final String nome;
  final int hora;
  final String titulo;
  final String situacao;

  ClassHistoricoData({
    this.numeroExemplar = 0,
    this.reservaData = '',
    this.nome = '',
    this.hora = 0,
    this.titulo = '',
    this.situacao = '',
  });

  ClassHistoricoData copyWith({
    int? numeroExemplar,
    String? reservaData,
    String? nome,
    int? hora,
    String? titulo,
    String? situacao,
  }) {
    return ClassHistoricoData(
      numeroExemplar: numeroExemplar ?? this.numeroExemplar,
      reservaData: reservaData ?? this.reservaData,
      nome: nome ?? this.nome,
      hora: hora ?? this.hora,
      titulo: titulo ?? this.titulo,
      situacao: situacao ?? this.situacao,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numeroExemplar': numeroExemplar,
      'reservaData': reservaData,
      'nome': nome,
      'hora': hora,
      'titulo': titulo,
      'reservaSituacao': situacao,
    };
  }

  factory ClassHistoricoData.fromMap(Map<String, dynamic> map) {
    return ClassHistoricoData(
      numeroExemplar: map['numeroExemplar'] as int,
      reservaData: map['reservaData'] as String,
      nome: map['nome'] as String,
      hora: map['hora'] as int,
      titulo: map['titulo'] as String,
      situacao: map['reservaSituacao'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassHistoricoData.fromJson(String source) =>
      ClassHistoricoData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClassHistoricoData(numeroExemplar: $numeroExemplar, reservaData: $reservaData, nome: $nome, hora: $hora, titulo: $titulo, situacao: $situacao)';
  }

  @override
  bool operator ==(covariant ClassHistoricoData other) {
    if (identical(this, other)) return true;

    return other.numeroExemplar == numeroExemplar &&
        other.reservaData == reservaData &&
        other.nome == nome &&
        other.hora == hora &&
        other.titulo == titulo &&
        other.situacao == situacao;
  }

  @override
  int get hashCode {
    return numeroExemplar.hashCode ^
        reservaData.hashCode ^
        nome.hashCode ^
        hora.hashCode ^
        titulo.hashCode ^
        situacao.hashCode;
  }
}
