// ignore_for_file: file_names, camel_case_types

import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_controle_do_sistema/indicadores/class_indicadores_numero_de_controle_do_sistema_035_data.dart';
import 'package:w3biblioteca/app/classes/marc_bibliografico/campos_de_numeros_e_codigos_02X_09X/numero_de_controle_do_sistema/subcampos/class_subcampos_numero_de_controle_do_sistema_035_data.dart';

class ClassNumeroDeControleDoSistema_02X_09X_Data {
  String etiqueta_035;
  ClassIndicadoresNumeroDeControleDoSistema_035_Data indicadores_035;
  ClassSubcamposNumeroDeControleDoSistema_035_Data subcampos_035;

  ClassNumeroDeControleDoSistema_02X_09X_Data(
    this.etiqueta_035,
    this.indicadores_035,
    this.subcampos_035,
  );
}
