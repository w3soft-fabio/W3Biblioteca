import 'dart:convert';

class ClassEmailContas {
  final int contaID;
  final String apelido;
  final String endereco;
  final String credenciaisUsuarios;
  final String credenciaisSenha;
  final String smtpHost;
  final String smtpPort;
  final String smtpSSL;

  ClassEmailContas({
    this.contaID = 0,
    this.apelido = '',
    this.endereco = '',
    this.credenciaisUsuarios = '',
    this.credenciaisSenha = '',
    this.smtpHost = '',
    this.smtpPort = '',
    this.smtpSSL = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contaID': contaID,
      'apelido': apelido,
      'endereco': endereco,
      'credenciaisUsuario': credenciaisUsuarios,
      'credenciaisSenha': credenciaisSenha,
      'smtpHost': smtpHost,
      'smtpPort': smtpPort,
      'smtpSSL': smtpSSL,
    };
  }

  factory ClassEmailContas.fromMap(Map<String, dynamic> map) {
    return ClassEmailContas(
      contaID: map['contaID'] as int,
      apelido: map['apelido'] as String,
      endereco: map['endereco'] as String,
      credenciaisUsuarios: map['credenciaisUsuario'] as String,
      credenciaisSenha: map['credenciaisSenha'] as String,
      smtpHost: map['smtpHost'] as String,
      smtpPort: map['smtpPort'] as String,
      smtpSSL: map['smtpSSL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassEmailContas.fromJson(String source) => ClassEmailContas.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClassEmailContas(contaID: $contaID, apelido: $apelido, endereco: $endereco, credenciaisUsuarios: $credenciaisUsuarios, credenciaisSenha: $credenciaisSenha, smtpHost: $smtpHost, smtpPort: $smtpPort, smtpSSL: $smtpSSL)';
  }

  @override
  bool operator ==(covariant ClassEmailContas other) {
    if (identical(this, other)) return true;
  
    return 
      other.contaID == contaID &&
      other.apelido == apelido &&
      other.endereco == endereco &&
      other.credenciaisUsuarios == credenciaisUsuarios &&
      other.credenciaisSenha == credenciaisSenha &&
      other.smtpHost == smtpHost &&
      other.smtpPort == smtpPort &&
      other.smtpSSL == smtpSSL;
  }

  @override
  int get hashCode {
    return contaID.hashCode ^
      apelido.hashCode ^
      endereco.hashCode ^
      credenciaisUsuarios.hashCode ^
      credenciaisSenha.hashCode ^
      smtpHost.hashCode ^
      smtpPort.hashCode ^
      smtpSSL.hashCode;
  }
}
