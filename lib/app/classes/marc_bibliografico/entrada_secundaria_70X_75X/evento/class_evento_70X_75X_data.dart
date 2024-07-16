// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/evento/indicadores/class_indicadores_evento_711_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/evento/subcampos/class_subcampos_evento_711_data.dart';

class ClassEvento_70X_75X_Data {
  String etiqueta_711;
  ClassIndicadoresEvento_711_Data indicadores_711;
  ClassSubcamposEvento_711_Data subcampos_711;

  ClassEvento_70X_75X_Data(
    this.etiqueta_711,
    this.indicadores_711,
    this.subcampos_711,
  );
}
