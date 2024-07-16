// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, camel_case_types
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/lugar_associado/class_lugar_associado_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/nome_de_entidade_coletiva/class_nome_de_entidade_coletiva_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/nome_do_evento/class_nome_do_evento_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/nome_geografico/class_nome_geografico_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/nome_pessoal/class_nome_pessoal_autoridade_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/subdivisao_cronologica/class_subdivisao_cronologica_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/subdivisao_geral/class_subdivisao_geral_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/termo_topico/class_termo_topico_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/titulo_uniforme/class_titulo_uniforme_1XX_3XX_data.dart';

class ClassCamposDeInformacoesDeTitulo_1XX_3XX_Data {
  ClassNomePessoalAutoridade_1XX_3XX_Data nomePessoal_100;
  ClassNomeDeEntidadeColetivaAutoridade_1XX_3XX_Data nomeDeEntidadeColetiva_110;
  ClassNomeDoEventoAutoridade_1XX_3XX_Data nomeDoEvento_111;
  ClassTituloUniformeAutoridade_1XX_3XX_Data tituloUniforme_130;
  ClassTermoTopicoAutoridade_1XX_3XX_Data termoTopico_150;
  ClassNomeGeograficoAutoridade_1XX_3XX_Data nomeGeografico_151;
  ClassSubdivisaoGeralAutoridade_1XX_3XX_Data subdivisaoGeral_180;
  ClassSubdivisaoCronologicaAutoridade_1XX_3XX_Data subdivisaoCronologica_182;
  ClassLugarAssociadoAutoridade_1XX_3XX_Data lugarAssociado_370;

  ClassCamposDeInformacoesDeTitulo_1XX_3XX_Data(
    this.nomePessoal_100,
    this.nomeDeEntidadeColetiva_110,
    this.nomeDoEvento_111,
    this.tituloUniforme_130,
    this.termoTopico_150,
    this.nomeGeografico_151,
    this.subdivisaoGeral_180,
    this.subdivisaoCronologica_182,
    this.lugarAssociado_370,
  );
}
