// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/nome_pessoal/indicadores/class_indicadores_nome_pessoal_600_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/nome_pessoal/subcampos/class_subcampos_nome_pessoal_600_data.dart';

class ClassNomePessoal_6XX_Data {
  String etiqueta_600;
  ClassIndicadoresNomePessoal_600_Data indicadores_600;
  ClassSubcamposNomePessoal_600_Data subcampos_600;

  ClassNomePessoal_6XX_Data(
    this.etiqueta_600,
    this.indicadores_600,
    this.subcampos_600,
  );
}
