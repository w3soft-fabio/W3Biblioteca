// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/eventos/indicadores/class_indicadores_eventos_811_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/eventos/subcampos/class_subcampos_eventos_811_data.dart';

class ClassEventos_80X_840_Data {
  String etiqueta_811;
  ClassIndicadoresEventos_811_Data indicadores_811;
  ClassSubcamposEventos_811_Data subcampos_811;

  ClassEventos_80X_840_Data(
    this.etiqueta_811,
    this.indicadores_811,
    this.subcampos_811,
  );
}
