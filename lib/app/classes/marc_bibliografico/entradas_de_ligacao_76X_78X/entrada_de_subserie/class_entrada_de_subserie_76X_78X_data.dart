// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entradas_de_ligacao_76X_78X/entrada_de_subserie/indicadores/class_indicadores_entrada_de_subserie_762_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entradas_de_ligacao_76X_78X/entrada_de_subserie/subcampos/class_subcampos_entrada_de_subserie_762_data.dart';

class ClassEntradaDeSubserie_76X_78X_Data {
  String etiqueta_762;
  ClassIndicadoresEntradaDeSubserie_762_Data indicadores_762;
  ClassSubcamposEntradaDeSubserie_762_Data subcampos_762;

  ClassEntradaDeSubserie_76X_78X_Data(
    this.etiqueta_762,
    this.indicadores_762,
    this.subcampos_762,
  );
}
