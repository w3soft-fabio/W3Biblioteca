// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/endereco/indicadores/class_indicadores_endereco_270_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/endereco/subcampos/class_subcampos_endereco_270_data.dart';

class ClassEndereco_25X_28X_Data {
  String etiqueta_270;
  ClassIndicadoresEndereco270Data indicadores_270;
  ClassSubcamposEndereco_270_Data subcampos_270;

  ClassEndereco_25X_28X_Data(
    this.etiqueta_270,
    this.indicadores_270,
    this.subcampos_270,
  );
}
