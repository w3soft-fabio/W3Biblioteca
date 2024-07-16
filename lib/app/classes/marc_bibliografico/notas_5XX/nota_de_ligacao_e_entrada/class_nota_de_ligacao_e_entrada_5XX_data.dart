// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_ligacao_e_entrada/indicadores/class_indicadores_nota_de_ligacao_e_entrada_580_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_ligacao_e_entrada/subcampos/class_subcampos_nota_de_ligacao_e_entrada_580_data.dart';

class ClassNotaDeLigacaoEEntrada_5XX_Data {
  String etiqueta_580;
  ClassIndicadoresNotaDeLigacaoEEntrada_580_Data indicadores_580;
  ClassSubcamposNotaDeLigacaoEEntrada_580_Data subcampos_580;

  ClassNotaDeLigacaoEEntrada_5XX_Data(
    this.etiqueta_580,
    this.indicadores_580,
    this.subcampos_580,
  );
}
