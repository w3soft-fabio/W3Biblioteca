// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/informacao_sobre_correspondencia/indicadores/class_indicadores_informacao_sobre_correspondencia_885_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/informacao_sobre_correspondencia/subcampos/class_subcampos_informacao_sobre_correspondencia_885_data.dart';

class ClassInformacaoSobreCorrespondencia_841_88X_Data {
  String etiqueta_885;
  ClassIndicadoresInformacaoSobreCorrespondencia_885_Data indicadores_885;
  ClassSubcamposInformacaoSobreCorrespondencia_885_Data subcampos_885;

  ClassInformacaoSobreCorrespondencia_841_88X_Data(
    this.etiqueta_885,
    this.indicadores_885,
    this.subcampos_885,
  );
}
