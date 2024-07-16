// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_suplemento/indicadores/class_indicadores_nota_de_suplemento_525_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_suplemento/subcampos/class_subcampos_nota_de_suplemento_525_data.dart';

class ClassNotaDeSuplemento_5XX_Data {
  String etiqueta_525;
  ClassIndicadoresNotaDeSuplemento_525_Data indicadores_525;
  ClassSubcamposNotaDeSuplemento_525_Data subcampos_525;

  ClassNotaDeSuplemento_5XX_Data(
    this.etiqueta_525,
    this.indicadores_525,
    this.subcampos_525,
  );
}
