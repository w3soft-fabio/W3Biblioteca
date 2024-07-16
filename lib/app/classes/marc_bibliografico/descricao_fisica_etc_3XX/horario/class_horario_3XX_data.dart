// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/horario/indicadores/class_indicadores_horario_307_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/horario/subcampos/class_subcampos_horario_307_data.dart';

class ClassHorario_3XX_Data {
  String etiqueta_307;
  ClassIndicadoresHorario307Data indicadores_307;
  ClassSubcamposHorario_307_Data subcampos_307;

  ClassHorario_3XX_Data(
    this.etiqueta_307,
    this.indicadores_307,
    this.subcampos_307,
  );
}
