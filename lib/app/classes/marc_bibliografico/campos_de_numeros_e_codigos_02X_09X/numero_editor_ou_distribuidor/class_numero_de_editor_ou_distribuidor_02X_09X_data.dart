// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_editor_ou_distribuidor/indicadores/class_indicadores_numero_editor_ou_destribuidor_028_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_editor_ou_distribuidor/subcampos/class_subcampos_numero_editor_ou_distribuidor_028_data.dart';

class ClassNumeroDeEditorOuDistribuidor_02X_09X_Data {
  String etiqueta_028;
  ClassIndicadoresNumeroDeEditorOuDistribuidor_028_Data indicadores_028;
  ClassSubcamposNumeroDeEditorOuDistribuidor028Data subcampos_028;

  ClassNumeroDeEditorOuDistribuidor_02X_09X_Data(
    this.etiqueta_028,
    this.indicadores_028,
    this.subcampos_028,
  );
}
