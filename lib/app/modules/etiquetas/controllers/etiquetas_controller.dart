import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:w3biblioteca/app/modules/etiquetas/models/class_etiquetas_data.dart';
import 'package:w3biblioteca/app/modules/etiquetas/repository/etiquetas_repository.dart';
import 'package:w3biblioteca/app/modules/relatorios/models/class_data_model_relatorio_response.dart';
import 'package:w3biblioteca/app/modules/relatorios/repository/relatorio_repository.dart';

class EtiquetasController extends ChangeNotifier {
  final RelatorioRepository relatorioRepository;
  final EtiquetasRepository etiquetasRepository;

  EtiquetasController(this.relatorioRepository, this.etiquetasRepository);

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool isSelected = false;

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
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

  var pesquisaController = TextEditingController();
  var relatorioIDController = TextEditingController();

  var lstEtiquetas = <ClassEtiquetasData>{};
  var lstEtiquetasIDs = <int>{};
  
  void marcarSelecionado(int index) {
    isSelecionarTodos = false;
    lstEtiquetas.elementAt(index).isSelected = !lstEtiquetas.elementAt(index).isSelected;
    if (lstEtiquetas.elementAt(index).isSelected == true) {
      lstEtiquetasIDs.add(lstEtiquetas.elementAt(index).exemplarDataID ?? 0); 
      notifyListeners();
    } else {
      lstEtiquetasIDs.remove(lstEtiquetas.elementAt(index).exemplarDataID); 
      notifyListeners();
    }
  }
  
  bool isSelecionarTodos = false;

  void marcarSelecionarTodos() {
    for (int index = 0; index < lstEtiquetas.length; index++) {
      lstEtiquetas.elementAt(index).isSelected = true;
      lstEtiquetasIDs.add(lstEtiquetas.elementAt(index).exemplarDataID ?? 0);
    }
    isSelecionarTodos = !isSelecionarTodos;
    notifyListeners();
  }
  
  void marcarLimparTodos() {
    for (int index = 0; index < lstEtiquetas.length; index++) {
      lstEtiquetas.elementAt(index).isSelected = false;
    }
    lstEtiquetasIDs.clear();
    notifyListeners();
  }
 
  void limparListaEtiquetas() {
    lstEtiquetas.clear();
    notifyListeners();
  }
  
  void limparEtiquetasControllers() {
    pesquisaController.clear();
    relatorioIDController.clear();
    isSelecionarTodos = false;
    limparListaEtiquetas();
    marcarLimparTodos();
    notifyListeners();
  }

  Future<ClassDataModelRelatorioResponse> obterEtiquetas() async {
    relatorioIDController.text = '7';
    carregando();
    var etiquetas = await relatorioRepository.getRelatorio(
      relatorioID: relatorioIDController.text.trim(),
      arg0: lstEtiquetasIDs.toString(),
    );
    carregado();
    notifyListeners();
    return etiquetas;
  }

  Future<List<ClassEtiquetasData>> getEtiquetas() async {
    isSelecionarTodos = false;
    lstEtiquetas.clear();
    lstEtiquetasIDs.clear();
    if (formKey.currentState!.validate()) {
      carregando();
      var etiqueta = await etiquetasRepository.getEtiquetas(
        nome: pesquisaController.text.trim(),
      );
      lstEtiquetas.addAll(etiqueta);
      carregado();
      return etiqueta;
    } else {
      return [];
    }
  }
}
