// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entradas_de_ligacao_76X_78X/entrada_de_serie_principal/indicadores/class_indicadores_entrada_de_serie_principal_760_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entradas_de_ligacao_76X_78X/entrada_de_serie_principal/subcampos/class_subcampos_entrada_de_serie_principal_760_data.dart';

class ClassEntradaDeSeriePrincipal_76X_78X_Data {
  String etiqueta_760;
  ClassIndicadoresEntradaDeSeriePrincipal_760_Data indicadores_760;
  ClassSubcamposEntradaDeSeriePrincipal_760_Data subcampos_760;

  ClassEntradaDeSeriePrincipal_76X_78X_Data(
    this.etiqueta_760,
    this.indicadores_760,
    this.subcampos_760,
  );
}
