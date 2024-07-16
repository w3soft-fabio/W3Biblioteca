// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/tipo_de_midia/indicadores/class_indicadores_tipo_de_midia_337_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/tipo_de_midia/subcampos/class_subcampos_tipo_de_midia_337_data.dart';

class ClassTipoDeMidia_3XX_Data {
  String etiqueta_337;
  ClassIndicadoresTipoDeMidia_337_Data indicadores_337;
  ClassSubcamposTipoDeMidia_337_Data subcampos_337;

  ClassTipoDeMidia_3XX_Data(
    this.etiqueta_337,
    this.indicadores_337,
    this.subcampos_337,
  );
}
