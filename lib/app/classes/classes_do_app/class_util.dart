// **************************************************************************************************************************************************************
// Classe com funções e procedimentos utilitários para uso dentro da aplicação
// **************************************************************************************************************************************************************

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ClassUtil {
  //Obtem URL da logomarca da instituição
  //! Para que esse método funcione, é necessário que as variáveis de sessão tenham sido pré-preenchidas

  String getSubCampoDeControle(String subCampoCodigo, String subCampoDados) {
    if (subCampoDados.isNotEmpty) {
      return '$subCampoCodigo $subCampoDados';
    }
    return '';
  }
  
  String getSubCampoDados(String subCampoCodigo, String subCampoDados) {
    if (subCampoDados.isNotEmpty) {
      return '\$$subCampoCodigo $subCampoDados';
    }
    return '';
  }

  String getEtiqueta(String etiqueta) {
    if (etiqueta.isNotEmpty) {
      return etiqueta;
    }
    return '';
  }

  String getIndicadores(String primeiroIndicador, String segundoIndicador) {
    if (primeiroIndicador.isNotEmpty || segundoIndicador.isNotEmpty) {
      return '$primeiroIndicador$segundoIndicador';
    }
    return '';
  }

  String getCampoUnicoDados(String campo, int tamanho) {
    if (campo.isEmpty) {
      return campo = campo.padLeft(tamanho, ' ');
    }
    campo = campo.padRight(tamanho, ' ');

    return campo;
  }
}

//CLASSE PARA FORMATAR TEXTFIELD EM MOEDA
class CurrencyPtBrInputFormatter extends TextInputFormatter {

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if(newValue.selection.baseOffset == 0){
      return newValue;
    }

    double value = double.parse(newValue.text);
    final formatter = NumberFormat("#,##0.00", "pt_BR");
    String newText = "R\$ ${formatter.format(value/100)}".replaceAll(',', '.');

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length));
  }
}