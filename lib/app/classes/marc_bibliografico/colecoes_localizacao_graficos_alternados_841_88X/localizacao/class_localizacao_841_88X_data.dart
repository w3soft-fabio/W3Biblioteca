// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/localizacao/indicadores/class_indicadores_localizacao_852_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/localizacao/subcampos/class_subcampos_localizacao_852_data.dart';

class ClassLocalizacao_841_88X_Data {
  String etiqueta_852;
  ClassIndicadoresLocalizacao_852_Data indicadores_852;
  ClassSubcamposLocalizacao_852_Data subcampos_852;

  ClassLocalizacao_841_88X_Data(
    this.etiqueta_852,
    this.indicadores_852,
    this.subcampos_852,
  );
}
