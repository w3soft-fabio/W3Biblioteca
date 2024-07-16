// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/entidade/class_entidade_80X_840_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/eventos/class_eventos_80X_840_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/nome_pessoal/class_nome_pessoal_80X_840_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/entrada_secundaria_serie_80X_840/titulo_uniforme/class_titulo_uniforme_80X_840_data.dart';

class ClassEntradaSecundariaSerie_80X_840_Data {
  ClassNomePessoal_80X_840_Data nomePessoal_800;
  ClassEntidade_80X_840_Data entidade_810;
  ClassEventos_80X_840_Data eventos_811;
  ClassTituloUniforme_80X_840_Data tituloUniforme_830;

  ClassEntradaSecundariaSerie_80X_840_Data(
    this.nomePessoal_800,
    this.entidade_810,
    this.eventos_811,
    this.tituloUniforme_830,
  );
}
