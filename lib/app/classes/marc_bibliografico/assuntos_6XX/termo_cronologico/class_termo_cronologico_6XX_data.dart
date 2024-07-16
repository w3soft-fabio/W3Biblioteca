// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/termo_cronologico/indicadores/class_indicadores_termo_cronologico_648_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/termo_cronologico/subcampos/class_subcampos_termo_cronologico_648_data.dart';

class ClassTermoCronologico_6XX_Data {
  final String etiqueta_648;
  final ClassIndicadoresTermoCronologico_648_Data indicadores_648;
  final ClassSubcamposTermoCronologico_648_Data subcampos_648;

  ClassTermoCronologico_6XX_Data(
    this.etiqueta_648,
    this.indicadores_648,
    this.subcampos_648,
  );
}
