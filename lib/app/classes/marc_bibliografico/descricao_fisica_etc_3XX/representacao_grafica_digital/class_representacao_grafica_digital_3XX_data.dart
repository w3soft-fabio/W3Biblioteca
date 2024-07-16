// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/representacao_grafica_digital/indicadores/class_indicadores_representacao_grafica_digital_352_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/representacao_grafica_digital/subcampos/class_subcampos_representacao_grafica_digital_352_data.dart';

class ClassRepresentacaoGraficaDigital_3XX_Data {
  String etiqueta_352;
  ClassIndicadoresRepresentacaoGraficaDigital_352_Data indicadores_352;
  ClassSubcamposRepresentacaoGraficaDigital_352_Data subcampos_352;

  ClassRepresentacaoGraficaDigital_3XX_Data(
    this.etiqueta_352,
    this.indicadores_352,
    this.subcampos_352,
  );
}
