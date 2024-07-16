// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/titulo_uniforme/indicadores/class_indicadores_titulo_uniforme_630_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/titulo_uniforme/subcampos/class_subcampos_titulo_uniforme_630_data.dart';

class ClassTituloUniforme_6XX_Data {
  String etiqueta_630;
  ClassIndicadoresTituloUniforme_630_Data indicadores_630;
  ClassSubcamposTituloUniforme_630_Data subcampos_630;

  ClassTituloUniforme_6XX_Data(
    this.etiqueta_630,
    this.indicadores_630,
    this.subcampos_630,
  );
}
