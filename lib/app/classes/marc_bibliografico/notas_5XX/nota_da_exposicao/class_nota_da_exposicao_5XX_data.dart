// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_da_exposicao/indicadores/class_indicadores_nota_de_exposicao_585_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_da_exposicao/subcampos/class_subcampos_nota_de_exposicao_585_data.dart';

class ClassNotaDaExposicao_5XX_Data {
  String etiqueta_585;
  ClassIndicadoresNotaDeExposicao_585_Data indicadores_585;
  ClassSubcamposNotaDeExposicao_585_Data subcampos_585;

  ClassNotaDaExposicao_5XX_Data(
    this.etiqueta_585,
    this.indicadores_585,
    this.subcampos_585,
  );
}
