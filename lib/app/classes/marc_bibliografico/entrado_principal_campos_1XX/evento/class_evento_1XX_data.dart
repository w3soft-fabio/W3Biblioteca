// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/evento/indicadores/class_indicadores_evento_111_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/evento/subcampos/class_subcampos_evento_111_data.dart';

class ClassEvento_1XX_Data {
  String etiqueta_111;
  ClassIndicadoresEvento_111_Data indicadores_111;
  ClassSubcamposEvento_111_Data subcampos_111;

  ClassEvento_1XX_Data(
    this.etiqueta_111,
    this.indicadores_111,
    this.subcampos_111,
  );
}
