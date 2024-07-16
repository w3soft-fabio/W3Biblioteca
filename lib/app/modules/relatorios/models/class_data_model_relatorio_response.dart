import 'dart:convert';

class ClassDataModelRelatorioResponse {
  final String reportFileName;
  final String reportErrorMessage;

  ClassDataModelRelatorioResponse({
    this.reportFileName = '',
    this.reportErrorMessage = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportFileName': reportFileName,
      'reportErrorMessage': reportErrorMessage,
    };
  }

  factory ClassDataModelRelatorioResponse.fromMap(Map<String, dynamic> map) {
    return ClassDataModelRelatorioResponse(
      reportFileName: map['reportFileName'] as String,
      reportErrorMessage: map['reportErrorMessage'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassDataModelRelatorioResponse.fromJson(String source) =>
      ClassDataModelRelatorioResponse.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ClassDataModelRelatorioResponse other) {
    if (identical(this, other)) return true;

    return other.reportFileName == reportFileName &&
        other.reportErrorMessage == reportErrorMessage;
  }

  @override
  int get hashCode => reportFileName.hashCode ^ reportErrorMessage.hashCode;

  @override
  String toString() =>
      'ClassDataModelRelatorioResponse(reportFileName: $reportFileName, reportErrorMessage: $reportErrorMessage)';
}
