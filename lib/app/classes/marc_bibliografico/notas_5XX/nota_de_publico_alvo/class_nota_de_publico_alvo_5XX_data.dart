// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_publico_alvo/indicadores/class_indicadores_nota_de_publico_alvo_521_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_publico_alvo/subcampos/class_subcampos_nota_de_publico_alvo_521_data.dart';

class ClassNotaDePublicoAlvo_5XX_Data {
  String etiqueta_521;
  ClassIndicadoresNotaDePublicoAlvo_521_Data indicadores_521;
  ClassSubcamposNotaDePublicoAlvo_521_Data subcampos_521;

  ClassNotaDePublicoAlvo_5XX_Data(
    this.etiqueta_521,
    this.indicadores_521,
    this.subcampos_521,
  );
}
