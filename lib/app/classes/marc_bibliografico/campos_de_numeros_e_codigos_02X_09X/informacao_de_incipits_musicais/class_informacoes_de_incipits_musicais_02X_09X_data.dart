// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/informacao_de_incipits_musicais/indicadores/class_indicadores_informacoes_de_incipits_musicais_031_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/informacao_de_incipits_musicais/subcampos/class_subcampos_informacoes_de_incipits_musicais_030_data.dart';

class ClassInformacoesDeIncipitsMusicais_02X_09X_Data {
  String etiqueta_031;
  ClassIndicadoresInformacoesDeIncipitsMusicais_031_Data indicadores_031;
  ClassSubcamposInformacoesDeIncipitsMusicais_031_Data subcampos_031;

  ClassInformacoesDeIncipitsMusicais_02X_09X_Data(
    this.etiqueta_031,
    this.indicadores_031,
    this.subcampos_031,
  );
}
