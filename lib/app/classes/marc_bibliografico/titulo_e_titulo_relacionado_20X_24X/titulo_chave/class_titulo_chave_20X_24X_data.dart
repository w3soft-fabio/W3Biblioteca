// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20x_24X/titulo_chave/indicadores/class_indicadores_titulo_chave_222_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/titulo_e_titulo_relacionado_20x_24X/titulo_chave/subcampos/class_subcampos_titulo_chave_222_data.dart';

class ClassTituloChave_20X_24X_Data {
  String etiqueta_222;
  ClassIndicadoresTituloChave_222_Data indicadores_222;
  ClassSubcamposTituloChave_222_Data subcampos_222;

  ClassTituloChave_20X_24X_Data(
    this.etiqueta_222,
    this.indicadores_222,
    this.subcampos_222,
  );
}
