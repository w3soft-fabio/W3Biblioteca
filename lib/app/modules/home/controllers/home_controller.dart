import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/repository/configuracao_sistema_repository.dart';
import 'package:w3biblioteca/app/modules/email/controllers/configurar_email_controller.dart';
import 'package:w3biblioteca/app/modules/email/models/class_email_contas.dart';
import 'package:w3biblioteca/app/shared/tawkto/class_tawkto.dart';
import '../../configuracao_sistema/models/class_configuracao_sistema_data.dart';

class HomeController extends ChangeNotifier {
  final ConfiguracaoSistemaRepository configuracaoSistemaRepository;
  final ConfigurarEmailController configurarEmailController;
  final ClassTawkto classTawkto = ClassTawkto();

  HomeController(this.configuracaoSistemaRepository, this.configurarEmailController);
  bool isLoading = false;
  
  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  Future<List<ClassConfiguracaoSistemaData>> getConfiguracaoDoSistema() async {
    carregando();
    var configuracoes = await configuracaoSistemaRepository.getConfiguracaoSistema();
    carregado();
    notifyListeners();
    return configuracoes;
  }
  
  Future<List<ClassEmailContas>> getConfiguracaoEmail() async {
    carregando();
    var configuracaoEmail = await configurarEmailController.getEmailContas();
    carregando();
    notifyListeners();
    return configuracaoEmail;
  }

  Future<void> loadTawkTo() async {
    try {
      carregando();
      classTawkto.loadTawkTo();
      carregado();
    } catch (e, s) {
      log('Erro ao iniciar tawkto', error: e, stackTrace: s);
      carregado();
    }
  }
}
