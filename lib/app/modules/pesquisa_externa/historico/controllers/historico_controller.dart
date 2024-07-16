import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/models/class_historico_data.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/repository/historico_repository.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class HistoricoController extends ChangeNotifier {
  final HistoricoRepository historicoRepository;

  HistoricoController(this.historicoRepository);

  var lstHistorico = <ClassHistoricoData>{};

  bool isLoading = false;

  void limparListaHistorico() {
    lstHistorico.clear();
    notifyListeners();
  }

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  Future<List<ClassHistoricoData>> getHistorico() async {
    carregando();
    var historico = await historicoRepository.getHistorico(cpf: session.clEmpresaLogada.cpfAluno);
    lstHistorico.addAll(historico);
    notifyListeners();
    carregado();
    return historico;
  }
}
