// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_biografica/indicadores/class_indicadores_nota_biografica_545_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_biografica/subcampos/class_subcampos_nota_biografica_545_data.dart';

class ClassNotaBiografica_5XX_Data {
  String etiqueta_545;
  ClassIndicadoresNotaBiografica_545_Data indicadores_545;
  ClassSubcamposNotaBiografica_545_Data subcampos_545;

  ClassNotaBiografica_5XX_Data(
    this.etiqueta_545,
    this.indicadores_545,
    this.subcampos_545,
  );
}
