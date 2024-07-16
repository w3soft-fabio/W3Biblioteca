// ignore_for_file: file_names, camel_case_types
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/dados_de_fontes_encontrados/class_dados_de_fontes_encontrados_667_68X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/dados_de_fontes_nao_encontrados/class_dados_de_fontes_nao_encontrados_667_68X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/nota_geral_nao_publica/class_nota_geral_nao_publica_667_68X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/notas_gerais_publicas/class_notas_gerais_publicas_667_68X_data.dart';

class ClassCamposDeNotas_667_68X_Data {
  ClassNotaGeralNaoPublicaAutoridade_667_68X_Data notaGeralNaoPublica_667;
  ClassDadosDeFontesEncontradosAutoridade_667_68X_Data dadosDeFontesEncontrados_670;
  ClassDadosDeFontesNaoEncontradosAutoridade_667_68X_Data dadosDeFontesNaoEncotradas_675;
  ClassNotasGeraisPublicasAutoridade_667_68X_Data notasGeraisPublicas_680;

  ClassCamposDeNotas_667_68X_Data(
    this.notaGeralNaoPublica_667,
    this.dadosDeFontesEncontrados_670,
    this.dadosDeFontesNaoEncotradas_675,
    this.notasGeraisPublicas_680,
  );
}
