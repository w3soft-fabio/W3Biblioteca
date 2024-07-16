// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassDataModelRelatorioArgs {
  final String relatorioID;
  final String relatorioFormato;
  final String? arg0;
  final String? arg1;
  final String? arg2;
  final String? arg3;
  final String? arg4;
  final String? arg5;
  final String? arg6;
  final String? arg7;
  final String? arg8;
  final String? arg9;

  ClassDataModelRelatorioArgs({
    this.relatorioID = '',
    this.relatorioFormato = '',
    this.arg0 = '',
    this.arg1 = '',
    this.arg2 = '',
    this.arg3 = '',
    this.arg4 = '',
    this.arg5 = '',
    this.arg6 = '',
    this.arg7 = '',
    this.arg8 = '',
    this.arg9 = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relatorioID': relatorioID,
      'relatorioFormato': relatorioFormato,
      'arg0': arg0,
      'arg1': arg1,
      'arg2': arg2,
      'arg3': arg3,
      'arg4': arg4,
      'arg5': arg5,
      'arg6': arg6,
      'arg7': arg7,
      'arg8': arg8,
      'arg9': arg9,
    };
  }

  factory ClassDataModelRelatorioArgs.fromMap(Map<String, dynamic> map) {
    return ClassDataModelRelatorioArgs(
      relatorioID: map['relatorioID'] as String,
      relatorioFormato: map['relatorioFormato'] as String,
      arg0: map['arg0'] != null ? map['arg0'] as String : null,
      arg1: map['arg1'] != null ? map['arg1'] as String : null,
      arg2: map['arg2'] != null ? map['arg2'] as String : null,
      arg3: map['arg3'] != null ? map['arg3'] as String : null,
      arg4: map['arg4'] != null ? map['arg4'] as String : null,
      arg5: map['arg5'] != null ? map['arg5'] as String : null,
      arg6: map['arg6'] != null ? map['arg6'] as String : null,
      arg7: map['arg7'] != null ? map['arg7'] as String : null,
      arg8: map['arg8'] != null ? map['arg8'] as String : null,
      arg9: map['arg9'] != null ? map['arg9'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassDataModelRelatorioArgs.fromJson(String source) =>
      ClassDataModelRelatorioArgs.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassDataModelRelatorioArgs other) {
    if (identical(this, other)) return true;

    return other.relatorioID == relatorioID &&
        other.relatorioFormato == relatorioFormato &&
        other.arg0 == arg0 &&
        other.arg1 == arg1 &&
        other.arg2 == arg2 &&
        other.arg3 == arg3 &&
        other.arg4 == arg4 &&
        other.arg5 == arg5 &&
        other.arg6 == arg6 &&
        other.arg7 == arg7 &&
        other.arg8 == arg8 &&
        other.arg9 == arg9;
  }

  @override
  int get hashCode {
    return relatorioID.hashCode ^
        relatorioFormato.hashCode ^
        arg0.hashCode ^
        arg1.hashCode ^
        arg2.hashCode ^
        arg3.hashCode ^
        arg4.hashCode ^
        arg5.hashCode ^
        arg6.hashCode ^
        arg7.hashCode ^
        arg8.hashCode ^
        arg9.hashCode;
  }

  @override
  String toString() {
    return 'ClassDataModelRelatorioArgs(relatorioID: $relatorioID, relatorioFormato: $relatorioFormato, arg0: $arg0, arg1: $arg1, arg2: $arg2, arg3: $arg3, arg4: $arg4, arg5: $arg5, arg6: $arg6, arg7: $arg7, arg8: $arg8, arg9: $arg9)';
  }
}
