// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_publicacao/indicadores/class_indicadores_nota_de_publicacao_550_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_publicacao/subcampos/class_subcampos_nota_de_publicacao_550_data.dart';

class ClassNotaDePublicacao_5XX_Data {
  String etiqueta_550;
  ClassIndicadoresNotaDePublicacao_550_Data indicadores_550;
  ClassSubcamposNotaDePublicacao_550_Data subcampos_550;

  ClassNotaDePublicacao_5XX_Data(
    this.etiqueta_550,
    this.indicadores_550,
    this.subcampos_550,
  );
}
