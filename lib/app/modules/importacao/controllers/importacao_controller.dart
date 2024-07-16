// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/modules/importacao/repository/importacao_repository.dart';

class ImportacaoController extends ChangeNotifier {
  final ImportacaoRepository importacaoRepository;

  ImportacaoController(this.importacaoRepository);

  //FORMKEY
  final formKey = GlobalKey<FormState>();

  // LOADING
  bool isLoading = false;

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  // CONTROLADORES DE TEXTO IMPORTAÇÃO
  final textImportacaoController = TextEditingController();

  Future<ClassGenericResponse> setImportacao({
    required String textoImportacao,
  }) async {
    try {
      carregando();
      var importacao = await importacaoRepository.setImportacao(
        textoImportacao: textoImportacao,
      );
      carregado();
      notifyListeners();
      textImportacaoController.clear();
      return importacao;
    } catch (e, s) {
      carregado();
      log('Erro ao realizar importação', error: e, stackTrace: s);
      return ClassGenericResponse();
    }
  }
}
