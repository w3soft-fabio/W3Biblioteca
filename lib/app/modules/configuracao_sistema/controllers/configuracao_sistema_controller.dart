import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/models/class_configuracao_sistema_data.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/repository/configuracao_sistema_repository.dart';

class ConfiguracaoSistemaController extends ChangeNotifier {
  final ConfiguracaoSistemaRepository configuracaoSistemaRepository;

  ConfiguracaoSistemaController(this.configuracaoSistemaRepository);

  final multaController = TextEditingController();

  bool isLoading = false;
  final formkey = GlobalKey<FormState>();

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }
  
  void limparListaConfiguracao() {
    lstConfiguracao.clear();
    notifyListeners();
  }

  var lstConfiguracao = <ClassConfiguracaoSistemaData>{};

  Future<List<ClassConfiguracaoSistemaData>> getConfiguracaoDoSistema() async {
    carregando();
    var configuracoes = await configuracaoSistemaRepository.getConfiguracaoSistema();
    lstConfiguracao.addAll(configuracoes);
    carregado();
    notifyListeners();
    return configuracoes;
  }
  
  Future<ClassGenericResponse> updateConfiguracaoDoSistema() async {
    if (formkey.currentState!.validate()) {
      carregando();
      var configuracoes = await configuracaoSistemaRepository.updateConfiguracaoDoSistema(
        configuracao: ClassConfiguracaoSistemaData(
          multaValorDiario: double.parse(multaController.text.trim()),
        ),
      );
      carregado();
      notifyListeners();
      return configuracoes;
    } else {
      return ClassGenericResponse();
    }
  }
}
