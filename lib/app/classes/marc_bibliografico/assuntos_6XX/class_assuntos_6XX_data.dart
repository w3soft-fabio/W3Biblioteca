// ignore_for_file: file_names, camel_case_types
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/entidade/class_entidade_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/eventos/class_eventos_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/nome_do_acontecimento/class_nome_do_acontecimento_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/nome_geografico/class_nome_geografico_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/nome_pessoal/class_nome_pessoal_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/termo_cronologico/class_termo_cronologico_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/termo_nao_pesquisado/class_termo_nao_pesquisado_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/titulo_uniforme/class_titulo_uniforme_6XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/assuntos_6XX/topico/class_topico_6XX_data.dart';

class ClassAssuntos_6XX_Data {
  ClassNomePessoal_6XX_Data nomePessoal_600;
  ClassEntidade_6XX_Data entidade_610;
  ClassEventos_6XX_Data eventos_611;
  ClassTituloUniforme_6XX_Data tituloUniforme_630;
  ClassNomeDoAcontecimento_6XX_Data nomeDoAcontecimento_647;
  ClassTermoCronologico_6XX_Data termoCronologico_648;
  ClassTopico_6XX_Data topico_650;
  ClassNomeGeografico_6XX_Data nomeGeografico_651;
  ClassTermoNaoPesquisado_6XX_Data  termoNaoPesquisado_697;

  ClassAssuntos_6XX_Data(
    this.nomePessoal_600,
    this.entidade_610,
    this.eventos_611,
    this.tituloUniforme_630,
    this.nomeDoAcontecimento_647,
    this.termoCronologico_648,
    this.topico_650,
    this.nomeGeografico_651,
    this.termoNaoPesquisado_697,
  );
}
