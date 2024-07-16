// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/tipo_de_conteudo/indicadores/class_indicadores_tipo_de_conteudo_336_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/descricao_fisica_etc_3XX/tipo_de_conteudo/subcampos/class_subcampos_tipo_de_conteudo_336_data.dart';

class ClassTipoDeConteudo_3XX_Data {
  String etiqueta_336;
  ClassIndicadoresTipoDeConteudo_336_Data indicadores_336;
  ClassSubcamposTipoDeConteudo_336_Data subcampos_336;

  ClassTipoDeConteudo_3XX_Data(
    this.etiqueta_336,
    this.indicadores_336,
    this.subcampos_336,
  );
}
