// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/representacao_grafica_alternada/indicadores/class_indicadores_representacao_grafica_alternada_880_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/representacao_grafica_alternada/subcampos/class_subcampos_representacao_grafica_alternada_880_data.dart';

class ClassRepresentacaoGraficaAlternada_841_88X_Data {
  String etiqueta_880;
  ClassIndicadoresRepresentacaoGraficaAlternada_880_Data indicadores_880;
  ClassSubcamposRepresentacaoGraficaAlternada_880_Data subcampos_880;

  ClassRepresentacaoGraficaAlternada_841_88X_Data(
    this.etiqueta_880,
    this.indicadores_880,
    this.subcampos_880,
  );
}
