// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/designacao_coden/indicadores/class_indicadores_designacao_coden_030_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/designacao_coden/subcampos/class_subcampos_designacao_coden_030_data.dart';

class ClassDesignacaoCoden_02X_09X_Data {
  String etiqueta_30;
  ClassIndicadoresDesignacaoCoden_030_Data indicadores_30;
  ClassSubcamposDesignacaoCoden_030_Data subcampos_30;

  ClassDesignacaoCoden_02X_09X_Data(
    this.etiqueta_30,
    this.indicadores_30,
    this.subcampos_30,
  );
}
