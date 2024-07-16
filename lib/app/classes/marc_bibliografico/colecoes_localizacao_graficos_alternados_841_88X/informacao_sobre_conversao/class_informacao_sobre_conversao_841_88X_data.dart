// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/informacao_sobre_conversao/indicadores/class_indicadores_informacao_sobre_conversao_884_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/informacao_sobre_conversao/subcampos/class_subcampos_informacao_sobre_conversao_884_data.dart';

class ClassInformacaoSobreConversao_841_88X_Data {
  String etiqueta_884;
  ClassIndicadoresInformacaoSobreConversao_884_Data indicadores_884;
  ClassSubcamposInformacaoSobreConversao_884_Data subcampos_884;

  ClassInformacaoSobreConversao_841_88X_Data(
    this.etiqueta_884,
    this.indicadores_884,
    this.subcampos_884,
  );
}
