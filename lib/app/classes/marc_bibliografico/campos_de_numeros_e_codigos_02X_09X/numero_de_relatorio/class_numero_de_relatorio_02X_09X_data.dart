// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_relatorio/indicadores/class_indicadores_numero_de_relatorio_088_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_relatorio/subcampos/class_subcampos_numero_de_relatorio_088_data.dart';

class ClassNumeroDeRelatorio_02X_09X_Data {
  String etiqueta_088;
  ClassIndicadoresNumeroDeRelatorio_088_Data indicadores_088;
  ClassSubcamposNumeroDeRelatorio_088_Data subcampos_088;

  ClassNumeroDeRelatorio_02X_09X_Data(
    this.etiqueta_088,
    this.indicadores_088,
    this.subcampos_088,
  );
}
