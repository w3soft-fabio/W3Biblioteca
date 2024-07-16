// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_controle_00X/class_campos_de_controle_autoridades_00X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_controle_00X/class_campos_fixos_autoridades_00X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_informacoes_de_titulo_1XX_3XX/class_campos_de_informacoes_de_titulo_1XX_3XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_ligacao_de_cabecalho_7XX/class_campos_de_ligacao_de_cabecalho_7XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_notas_667_68X/class_campos_de_notas_667_68X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_de_numeros_e_codigos_01X_09X/class_campos_de_numeros_e_codigos_01X_09X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/campos_tratamento_de_serie_64X/class_campos_tratamento_de_serie_64X_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/lider/class_lider_autoridades_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/outros_campos_variaveis_8XX/class_localizacao_e_acesso_eletronico_8XX.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_dos_campos_de_rastreamento_4XX/class_ver_dos_campos_de_rastreamento_4XX_data.dart';
import 'package:w3biblioteca/app/classes/marc_autoridades/ver_tambem_de_campos_de_rastreamento_5XX/class_ver_tambem_de_campos_de_rastreamento_5XX_data.dart';

class ClassMarc21AutoridadesData {
  ClassLiderAutoridadesData liderAutoridades;
  ClassCamposDeControleAutoridades_00X_Data camposDeControleAutoridades_00X_Data;
  ClassCamposFixosAutoridades_00X_Data camposFixosAutoridades_00X_Data;
  ClassCamposDeNumerosECodigos_01X_09X_Data camposDeNumerosECodigos_01X_09X_Data;
  ClassCamposDeInformacoesDeTitulo_1XX_3XX_Data camposDeInformacoesDeTitulo_1XX_3XX_Data;
  ClassVerDosCamposDeRastreamento_4XX_Data verDosCamposDeRastreamento_4XX_Data;
  ClassVerTambemDeCamposDeRastreamento_5XX_Data verTambemDeCamposDeRastreamento_5XX_Data;
  ClassCamposTratamentoDeSerie_64X_Data camposTratamentoDeSerie_64X_Data;
  ClassCamposDeNotas_667_68X_Data camposDeNotas_667_68X_Data;
  ClassCamposDeLigacaoDeCabecalho_7XX_Data camposDeLigacaoDeCabecalho_7XX_Data;
  ClassLocalizacaoEAcessoEletronicoAutoridade_8XX_Data localizacaoEAcessoEletronico_8XX_Data;

  ClassMarc21AutoridadesData(
    this.liderAutoridades,
    this.camposDeControleAutoridades_00X_Data,
    this.camposFixosAutoridades_00X_Data,
    this.camposDeNumerosECodigos_01X_09X_Data,
    this.camposDeInformacoesDeTitulo_1XX_3XX_Data,
    this.verDosCamposDeRastreamento_4XX_Data,
    this.verTambemDeCamposDeRastreamento_5XX_Data,
    this.camposTratamentoDeSerie_64X_Data,
    this.camposDeNotas_667_68X_Data,
    this.camposDeLigacaoDeCabecalho_7XX_Data,
    this.localizacaoEAcessoEletronico_8XX_Data
  );
}
