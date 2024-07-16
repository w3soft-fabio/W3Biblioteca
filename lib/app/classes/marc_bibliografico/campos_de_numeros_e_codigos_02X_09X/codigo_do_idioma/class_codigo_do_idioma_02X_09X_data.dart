// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/codigo_do_idioma/indicadores/class_indicadores_codigo_do_idioma_041_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/codigo_do_idioma/subcampos/class_subcampos_codigo_do_idioma_041_data.dart';

class ClassCodigoDoIdioma_02X_09X_Data {
  String etiqueta_041;
  ClassIndicadoresCodigoDoIdioma_041_Data indicadores_041;
  ClassSubcamposCodigoDoIdioma_041_Data subcampos_041;

  ClassCodigoDoIdioma_02X_09X_Data(
    this.etiqueta_041,
    this.indicadores_041,
    this.subcampos_041,
  );
}
