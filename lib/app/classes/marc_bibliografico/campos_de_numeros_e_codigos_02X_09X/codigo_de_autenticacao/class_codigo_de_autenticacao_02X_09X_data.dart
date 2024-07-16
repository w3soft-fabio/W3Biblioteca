// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/codigo_de_autenticacao/indicadores/class_indicadores_codigo_de_autenticacao_042_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/codigo_de_autenticacao/subcampos/class_subcampos_codigo_de_autenticacao_042_data.dart';

class ClassCodigoDeAutenticacao_02X_09X_Data {
  String etiqueta_042;
  ClassIndicadoresCodigoDeAutenticacao_042_Data indicadores_042;
  ClassSubcamposCodigoDeAutenticacao_042_Data subcampos_042;

  ClassCodigoDeAutenticacao_02X_09X_Data(
    this.etiqueta_042,
    this.indicadores_042,
    this.subcampos_042,
  );
}
