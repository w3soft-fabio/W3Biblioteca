// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20x_24X/titulo_abreviado/indicadores/class_indicadores_titulo_abreviado_210_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20x_24X/titulo_abreviado/subcampos/class_subcampos_titulo_abreviado_210_data.dart';

class ClassTituloAbreviado_20X_24X_Data {
  String etiqueta_210;
  ClassIndicadoresTituloAbreviado_210_Data indicadores_210;
  ClassSubcamposTituloAbreviado_210_Data subcampos_210;

  ClassTituloAbreviado_20X_24X_Data(
    this.etiqueta_210,
    this.indicadores_210,
    this.subcampos_210,
  );
}
