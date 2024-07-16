// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class ClassAberturaDeDemandasData {
  int id;
  String nome;
  String login;
  String solicitacao;
  String status;
  String instituicao;
  int usuarioID;
  int protocolo;
  int escolaID;
  String data_previsao_conclusao;
  String? data_conclusao;
  String data;
  String? observacoes1;
  String instituicaoTipo;
  String tipoSolicitacao;
  
  ClassAberturaDeDemandasData({
    this.id = 0,
    this.nome = '',
    this.login = '',
    this.solicitacao = '',
    this.status = '',
    this.instituicao = '',
    this.usuarioID = 0,
    this.protocolo = 0,
    this.escolaID = 0,
    this.data_previsao_conclusao = '',
    this.data_conclusao,
    this.data = '',
    this.observacoes1,
    this.instituicaoTipo = '',
    this.tipoSolicitacao = '',
  });

  ClassAberturaDeDemandasData copyWith({
    int? id,
    String? nome,
    String? login,
    String? solicitacao,
    String? status,
    String? instituicao,
    int? usuarioID,
    int? protocolo,
    int? escolaID,
    String? data_previsao_conclusao,
    String? data_conclusao,
    String? data,
    String? observacoes1,
    String? instituicaoTipo,
    String? tipoSolicitacao,
  }) {
    return ClassAberturaDeDemandasData(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      login: login ?? this.login,
      solicitacao: solicitacao ?? this.solicitacao,
      status: status ?? this.status,
      instituicao: instituicao ?? this.instituicao,
      usuarioID: usuarioID ?? this.usuarioID,
      protocolo: protocolo ?? this.protocolo,
      escolaID: escolaID ?? this.escolaID,
      data_previsao_conclusao: data_previsao_conclusao ?? this.data_previsao_conclusao,
      data_conclusao: data_conclusao ?? this.data_conclusao,
      data: data ?? this.data,
      observacoes1: observacoes1 ?? this.observacoes1,
      instituicaoTipo: instituicaoTipo ?? this.instituicaoTipo,
      tipoSolicitacao: tipoSolicitacao ?? this.tipoSolicitacao,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'login': login,
      'solicitacao': solicitacao,
      'status': status,
      'instituicao': instituicao,
      'usuarioID': usuarioID,
      'protocolo': protocolo,
      'escolaID': escolaID,
      'data_previsao_conclusao': data_previsao_conclusao,
      'data_conclusao': data_conclusao,
      'data': data,
      'observacoes1': observacoes1,
      'instituicaoTipo': instituicaoTipo,
      'tipoSolicitacao': tipoSolicitacao,
    };
  }

  factory ClassAberturaDeDemandasData.fromMap(Map<String, dynamic> map) {
    return ClassAberturaDeDemandasData(
      id: map['id'] as int,
      nome: map['nome'] as String,
      login: map['login'] as String,
      solicitacao: map['solicitacao'] as String,
      status: map['status'] as String,
      instituicao: map['instituicao'] as String,
      usuarioID: map['usuarioID'] as int,
      protocolo: map['protocolo'] as int,
      escolaID: map['escolaID'] as int,
      data_previsao_conclusao: map['data_previsao_conclusao'] as String,
      data_conclusao: map['data_conclusao'] != null ? map['data_conclusao'] as String : null,
      data: map['data'] as String,
      observacoes1: map['observacoes1'] != null ? map['observacoes1'] as String : null,
      instituicaoTipo: map['instituicaoTipo'] as String,
      tipoSolicitacao: map['tipoSolicitacao'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassAberturaDeDemandasData.fromJson(String source) => ClassAberturaDeDemandasData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClassAberturaDeDemandasData(id: $id, nome: $nome, login: $login, solicitacao: $solicitacao, status: $status, instituicao: $instituicao, usuarioID: $usuarioID, protocolo: $protocolo, escolaID: $escolaID, data_previsao_conclusao: $data_previsao_conclusao, data_conclusao: $data_conclusao, data: $data, observacoes1: $observacoes1, instituicaoTipo: $instituicaoTipo, tipoSolicitacao: $tipoSolicitacao)';
  }

  @override
  bool operator ==(covariant ClassAberturaDeDemandasData other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.nome == nome &&
      other.login == login &&
      other.solicitacao == solicitacao &&
      other.status == status &&
      other.instituicao == instituicao &&
      other.usuarioID == usuarioID &&
      other.protocolo == protocolo &&
      other.escolaID == escolaID &&
      other.data_previsao_conclusao == data_previsao_conclusao &&
      other.data_conclusao == data_conclusao &&
      other.data == data &&
      other.observacoes1 == observacoes1 &&
      other.instituicaoTipo == instituicaoTipo &&
      other.tipoSolicitacao == tipoSolicitacao;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nome.hashCode ^
      login.hashCode ^
      solicitacao.hashCode ^
      status.hashCode ^
      instituicao.hashCode ^
      usuarioID.hashCode ^
      protocolo.hashCode ^
      escolaID.hashCode ^
      data_previsao_conclusao.hashCode ^
      data_conclusao.hashCode ^
      data.hashCode ^
      observacoes1.hashCode ^
      instituicaoTipo.hashCode ^
      tipoSolicitacao.hashCode;
  }
}
