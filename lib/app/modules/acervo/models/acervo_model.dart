import 'dart:convert';

class AcervoModel {
  int? acervoDataID;
  
  AcervoModel({
    this.acervoDataID,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acervoDataID': acervoDataID,
    };
  }

  factory AcervoModel.fromMap(Map<String, dynamic> map) {
    return AcervoModel(
      acervoDataID: map['acervoDataID'] != null ? map['acervoDataID'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AcervoModel.fromJson(String source) => AcervoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AcervoModel(acervoDataID: $acervoDataID)';
}
