// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_da_fonte_imediata_de_aquisicao/indicadores/class_indicadores_nota_da_fonte_imediata_de_aquisicao_541_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_da_fonte_imediata_de_aquisicao/subcampos/class_subcampos_nota_da_fonte_imediata_de_aquisicao_541_data.dart';

class ClassNotaDaFonteImediataDeAquisicao_5XX_Data {
  String etiqueta_541;
  ClassIndicadoresNotaDaFonteImediataDeAquisicao_541_Data indicadores_541;
  ClassSubcamposNotaDaFonteImediataDeAquisicao_541_Data subcampos_541;

  ClassNotaDaFonteImediataDeAquisicao_5XX_Data(
    this.etiqueta_541,
    this.indicadores_541,
    this.subcampos_541,
  );
}
