// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/nome_pessoal/indicadores/class_indicadores_nome_pessoal_800_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/nome_pessoal/subcampos/class_subcampos_nome_pessoal_800_data.dart';

class ClassNomePessoal_80X_840_Data {
  String etiqueta_800;
  ClassIndicadoresNomePessoal_800_Data indicadores_800;
  ClassSubcamposNomePessoal_800_Data subcampos_800;

  ClassNomePessoal_80X_840_Data(
    this.etiqueta_800,
    this.indicadores_800,
    this.subcampos_800,
  );
}
