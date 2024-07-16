// ignore_for_file: camel_case_types, file_names

import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/eventos/indicadores/class_indicadores_eventos_611_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/eventos/subcampos/class_subcampos_eventos_611_data.dart';

class ClassEventos_6XX_Data {
  String etiqueta_611;
  ClassIndicadoresEventos_611_Data indicadores_611;
  ClassSubcamposEventos_611_Data subcampos_611;

  ClassEventos_6XX_Data(
    this.etiqueta_611,
    this.indicadores_611,
    this.subcampos_611,
  );
}
