// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_do_participante/indicadores/class_indicadores_nota_do_participante_511_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_do_participante/subcampos/class_subcampos_nota_do_participante_511_data.dart';

class ClassNotaDoParticipante_5XX_Data {
  String etiqueta_511;
  ClassIndicadoresNotaDoParticipante_511_Data indicadores_511;
  ClassSubcamposNotaDoParticipante_511_Data subcampos_511;

  ClassNotaDoParticipante_5XX_Data(
    this.etiqueta_511,
    this.indicadores_511,
    this.subcampos_511,
  );
}
