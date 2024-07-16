// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/titulo_uniforme/indicadores/class_indicadores_titulo_uniforme_130_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrado_principal_campos_1XX/titulo_uniforme/subcampos/class_subcampos_titulo_uniforme_130_data.dart';

class ClassTituloUniforme_1XX_Data {
  String etiqueta_130;
  ClassIndicadoresTituloUniforme_130_Data indicadores_130;
  ClassSubcamposTituloUniforme_130_Data subcampos_130;

  ClassTituloUniforme_1XX_Data(
    this.etiqueta_130,
    this.indicadores_130,
    this.subcampos_130,
  );
}
