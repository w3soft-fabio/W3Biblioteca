// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/colecao_da_instituicao/indicadores/class_indicadores_colecao_da_instituicao_850_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/colecao_da_instituicao/subcampos/class_subcampos_colecao_da_instituicao_850_data.dart';

class ClassColecaoDaInstituicao_841_88X_Data {
  String etiqueta_850;
  ClassIndicadoresColecaoDaInstituicao_850_Data indicadores_850;
  ClassSubcamposColecaoDaInstituicao_850_Data subcampos_850;

  ClassColecaoDaInstituicao_841_88X_Data(
    this.etiqueta_850,
    this.indicadores_850,
    this.subcampos_850,
  );
}
