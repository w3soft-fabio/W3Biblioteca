// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/fonte_de_aquisicao/indicadores/class_indicadores_fonte_de_aquisicao_037_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/fonte_de_aquisicao/subcampos/class_subcampos_fonte_de_aquisicao_037_data.dart';

class ClassFonteDeAquisicao_02X_09X_FData {
  String etiqueta_037;
  ClassIndicadoresFonteDeAquisicao_037_Data indicadores_037;
  ClassSubcamposFonteDeAquisicao_037_Data subcampos_037;

  ClassFonteDeAquisicao_02X_09X_FData(
    this.etiqueta_037,
    this.indicadores_037,
    this.subcampos_037,
  );
}
