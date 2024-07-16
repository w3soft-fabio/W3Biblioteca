// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/entidade/indicadores/class_indicadores_entidade_810_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/entidade/subcampos/class_subcampos_entidade_810_data.dart';

class ClassEntidade_80X_840_Data {
  String etiqueta_810;
  ClassIndicadoresEntidade_810_Data indicadores_810;
  ClassSubcamposEntidade_810_Data subcampos_810;

  ClassEntidade_80X_840_Data(
    this.etiqueta_810,
    this.indicadores_810,
    this.subcampos_810,
  );
}
