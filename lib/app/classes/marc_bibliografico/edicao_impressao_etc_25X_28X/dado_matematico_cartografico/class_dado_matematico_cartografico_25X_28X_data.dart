// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/dado_matematico_cartografico/indicadores/class_indicadores_dado_matematico_cartografico_255_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/edicao_impressao_etc_25X_28X/dado_matematico_cartografico/subcampos/class_subcampos_dado_matematico_cartografico_255_data.dart';

class ClassDadoMatematicoCartografico_25X_28X_Data {
  String etiqueta_255;
  ClassIndicadoresDadoMatematicoCartografico_255_Data indicadores_255;
  ClassSubcamposDadoMatematicoCartografico_255_Data subcampos_255;

  ClassDadoMatematicoCartografico_25X_28X_Data(
    this.etiqueta_255,
    this.indicadores_255,
    this.subcampos_255,
  );
}
