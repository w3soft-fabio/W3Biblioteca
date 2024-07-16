// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_dos_creditos_de_criacao/indicadores/class_nota_dos_creditos_de_criacao_508_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_dos_creditos_de_criacao/subcampos/class_subcampos_nota_dos_creditos_de_criacao_508_data.dart';

class ClassNotaDosCreditosDeCriacao_5XX_Data {
  String etiqueta_508;
  ClassIndicadoresNotaDosCreditosDeCriacao_508_Data indicadores_508;
  ClassSubcamposNotaDosCreditosDeCriacao_508_Data subcampos_508;

  ClassNotaDosCreditosDeCriacao_5XX_Data(
    this.etiqueta_508,
    this.indicadores_508,
    this.subcampos_508,
  );
}
