import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/class_data_model_relatorio_response.dart';
import '../repository/relatorio_repository.dart';

class RelatorioController extends ChangeNotifier {
  final RelatorioRepository relatorioRepository;

  RelatorioController(this.relatorioRepository);

  final maskData = MaskTextInputFormatter(
      mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});

  bool isLoading = false;

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  bool valuePanel_1 = false;
  bool valuePanel_2 = false;
  bool valuePanel_3 = false;
  bool valuePanel_4 = false;

  void expandirPanel_1() {
    valuePanel_1 = !valuePanel_1;
    notifyListeners();
  }

  void expandirPanel_2() {
    valuePanel_2 = !valuePanel_2;
    notifyListeners();
  }

  void expandirPanel_3() {
    valuePanel_3 = !valuePanel_3;
    notifyListeners();
  }
  
  void expandirPanel_4() {
    valuePanel_4 = !valuePanel_4;
    notifyListeners();
  }

  final relatorioID = TextEditingController();
  final dataInicial = TextEditingController();
  final dataFinal = TextEditingController();

  void limparControllers() {
    relatorioID.clear();
    dataInicial.clear();
    dataFinal.clear();
    notifyListeners();
  }

  bool eEmprestimoInicial = false;
  bool eEmprestimoFinal = false;

  void desabilitarFiltroDeEmprestimo() {
    eEmprestimoInicial = false;
    eEmprestimoFinal = false;
    notifyListeners();
  }

  void visualizarFiltroDeEmprestimo() {
    eEmprestimoInicial = !eEmprestimoInicial;
    eEmprestimoFinal = !eEmprestimoFinal;
    notifyListeners();
  }

  bool relatorioEmprestimo_1 = false;
  bool relatorioEmprestimo_2 = false;
  bool relatorioEmprestimo_3 = false;
  bool relatorioEmprestimo_4 = false;

  void marcarRelatorioEmprestimo_1() {
    relatorioEmprestimo_1 = !relatorioEmprestimo_1;
    notifyListeners();
  }

  void marcarRelatorioEmprestimo_2() {
    relatorioEmprestimo_2 = !relatorioEmprestimo_2;
    notifyListeners();
  }

  void marcarRelatorioEmprestimo_3() {
    relatorioEmprestimo_3 = !relatorioEmprestimo_3;
    notifyListeners();
  }

  void marcarRelatorioEmprestimo_4() {
    relatorioEmprestimo_4 = !relatorioEmprestimo_4;
    notifyListeners();
  }

  bool relatorioReserva_1 = false;
  bool relatorioReserva_2 = false;

  void marcarRelatorioReserva_1() {
    relatorioReserva_1 = !relatorioReserva_1;
    notifyListeners();
  }

  void marcarRelatorioReserva_2() {
    relatorioReserva_2 = !relatorioReserva_2;
    notifyListeners();
  }

  bool relatorioMultas_1 = false;
  bool relatorioMultas_2 = false;

  void marcarRelatorioMultas_1() {
    relatorioMultas_1 = !relatorioMultas_1;
    notifyListeners();
  }

  void marcarRelatorioMultas_2() {
    relatorioMultas_2 = !relatorioMultas_2;
    notifyListeners();
  }

  bool relatorioLivrosCadastrados_1 = false;

  void marcarRelatorioLivrosCadastrados_1() {
    relatorioLivrosCadastrados_1 = !relatorioLivrosCadastrados_1;
    notifyListeners();
  }

  void limparRelatorioSelecionado() {
    relatorioEmprestimo_1 = false;
    relatorioEmprestimo_2 = false;
    relatorioEmprestimo_3 = false;
    relatorioEmprestimo_4 = false;
    relatorioReserva_1 = false;
    relatorioReserva_2 = false;
    relatorioMultas_1 = false;
    relatorioMultas_2 = false;
    relatorioLivrosCadastrados_1 = false;
    notifyListeners();
  }

  Future<void> abrirUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
      webOnlyWindowName: '_blank',
    )) {
      throw Exception('Não foi possível abrir a url: $url');
    }
  }

  Future<ClassDataModelRelatorioResponse> getRelatorio() async {
    carregando();
    var relatorio = await relatorioRepository.getRelatorio(
      relatorioID: relatorioID.text.trim(),
      arg0: dataInicial.text.trim(),
      arg1: dataFinal.text.trim(),
    );
    carregado();
    notifyListeners();
    return relatorio;
  }
}
