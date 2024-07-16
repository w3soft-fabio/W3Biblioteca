// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/titulo_uniforme/indicadores/class_indicadores_titulo_uniforme_830_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/titulo_uniforme/subcampos/class_subcampos_titulo_uniforme_830_data.dart';

class ClassTituloUniforme_80X_840_Data {
  String etiqueta_830;
  ClassIndicadoresTituloUniforme_830_Data indicadores_830;
  ClassSubcamposTituloUniforme_830_Data subcampos_830;

  ClassTituloUniforme_80X_840_Data(
    this.etiqueta_830,
    this.indicadores_830,
    this.subcampos_830,
  );
}
