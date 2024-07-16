// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/entidade/indicadores/class_indicadores_entidade_110_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/entidade/subcampos/class_subcampos_entidade_110_data.dart';

class ClassEntidade_1XX_Data {
  String etiqueta_110;
  ClassIndicadoresEntidade_110_Data indicadores_110;
  ClassSubcamposEntidade_110_Data subcampos_110;

  ClassEntidade_1XX_Data(
    this.etiqueta_110,
    this.indicadores_110,
    this.subcampos_110,
  );
}
