// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/identificacao_taxonomica/indicadores/class_indicadores_identificacao_taxonomica_754_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_70X_75X/identificacao_taxonomica/subcampos/class_subcampos_identificacao_taxonomica_754_data.dart';

class ClassIdentificacaoTaxonomica_70X_75X_Data {
  String etiqueta_754;
  ClassIndicadoresIdentificacaoTaxonomica_754_Data indicadores_754;
  ClassSubcamposIdentificacaoTaxonomica_754_Data subcampos_754;

  ClassIdentificacaoTaxonomica_70X_75X_Data(
    this.etiqueta_754,
    this.indicadores_754,
    this.subcampos_754,
  );
}
