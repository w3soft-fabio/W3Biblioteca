// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/series_4XX/indicadores/class_indicadores_series_490_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/series_4XX/subcampos/class_subcampos_series_490_data.dart';

class ClassSeries_4XX_Data {
  String etiqueta_490;
  ClassIndicadoresSeries_490_Data indicadores_490;
  ClassSubcamposSeries_490_Data subcampos_490;

  ClassSeries_4XX_Data(
    this.etiqueta_490,
    this.indicadores_490,
    this.subcampos_490,
  );
}
