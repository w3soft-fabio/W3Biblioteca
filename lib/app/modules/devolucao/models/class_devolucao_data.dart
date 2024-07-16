import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ClassDevolucaoData {
  final int exemplarNumero;
  final int emprestimoDataID;
  final int livroDataID;
  final String emprestimoSituacao;
  final String cpf;
  final String nome;
  final String email;
  final String celular;
  final String dataEmprestimo;
  final String dataEntregaPrevista;
  
  ClassDevolucaoData({
    this.exemplarNumero = 0,
    this.emprestimoDataID = 0,
    this.livroDataID = 0,
    this.emprestimoSituacao = '',
    this.cpf = '',
    this.nome = '',
    this.email = '',
    this.celular = '',
    this.dataEmprestimo = '',
    this.dataEntregaPrevista = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemplarNumero': exemplarNumero,
      'emprestimoDataID': emprestimoDataID,
      'livroDataID': livroDataID,
      'emprestimoSituacao': emprestimoSituacao,
      'emprestimoCPF': cpf,
      'nome': nome,
      'email': email,
      'celular': celular,
      'dataEmprestimo': dataEmprestimo,
      'dataEntregaPrevista': dataEntregaPrevista,
    };
  }

  factory ClassDevolucaoData.fromMap(Map<String, dynamic> map) {
    return ClassDevolucaoData(
      exemplarNumero: map['exemplarNumero'] as int,
      emprestimoDataID: map['emprestimoDataID'] as int,
      livroDataID: map['livroDataID'] as int,
      emprestimoSituacao: map['emprestimoSituacao'] as String,
      cpf: map['emprestimoCPF'] as String,
      nome: map['nome'] as String,
      email: map['email'] as String,
      celular: map['celular'] as String,
      dataEmprestimo: map['dataEmprestimo'] as String,
      dataEntregaPrevista: map['dataEntregaPrevista'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassDevolucaoData.fromJson(String source) => ClassDevolucaoData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassDevolucaoData other) {
    if (identical(this, other)) return true;
  
    return 
      other.exemplarNumero == exemplarNumero &&
      other.emprestimoDataID == emprestimoDataID &&
      other.livroDataID == livroDataID &&
      other.emprestimoSituacao == emprestimoSituacao &&
      other.cpf == cpf &&
      other.nome == nome &&
      other.email == email &&
      other.celular == celular &&
      other.dataEmprestimo == dataEmprestimo &&
      other.dataEntregaPrevista == dataEntregaPrevista;
  }

  @override
  int get hashCode {
    return exemplarNumero.hashCode ^
      emprestimoDataID.hashCode ^
      livroDataID.hashCode ^
      emprestimoSituacao.hashCode ^
      cpf.hashCode ^
      nome.hashCode ^
      email.hashCode ^
      celular.hashCode ^
      dataEmprestimo.hashCode ^
      dataEntregaPrevista.hashCode;
  }

  @override
  String toString() {
    return 'ClassDevolucaoData(exemplarNumero: $exemplarNumero, emprestimoDataID: $emprestimoDataID, livroDataID: $livroDataID, emprestimoSituacao: $emprestimoSituacao, cpf: $cpf, nome: $nome, email: $email, celular: $celular, dataEmprestimo: $dataEmprestimo, dataEntregaPrevista: $dataEntregaPrevista)';
  }
}
