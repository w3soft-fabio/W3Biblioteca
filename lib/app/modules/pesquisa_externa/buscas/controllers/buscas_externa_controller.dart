import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../autoridade/models/class_autoridades_data.dart';
import '../../../autoridade/repository/autoridade_repository.dart';
import '../../../entrada/livro/models/class_livro_data.dart';
import '../../../entrada/livro/repository/entrada_livro_repository.dart';
import '../../../entrada/monografia_tese_dissertacao/models/class_monografia_tese_dissertacao_data.dart';
import '../../../entrada/monografia_tese_dissertacao/repository/entrada_monografia_tese_dissertacao_repository.dart';

class BuscasExternaController extends ChangeNotifier {
  final AutoridadeRepository autoridadeRepository;
  final EntradaLivroRepository entradaLivroRepository;
  final EntradaMonograTeseDissertacaoRepository entradaTeseRepository;
  
  BuscasExternaController(this.entradaLivroRepository, this.autoridadeRepository, this.entradaTeseRepository);

  final formKey = GlobalKey<FormState>();

  var qtdRegistros = TextEditingController();
  final pesquisarController = TextEditingController();

  bool isCheckLivro = false;
  bool isCheckAutoridade = false;
  bool isCheckMonografiaTeseEDissertacao = false;

  void marcarCheckLivro() {
    isCheckLivro = !isCheckLivro;
    notifyListeners();
  }

  void marcarCheckAutoridade() {
    isCheckAutoridade = !isCheckAutoridade;
    notifyListeners();
  }

  void marcarCheckMonografiaTeseEDissertacao() {
    isCheckMonografiaTeseEDissertacao = !isCheckMonografiaTeseEDissertacao;
    notifyListeners();
  }

  bool isLoading = false;

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
    )) {
      throw Exception('Não foi possível abrir a url: $url');
    }
  }

  var lstLivros = <ClassLivroData>[];
  var lstAutoridades = <ClassAutoridadesData>[];
  var lstTeses = <ClassMonografiaTeseDissertacaoData>[];

  void limparListaLivros() {
    lstLivros.clear();
    notifyListeners();
  }

  void limparListaAutoridades() {
    lstAutoridades.clear();
    notifyListeners();
  }

  void limparListaMonografiaTeseEDissertacao() {
    lstTeses.clear();
    notifyListeners();
  }

  Future<List<ClassLivroData>> getLivroPorNomePesquisaExterna({required String nome}) async {
    carregando();
    var livros = await entradaLivroRepository.getLivroPorNomePesquisaExterna(
      nome: nome,
      qtdRegistros: qtdRegistros.text == '' ? 10 : int.parse(qtdRegistros.text),
    );
    for (var livro in livros) {
      if (!lstLivros.any((element) => element.livrosDataID == livro.livrosDataID)) {
      lstLivros.add(livro);
      }
    }
    carregado();
    notifyListeners();
    return livros;
  }

  Future<List<ClassAutoridadesData>> getAutoridades({required String nomeAutoridade}) async {
    carregando();
    var autoridades = await autoridadeRepository.getAutoridades(nomeAutoridade: nomeAutoridade, qtdRegistros: qtdRegistros.text == '' ? 10 : int.parse(qtdRegistros.text));
    for (var autoridade in autoridades) {
      if (!lstAutoridades.any((element) => element.autoridadesDataID == autoridade.autoridadesDataID)) {
        lstAutoridades.add(autoridade);
      }
    }
    carregado();
    notifyListeners();
    return autoridades;
  }

  Future<List<ClassMonografiaTeseDissertacaoData>> getMonografiaTeseEDissertacaoPorNome({
    required String nomeTese,
  }) async {
    carregando();
    var monografiaTeseEDissertacao = await entradaTeseRepository.getMonografiaTeseEDissertacaoPorNome(
      nomeMonografiaTeseEDissertacao: nomeTese,
      qtdRegistros: qtdRegistros.text == '' ? 10 : int.parse(qtdRegistros.text),
    );
    for (var registro in monografiaTeseEDissertacao) {
      if (!lstTeses.any((element) => element.monografiaTeseEDissertacaoDataID == registro.monografiaTeseEDissertacaoDataID)) {
        lstTeses.add(registro);
      }
    }
    carregado();
    notifyListeners();
    return monografiaTeseEDissertacao;
  }
}