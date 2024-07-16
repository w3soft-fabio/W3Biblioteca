// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_restricao_de_acesso/indicadores/class_indicadores_nota_de_restricao_de_acesso_506_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_restricao_de_acesso/subcampos/class_subcampos_nota_de_restricao_de_acesso_506_data.dart';

class ClassNotaDeRestricaoDeAcesso_5XX_Data {
  String etiqueta_506;
  ClassIndicadoresNotaDeRestricaoDeAcesso_506_Data indicadores_506;
  ClassSubcamposNotaDeRestricaoDeAcesso_506_Data subcampos_506;

  ClassNotaDeRestricaoDeAcesso_5XX_Data(
    this.etiqueta_506,
    this.indicadores_506,
    this.subcampos_506,
  );
}
