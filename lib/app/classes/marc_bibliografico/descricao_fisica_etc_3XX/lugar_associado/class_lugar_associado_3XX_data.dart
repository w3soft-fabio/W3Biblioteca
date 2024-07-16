// ignore_for_file: camel_case_types, file_names

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/lugar_associado/indicadores/class_indicadores_lugar_associado_370_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/lugar_associado/subcampos/class_subcampos_lugar_associado_370_data.dart';

class ClassLugarAssociado_3XX_Data {
  String etiqueta_370;
  ClassIndicadoresLugarAssociado_370_Data indicadores_370;
  ClassSubcamposLugarAssociado_370_Data subcampos_370;

  ClassLugarAssociado_3XX_Data(
    this.etiqueta_370,
    this.indicadores_370,
    this.subcampos_370,
  );
}
