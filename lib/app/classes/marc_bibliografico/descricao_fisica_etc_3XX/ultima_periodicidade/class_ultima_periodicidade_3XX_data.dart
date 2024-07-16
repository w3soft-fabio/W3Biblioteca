// ignore_for_file: file_names, camel_case_types
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/ultima_periodicidade/indicadores/class_indicadores_ultima_periodicidade_310_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/ultima_periodicidade/subcampos/class_subcampo_ultima_periodicidade_310_data.dart';

class ClassUltimaPeriodicidade_3XX_Data {
  String etiqueta_310;
  ClassIndicadoresUltimaPeriodicidade_310_Data indicadores_310;
  ClassSubcamposUltimaPeriodicidade_310_Data subcampos_310;

  ClassUltimaPeriodicidade_3XX_Data(
    this.etiqueta_310,
    this.indicadores_310,
    this.subcampos_310,
  );
}
