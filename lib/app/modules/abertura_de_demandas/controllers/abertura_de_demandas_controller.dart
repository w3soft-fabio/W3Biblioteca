import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_empresa_logada_data.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;
import 'package:w3biblioteca/app/modules/abertura_de_demandas/models/class_abertura_de_demandas_data.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/repository/abertura_de_demanda_repository.dart';

class AberturaDeDemandasController extends ChangeNotifier {
  final AberturaDeDemandaRepository aberturaDeDemandaRepository;

  AberturaDeDemandasController(this.aberturaDeDemandaRepository);

  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final solicitacaoController = TextEditingController();
  final tipoSolicitacaoController = TextEditingController();
  final tipoInstituicaoController = TextEditingController();
  final telefoneController = TextEditingController();

  // FORMKEY PARA FORMULÁRIO
  final formKey = GlobalKey<FormState>();

  // LOADING
  bool isLoading = false;

  bool isAlteracaoCorrecao = false;
  bool isInclusaoRecurso = false;

  void marcarAlteracaoCorrecao() {
    isAlteracaoCorrecao = !isAlteracaoCorrecao;
    notifyListeners();
  }

  void marcarInclusaoRecurso() {
    isInclusaoRecurso = !isInclusaoRecurso;
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

  void limparControllers() {
    nomeController.clear();
    emailController.clear();
    solicitacaoController.clear();
    tipoSolicitacaoController.clear();
    telefoneController.clear();
    isAlteracaoCorrecao = false;
    isInclusaoRecurso = false;
    notifyListeners();
  }

  void verificarTipoSolicitacao(
      bool isAlteracaoCorrecao, bool isInclusaoRecurso) {
    if (isAlteracaoCorrecao) {
      tipoSolicitacaoController.text = 'correcao';
    } else if (isInclusaoRecurso) {
      tipoSolicitacaoController.text = 'recurso';
    } else {
      tipoSolicitacaoController.text = '';
    }
  }

  void verificarTipoInstituicao(ClassEmpresaLogadaData clEmpresaLogada,
      TextEditingController tipoInstituicaoController) {
    if (clEmpresaLogada.clienteID == '2') {
      tipoInstituicaoController.text = 'Faculdade FDG';
    } else {
      tipoInstituicaoController.text = 'Biblioteca Modelo';
    }
  }

  var lstDemandas = <ClassAberturaDeDemandasData>{};

  Future<ClassGenericResponse> setDemanda() async {
    verificarTipoSolicitacao(isAlteracaoCorrecao, isInclusaoRecurso);

    verificarTipoInstituicao(
        session.clEmpresaLogada, tipoInstituicaoController);

    if (formKey.currentState!.validate()) {
      carregando();
      var demanda = await aberturaDeDemandaRepository.setDemanda(
        nome: nomeController.text.trim(),
        email: emailController.text.trim(),
        solicitacao: solicitacaoController.text.trim(),
        instituicao: tipoInstituicaoController.text.trim(),
        tipoSolicitacao: tipoSolicitacaoController.text.trim(),
        telefoneInstituicao: telefoneController.text.trim(),
      );
      carregado();
      notifyListeners();
      return demanda;
    } else {
      return ClassGenericResponse();
    }
  }

  Future<List<ClassAberturaDeDemandasData>> getDemandas() async {
    lstDemandas.clear();
    carregando();
    var demandas = await aberturaDeDemandaRepository.getDemandas();
    if (demandas.isNotEmpty) {
      lstDemandas.addAll(demandas);
    }
    notifyListeners();
    carregado();
    return demandas;
  }

  Future<ClassGenericResponse> updateDemanda({
    required int id,
  }) async {
    carregando();
    var demanda = await aberturaDeDemandaRepository.updateDemanda(id: id);
    notifyListeners();
    carregado();
    return demanda;
  }
}
