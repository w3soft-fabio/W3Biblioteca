// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/preco/indicadores/class_indicadores_preco_365_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/preco/subcampos/class_subcampos_preco_365_data.dart';

class ClassPreco_3XX_Data {
  String etiqueta_365;
  ClassIndicadoresPreco_365_Data indicadores_365;
  ClassSubcamposPreco_365_Data subcampos_365;

  ClassPreco_3XX_Data(
    this.etiqueta_365,
    this.indicadores_365,
    this.subcampos_365,
  );
}
