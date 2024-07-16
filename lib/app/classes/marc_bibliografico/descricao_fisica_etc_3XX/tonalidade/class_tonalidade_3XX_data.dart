// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/tonalidade/indicadores/class_indicadores_tonalidade_384_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/tonalidade/subcampos/class_subcampos_tonalidade_384_data.dart';

class ClassTonalidade_3XX_Data {
  String etiqueta_384;
  ClassIndicadoresTonalidade_384_Data indicadores_384;
  ClassSubcamposTonalidade_384_Data subcampos_384;

  ClassTonalidade_3XX_Data(
    this.etiqueta_384,
    this.indicadores_384,
    this.subcampos_384,
  );
}
