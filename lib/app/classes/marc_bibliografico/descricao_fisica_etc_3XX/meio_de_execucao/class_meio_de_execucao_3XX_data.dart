// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/meio_de_execucao/indicadores/class_indicadores_meio_de_execucao_382_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/meio_de_execucao/subcampos/class_subcampos_meio_de_execucao_382_data.dart';

class ClassMeioDeExecucao_3XX_Data {
  String etiqueta_382;
  ClassIndicadoresMeioDeExecucao_382_Data indicadores_382;
  ClassSubcamposMeioDeExecucao_382_Data subcampos_382;

  ClassMeioDeExecucao_3XX_Data(
    this.etiqueta_382,
    this.indicadores_382,
    this.subcampos_382,
  );
}
