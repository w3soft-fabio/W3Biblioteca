// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/fonte_da_obra/indicadores/class_indicadores_fonte_da_obra_380_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/fonte_da_obra/subcampos/class_subcampos_fonte_da_obra_380_data.dart';

class ClassFonteDaObra_3XX_Data {
  String etiqueta_380;
  ClassIndicadoresFonteDaObra_380_Data indicadores_380;
  ClassSubcamposFonteDaObra_380_Data subcampos_380;

  ClassFonteDaObra_3XX_Data(
    this.etiqueta_380,
    this.indicadores_380,
    this.subcampos_380,
  );
}
