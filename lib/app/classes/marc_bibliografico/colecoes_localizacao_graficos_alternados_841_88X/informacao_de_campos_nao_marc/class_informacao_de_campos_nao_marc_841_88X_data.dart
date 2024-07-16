// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/informacao_de_campos_nao_marc/indicadores/class_indicadores_informacao_de_campos_nao_marc_887_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/colecoes_localizacao_graficos_alternados_841_88X/informacao_de_campos_nao_marc/subcampos/class_subcampos_informacao_de_campos_nao_marc_887_data.dart';

class ClassInformacaoDeCamposNaoMarc_841_88X_Data {
  String etiqueta_887;
  ClassIndicadoresInformacaoDeCamposNaoMarc887Data indicadores_887;
  ClassSubcamposInformacaoDeCamposNaoMarc_887_Data subcampos_887;

  ClassInformacaoDeCamposNaoMarc_841_88X_Data(
    this.etiqueta_887,
    this.indicadores_887,
    this.subcampos_887,
  );
}
