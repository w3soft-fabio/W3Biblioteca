import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/modules/email/repository/configurar_email_repository.dart';
import '../../../classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../models/class_email_contas.dart';

class ConfigurarEmailController extends ChangeNotifier {
  final ConfigurarEmailRepository configurarEmailRepository;

  ConfigurarEmailController(this.configurarEmailRepository);

  final apelidoController = TextEditingController();
  final enderecoController = TextEditingController();
  final credenciaisUsuariosController = TextEditingController();
  final credenciaisSenhaController = TextEditingController();
  final smtpHostController = TextEditingController();
  final smtpPortController = TextEditingController();

  bool stgToBool(String valorString) {
    if (valorString.toLowerCase() == 'true') {
      return true;
    } else if (valorString.toLowerCase() == 'false') {
      return false;
    }
    throw '"$this" can not be parsed to boolean.';
  }

  void limparControllers() {
    apelidoController.clear();
    enderecoController.clear();
    credenciaisUsuariosController.clear();
    credenciaisSenhaController.clear();
    smtpHostController.clear();
    smtpPortController.clear();
  }

  bool isSMTP = false;

  void marcarCheckSMTP() {
    isSMTP = !isSMTP;
    notifyListeners();
  }

  bool isLoading = false;
  final formKey = GlobalKey<FormState>();

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  var lstEmailContas = <ClassEmailContas>{};

  void limparListaEmailContas() {
    lstEmailContas.clear();
    notifyListeners();
  }

  Future<List<ClassEmailContas>> getEmailContas() async { 
    carregando();
    var emailContas = await configurarEmailRepository.getContasEmail();
    lstEmailContas.addAll(emailContas);
    if (lstEmailContas.isNotEmpty) {
      session.clEmpresaLogada.contaID = lstEmailContas.first.contaID.toString();
    } else {
      session.clEmpresaLogada.contaID = "0";
    }
    carregado();
    notifyListeners();
    return emailContas;
  }

  Future<ClassGenericResponse> setContasEmail(
      {required String contaID}) async {
    carregando();
    var emprestimo = await configurarEmailRepository.setContasEmail(
      contaID: contaID,
      apelido: apelidoController.text.trim(),
      endereco: enderecoController.text.trim(),
      credenciaisUsuarios: credenciaisUsuariosController.text.trim(),
      credenciaisSenha: credenciaisSenhaController.text.trim(),
      smtpHost: smtpHostController.text.trim(),
      smtpPort: smtpPortController.text.trim(),
      smtpSSL: isSMTP.toString(),
    );
    carregado();
    notifyListeners();
    return emprestimo;
  }

  Future sendEmail({
    required String contaID,
    required String assunto,
    required String mensagem,
    required List<String> lstDestinatarios,
  }) async {
    carregando();
    var email = await configurarEmailRepository.sendEmail(
      contaID: contaID,
      assunto: assunto,
      mensagem: mensagem,
      lstDestinatarios: lstDestinatarios,
    );
    carregado();
    notifyListeners();
    return email;
  }
}
