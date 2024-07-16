// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_localizacao_dos_originais/indicadores/class_indicadores_nota_de_localizacao_dos_originais_535_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/nota_de_localizacao_dos_originais/subcampos/class_subcampos_nota_de_localizacao_dos_originais_535_data.dart';

class ClassNotaDeLocalizacaoDosOriginais_5XX_Data {
  String etiqueta_535;
  ClassIndicadoresNotaDeLocalizacaoDosOriginais_535_Data indicadores_535;
  ClassSubcamposNotaDeLocalizacaoDosOriginais_535_Data subcampos_535;

  ClassNotaDeLocalizacaoDosOriginais_5XX_Data(
    this.etiqueta_535,
    this.indicadores_535,
    this.subcampos_535,
  );
}
