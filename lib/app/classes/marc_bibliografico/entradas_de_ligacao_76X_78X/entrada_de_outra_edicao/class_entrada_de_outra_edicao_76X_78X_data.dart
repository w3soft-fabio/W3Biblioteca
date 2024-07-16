// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entradas_de_ligacao_76X_78X/entrada_de_outra_edicao/indicadores/class_indicadores_entrada_de_outra_edicao_775_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entradas_de_ligacao_76X_78X/entrada_de_outra_edicao/subcampos/class_subcampos_entrada_de_outra_edicao_775_data.dart';

class ClassEntradaDeOutraEdicao_76X_78X_Data {
  String etiqueta_775;
  ClassIndicadoresEntradaDeOutraEdicao_775_Data indicadores_775;
  ClassSubcamposEntradaDeOutraEdicao_775_Data subcampos_775;

  ClassEntradaDeOutraEdicao_76X_78X_Data(
    this.etiqueta_775,
    this.indicadores_775,
    this.subcampos_775,
  );
}
