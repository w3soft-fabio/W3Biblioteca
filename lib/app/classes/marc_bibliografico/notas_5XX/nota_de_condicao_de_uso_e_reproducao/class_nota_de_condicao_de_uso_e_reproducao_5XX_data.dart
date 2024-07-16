// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_condicao_de_uso_e_reproducao/indicadores/class_indicadores_nota_de_condicao_de_uso_e_reproducao_540_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_condicao_de_uso_e_reproducao/subcampos/class_subcampos_nota_de_condicao_de_uso_e_reproducao_540_data.dart';

class ClassNotaDeCondicaoDeUsoEReproducao_5XX_Data {
  String etiqueta_540;
  ClassIndicadoresNotaDeCondicaoDeUsoEReproducao_540_Data indicadores_540;
  ClassSubcamposNotaDeCondicaoDeUsoEReproducao_540_Data subcampos_540;

  ClassNotaDeCondicaoDeUsoEReproducao_5XX_Data(
    this.etiqueta_540,
    this.indicadores_540,
    this.subcampos_540,
  );
}
