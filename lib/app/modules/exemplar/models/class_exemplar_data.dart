import 'dart:convert';

class ClassExemplarData {
  int? exemplarDataID;

  ClassExemplarData({
    this.exemplarDataID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemplarDataID': exemplarDataID,
    };
  }

  factory ClassExemplarData.fromMap(Map<String, dynamic> map) {
    return ClassExemplarData(
      exemplarDataID:
          map['exemplarDataID'] != null ? map['exemplarDataID'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassExemplarData.fromJson(String source) =>
      ClassExemplarData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ClassExemplarData(exemplarDataID: $exemplarDataID)';
}
