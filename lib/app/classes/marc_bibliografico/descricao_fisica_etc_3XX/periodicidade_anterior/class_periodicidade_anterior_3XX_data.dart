// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/periodicidade_anterior/indicadores/class_indicadores_periodicidade_anterior_321_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/periodicidade_anterior/subcampos/class_subcampos_periodicidade_anterior_321_data.dart';

class ClassPeriodicidadeAnterior_3XX_Data {
  String etiqueta_321;
  ClassIndicadoresPeriodicidadeAnterior_321_Data indicadores_321;
  ClassSubcamposPeriodicidadeAnterior_321_Data subcampos_321;

  ClassPeriodicidadeAnterior_3XX_Data(
    this.etiqueta_321,
    this.indicadores_321,
    this.subcampos_321,
  );
}
