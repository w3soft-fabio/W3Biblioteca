import 'dart:convert';

class ClassConfiguracaoSistemaData {
  final double multaValorDiario;

  ClassConfiguracaoSistemaData({
    this.multaValorDiario = 0.0,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multaValorDiario': multaValorDiario,
    };
  }

  factory ClassConfiguracaoSistemaData.fromMap(Map<String, dynamic> map) {
    return ClassConfiguracaoSistemaData(
      multaValorDiario: map['multaValorDiario'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassConfiguracaoSistemaData.fromJson(String source) => ClassConfiguracaoSistemaData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassConfiguracaoSistemaData other) {
    if (identical(this, other)) return true;
  
    return 
      other.multaValorDiario == multaValorDiario;
  }

  @override
  int get hashCode => multaValorDiario.hashCode;

  @override
  String toString() => 'ClassConfiguracaoSistemaData(multaValorDiario: $multaValorDiario)';
}
