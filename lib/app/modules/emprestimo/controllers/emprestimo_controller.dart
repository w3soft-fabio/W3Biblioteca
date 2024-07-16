import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../classes/classes_do_app/class_generic_response.dart';
import '../models/class_pessoa_dados.dart';
import '../models/class_reserva_emprestimo_data.dart';
import '../repository/emprestimo_repository.dart';

class EmprestimoController extends ChangeNotifier {
  final EmprestimoRepository emprestimoRepository;

  EmprestimoController(this.emprestimoRepository);

  var emprestimoSituacaoController = TextEditingController();
  var emprestimoCPFController = TextEditingController();
  var emprestoUltimoCPFController = TextEditingController();
  var nomeController = TextEditingController();
  var emailController = TextEditingController();
  var telefoneController = TextEditingController();
  var celularController = TextEditingController();
  var dataEmprestimoController = TextEditingController();
  var dataEntregaPrevistaController = TextEditingController();
  var observacoesEmprestimoController = TextEditingController();

  final maskCpf = MaskTextInputFormatter(mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});
  final maskData = MaskTextInputFormatter(mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});
  final maskCelular = MaskTextInputFormatter(mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});
  final maskTelefone = MaskTextInputFormatter(mask: "####-####", filter: {"#": RegExp(r'[0-9]')});

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

  var lstEmprestimo = <ClassPessoaDados>{};
  var lstReservaEmprestimo = <ClassReservaEmprestimoData>{};


  Future<ClassPessoaDados> getEmprestimoLivro() async {
    carregando();
    var emprestimoLivro = await emprestimoRepository.getEmprestimoLivro(
      cpf: emprestimoCPFController.text.trim(),
    );
    carregado();
    notifyListeners();
    return emprestimoLivro;
  }
  
  Future<ClassReservaEmprestimoData> getReservaEmprestimoLivro({required String livroDataID}) async {
    carregando();
    var reserva = await emprestimoRepository.getReservaEmprestimoLivro(
      livroDataID: livroDataID,
      cpf: emprestimoCPFController.text.trim(),
    );
    lstReservaEmprestimo.add(reserva);
    carregado();
    notifyListeners();
    return reserva;
  }

  Future<ClassGenericResponse> setEmprestimoLivro(
      {required String livroDataID, required String exemplarNumero}) async {
    if (formKey.currentState!.validate()) {
      carregando();
      var emprestimo = await emprestimoRepository.setEmprestimoLivro(
        livroDataID: livroDataID,
        emprestimoSituacao: emprestimoCPFController.text.trim(),
        emprestimoCPF: emprestimoCPFController.text.trim(),
        emprestoUltimoCPF: emprestoUltimoCPFController.text.trim(),
        nome: nomeController.text.trim(),
        email: emailController.text.trim(),
        telefone: telefoneController.text.trim(),
        celular: celularController.text.trim(),
        dataEmprestimo: dataEmprestimoController.text.trim(),
        dataEntregaPrevista: dataEntregaPrevistaController.text.trim(),
        observacoesEmprestimo: observacoesEmprestimoController.text.trim(),
        exemplarNumero: exemplarNumero,
      );
      carregado();
      notifyListeners();
      return emprestimo;
    } else {
      return ClassGenericResponse();
    }
  }

  Future<ClassGenericResponse> devolverLivro(
      {required String livroDataID}) async {
    if (formKey.currentState!.validate()) {
      carregando();
      var livro = await emprestimoRepository.devolverLivro(
        livroDataID: livroDataID,
      );
      carregado();
      notifyListeners();
      return livro;
    } else {
      return ClassGenericResponse();
    }
  }

  void limparControllers() {
    emprestimoSituacaoController.clear();
    emprestimoCPFController.clear();
    emprestoUltimoCPFController.clear();
    nomeController.clear();
    emailController.clear();
    telefoneController.clear();
    celularController.clear();
    dataEmprestimoController.clear();
    dataEntregaPrevistaController.clear();
    observacoesEmprestimoController.clear();
  }
}
