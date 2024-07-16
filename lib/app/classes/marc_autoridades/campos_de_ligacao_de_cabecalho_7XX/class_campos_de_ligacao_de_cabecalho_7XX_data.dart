// ignore_for_file: camel_case_types, file_names
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_ligacao_de_cabecalho_7XX/subdivisao_geral/class_subdivisao_geral_7XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_ligacao_de_cabecalho_7XX/termo_topico/class_termo_topico_7XX_data.dart';

class ClassCamposDeLigacaoDeCabecalho_7XX_Data {
  ClassTermoTopicoAutoridade_7XX_Data termoTopico_750;
  ClassSubdivisaoGeralAutoridade_7XX_Data subdivisaoGeral_780;

  ClassCamposDeLigacaoDeCabecalho_7XX_Data(
    this.termoTopico_750,
    this.subdivisaoGeral_780,
  );
}
