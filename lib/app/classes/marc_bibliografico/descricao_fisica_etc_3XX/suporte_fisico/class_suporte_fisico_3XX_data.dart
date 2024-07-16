// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/suporte_fisico/indicadores/class_indicadores_suporte_fisico_340_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/suporte_fisico/subcampos/class_subcampos_suporte_fisico_340_data.dart';

class ClassSuporteFisico_3XX_Data {
  String etiqueta_340;
  ClassIndicadoresSuporteFisico_340_Data indicadores_340;
  ClassSubcamposSuporteFisico_340_Data subcampos_340;

  ClassSuporteFisico_3XX_Data(
    this.etiqueta_340,
    this.indicadores_340,
    this.subcampos_340,
  );
}
