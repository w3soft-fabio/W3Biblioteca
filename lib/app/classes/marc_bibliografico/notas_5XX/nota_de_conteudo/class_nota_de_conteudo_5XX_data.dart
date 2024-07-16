// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_conteudo/indicadores/class_indicadores_nota_de_conteudo_505_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_conteudo/subcampos/class_subcampos_nota_de_conteudo_505_data.dart';

class ClassNotaDeConteudo_5XX_Data {
  String etiqueta_505;
  ClassIndicadoresNotaDeConteudo_505_Data indicadores_505;
  ClassSubcamposNotaDeConteudo_505_Data subcampos_505;

  ClassNotaDeConteudo_5XX_Data(
    this.etiqueta_505,
    this.indicadores_505,
    this.subcampos_505,
  );
}
