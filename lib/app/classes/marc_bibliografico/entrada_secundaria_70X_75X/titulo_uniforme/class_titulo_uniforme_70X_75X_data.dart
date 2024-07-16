// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/titulo_uniforme/indicadores/class_indicadores_titulo_uniforme_730_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/titulo_uniforme/subcampos/class_subcampos_titulo_uniforme_730_data.dart';

class ClassTituloUniforme_70X_75X_Data {
  String etiqueta_730;
  ClassIndicadoresTituloUniforme_730_Data indicadores_730;
  ClassSubcamposTituloUniforme_730_Data subcampos_730;

  ClassTituloUniforme_70X_75X_Data(
    this.etiqueta_730,
    this.indicadores_730,
    this.subcampos_730,
  );
}
