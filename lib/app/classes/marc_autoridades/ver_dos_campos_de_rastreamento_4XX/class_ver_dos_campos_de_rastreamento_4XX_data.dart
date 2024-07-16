// ignore_for_file: file_names, camel_case_types
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/nome_de_entidade_coletiva/class_entidade_coletiva_4XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/nome_de_evento/class_nome_de_evento_4XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/nome_pessoal/class_nome_pessoal_4XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/termo_topico/class_termo_topico_4XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/titulo_uniforme/class_titulo_uniforme_4XX_data.dart';

class ClassVerDosCamposDeRastreamento_4XX_Data {
  ClassNomePessoalAutoridade_4XX_Data nomePessoal_400;
  ClassNomeDeEntidadeColetivaAutoridade_4XX_Data nomeDeEntidadeColetiva_410;
  ClassNomeDeEventoAutoridade_4XX_Data nomeDoEvento_411;
  ClassTituloUniformeAutoridade_4XX_Data tituloUniforme_430;
  ClassTermoTopicoAutoridade_4XX_Data termoTopico_450;

  ClassVerDosCamposDeRastreamento_4XX_Data(
    this.nomePessoal_400,
    this.nomeDeEntidadeColetiva_410,
    this.nomeDoEvento_411,
    this.tituloUniforme_430,
    this.termoTopico_450,
  );
}
