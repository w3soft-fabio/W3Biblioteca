// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_citacao/indicadores/class_indicadores_nota_de_citacao_510_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_citacao/subcampos/class_subcampos_nota_de_citacao_510_data.dart';

class ClassNotaDeCitacao_5XX_Data {
  String etiqueta_510;
  ClassIndicadoresNotaDeCitacao_510_Data indicadores_510;
  ClassSubcamposNotaDeCitacao_510_Data subcampos_510;

  ClassNotaDeCitacao_5XX_Data(
    this.etiqueta_510,
    this.indicadores_510,
    this.subcampos_510,
  );
}
