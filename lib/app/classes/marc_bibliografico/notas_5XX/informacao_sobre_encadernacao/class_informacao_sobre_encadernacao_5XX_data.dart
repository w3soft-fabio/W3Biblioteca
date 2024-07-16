// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/informacao_sobre_encadernacao/indicadores/class_indicadores_informacao_sobre_encadernacao_563_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/notas_5XX/informacao_sobre_encadernacao/subcampos/class_subcampos_informacao_sobre_encadernacao_563_data.dart';

class ClassInformacaoSobreEncadernacao_5XX_Data {
  String etiqueta_563;
  ClassIndicadoresInformacaoSobreEncadernacao_563_Data indicadores_563;
  ClassSubcamposInformacaoSobreEncadernacao_563_Data subcampos_563;

  ClassInformacaoSobreEncadernacao_5XX_Data(
    this.etiqueta_563,
    this.indicadores_563,
    this.subcampos_563,
  );
}
