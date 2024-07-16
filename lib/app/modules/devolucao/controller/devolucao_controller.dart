import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/modules/devolucao/repository/devolucao_repository.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../models/class_devolucao_data.dart';

class DevolucaoController extends ChangeNotifier {
  final DevolucaoRepository devolucaoRepository;

  DevolucaoController(this.devolucaoRepository);

  bool foiMultado = false;
  bool multaFoiCancelada = false;
  int idEmprestimoMulta = 0;

  var diasAtrasado = 0;
  final qtdDiasAtrasados = TextEditingController();
  final valorMulta = TextEditingController();
  final totalMultaAPagar = TextEditingController();

  double get totalMulta => diasAtrasado * session.clConfiguracaoSistema.multa;
  
  void marcarMultado() {
    foiMultado = !foiMultado;
    notifyListeners(); //steState
  }
  
  void marcarMultaCancelada() {
    multaFoiCancelada = !multaFoiCancelada;
    notifyListeners();
  }

  bool isLoading = false;
  final formKey = GlobalKey<FormState>();

  final maskCpf = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  final exemplarNumeroController = TextEditingController();
  final cpfController = TextEditingController();

  void limparControllers() {
    exemplarNumeroController.clear();
    cpfController.clear();
    foiMultado = false;
    multaFoiCancelada = false;
    notifyListeners();
  }

  void limparListaEmprestimo() {
    lstEmprestimo.clear();
    notifyListeners();
  }

  var lstEmprestimo = <ClassDevolucaoData>{};

  Future<List<ClassDevolucaoData>> pesquisarLivroEmprestado() async {
    carregando();
    var reserva = await devolucaoRepository.pesquisarLivroEmprestado(
      exemplarNumero: exemplarNumeroController.text.trim(),
      cpf: cpfController.text.trim(),
    );
    if (reserva.isNotEmpty) {
      lstEmprestimo.addAll(reserva);
    }
    carregado();
    notifyListeners();
    return reserva;
  }
  
  Future<ClassGenericResponse> fazerDevolucao(
      {required String emprestimoDataID,
      required String livroDataID,
      required String exemplarNumero,
      required String cpf}) async {
    if (formKey.currentState!.validate()) {
      carregando();
      var devolucao = await devolucaoRepository.fazerDevolucao(
        livroDataID: livroDataID,
        emprestimoDataID: emprestimoDataID,
        exemplarNumero: exemplarNumero,
        cpf: cpf,
      );
      carregado();
      notifyListeners();
      return devolucao;
    } else {
      return ClassGenericResponse();
    }
  }
}
