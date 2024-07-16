// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/modules/autoridade/repository/autoridade_repository.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_livro_data.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_nota_geral_500_data_items.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/models/class_topico_650_data_items.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/repository/entrada_livro_repository.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/models/class_monografia_tese_dissertacao_data.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/repository/entrada_monografia_tese_dissertacao_repository.dart';
import '../../autoridade/models/class_autoridades_data.dart';

class BuscasController extends ChangeNotifier {
  // PASSAGEM PARAM VIA CONSTRUTORES
  final AutoridadeRepository autoridadeRepository;
  final EntradaLivroRepository entradaLivroRepository;
  final EntradaMonograTeseDissertacaoRepository entradaTeseRepository;
  // final EntradaLivroController entradaLivroController;
  
  BuscasController(this.autoridadeRepository, this.entradaLivroRepository, this.entradaTeseRepository);

  // FORMKEY
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var qtdRegistros = TextEditingController();

  // CHECKBOX PESQUISAS
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
  
  // LOADING
  bool isLoading = false;

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  // MÉTODO ABRIR LINKS EXTERNOS
  Future<void> abrirUrl(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Não foi possível abrir a url: $url');
    } 
  } 

  //AUTORIDADES
  // CONTROLADORES
  final pesquisarController = TextEditingController();

  var etiqueta_040AutoridadeController = TextEditingController();
  var primeiroIndicador_040AutoridadeController = TextEditingController();
  var segundoIndicador_040AutoridadeController = TextEditingController();
  var $a_agenciaDeCatalogacaoOriginalAutoridadeController = TextEditingController();
  var $b_idiomaDaCatalogacaoAutoridadeController = TextEditingController();
  var $c_agenciaDeTranscricaoAutoridadeController = TextEditingController();
  var $d_agenciaModificadoraAutoridadeController = TextEditingController();
  var etiqueta_100AutoridadeController = TextEditingController();
  var primeiroIndicador_100AutoridadeController = TextEditingController();
  var segundoIndicador_100AutoridadeController = TextEditingController();
  var $a_nomePessoal_100AutoridadeController = TextEditingController();
  var $d_datasAssociadasAoNome_100AutoridadeController = TextEditingController();
  var etiqueta_400AutoridadeController = TextEditingController();
  var primeiroIndicador_400AutoridadeController = TextEditingController();
  var segundoIndicador_400AutoridadeController = TextEditingController();
  var $a_nomePessoal_400AutoridadeController = TextEditingController();
  var $d_datasAssociadasAoNome_400AutoridadeController = TextEditingController();
  var etiqueta_667AutoridadeController = TextEditingController();
  var primeiroIndicador_667AutoridadeController = TextEditingController();
  var segundoIndicador_667AutoridadeController = TextEditingController();
  var $a_notaGeralNaoPublicaAutoridadeController = TextEditingController();
  var etiqueta_670AutoridadeController = TextEditingController();
  var primeiroIndicador_670AutoridadeController = TextEditingController();
  var segundoIndicador_670AutoridadeController = TextEditingController();
  var $a_citacaoDeFonteAutoridadeController = TextEditingController();
  var $u_URIAutoridadeController = TextEditingController();

  // LISTA DE AUTORIDADES
  var lstAutoridades = <ClassAutoridadesData>[];

  // MÉTODO [GET, UPDATE, DELETE]
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

  void limparListaAutoridades() {
    lstAutoridades.clear();
    notifyListeners();
  }

  Future<ClassGenericResponse> updateAutoridade({
    required int fonteCatalogadora_040_DataID,
    required int nomePessoal_100_DataID,
    required int nomePessoal_400_DataID,
    required int notaGeralNaoPublica_667_DataID,
    required int dadosDeFontesEncontrados_670_DataID,
  }) async {
    carregando();
    var autoridade = await autoridadeRepository.updateAutoridade(
      autoridade: ClassAutoridadesData(
        fonteCatalogadoraAutoridade_01X_09X_DataID: fonteCatalogadora_040_DataID,
        etiqueta_040: etiqueta_040AutoridadeController.text.trim(),
        primeiroIndicador_040: primeiroIndicador_040AutoridadeController.text.trim(),
        segundoIndicador_040: segundoIndicador_040AutoridadeController.text.trim(),
        $a_agenciaDeCatalogacaoOriginal: $a_agenciaDeCatalogacaoOriginalAutoridadeController.text.trim(),
        $b_idiomaDaCatalogacao: $b_idiomaDaCatalogacaoAutoridadeController.text.trim(),
        nomePessoalAutoridade_1XX_3XX_DataID: nomePessoal_100_DataID,
        etiqueta_100: etiqueta_100AutoridadeController.text.trim(),
        primeiroIndicador_100: primeiroIndicador_100AutoridadeController.text.trim(),
        segundoIndicador_100: segundoIndicador_100AutoridadeController.text.trim(),
        $a_nomePessoal_100: $a_nomePessoal_100AutoridadeController.text.trim(),
        $d_datasAssociadasAoNome_100: $d_datasAssociadasAoNome_100AutoridadeController.text.trim(),
        nomePessoalAutoridade_4XX_DataID: nomePessoal_400_DataID,
        etiqueta_400: etiqueta_400AutoridadeController.text.trim(),
        primeiroIndicador_400: primeiroIndicador_400AutoridadeController.text.trim(),
        segundoIndicador_400: segundoIndicador_400AutoridadeController.text.trim(),
        $a_nomePessoal_400: $a_nomePessoal_400AutoridadeController.text.trim(),
        $d_datasAssociadasAoNome_400: $d_datasAssociadasAoNome_400AutoridadeController.text.trim(),
        notaGeralNaoPublicaAutoridade_667_68X_DataID: notaGeralNaoPublica_667_DataID,
        etiqueta_667: etiqueta_667AutoridadeController.text.trim(),
        primeiroIndicador_667: primeiroIndicador_667AutoridadeController.text.trim(),
        segundoIndicador_667: segundoIndicador_667AutoridadeController.text.trim(),
        $a_notaGeralNaoPublica: $a_notaGeralNaoPublicaAutoridadeController.text.trim(),
        dadosDeFontesEncontradosAutoridade_667_68X_DataID: dadosDeFontesEncontrados_670_DataID,
        etiqueta_670: etiqueta_670AutoridadeController.text.trim(),
        primeiroIndicador_670: primeiroIndicador_670AutoridadeController.text.trim(),
        segundoIndicador_670: segundoIndicador_670AutoridadeController.text.trim(),
        $a_citacaoDeFonte: $a_citacaoDeFonteAutoridadeController.text.trim(),
        $u_URI: $u_URIAutoridadeController.text.trim(),
      ),
    );
    carregado();
    notifyListeners();
    return autoridade;
  }

  Future<ClassGenericResponse> removerAutoridade({
    required String autoridadeID,
    required String autoridadeNome,
    required String liderAutoridadesDataID,
    required String camposDeControleAutoridades_00X_DataID,
    required String camposFixosAutoridades_00X_DataID,
    required String fonteCatalogadoraAutoridade_01X_09X_DataID,
    required String nomePessoalAutoridade_1XX_3XX_DataID,
    required String nomePessoalAutoridade_4XX_DataID,
    required String notaGeralNaoPublicaAutoridade_667_68X_DataID,
    required String dadosDeFontesEncontradosAutoridade_667_68X_DataID,
  }) async {
    carregando();
    var autoridade = await autoridadeRepository.removerAutoridade(
      autoridadeID: autoridadeID,
      autoridadeNome: autoridadeNome,
      liderAutoridadesDataID: liderAutoridadesDataID,
      camposDeControleAutoridades_00X_DataID: camposDeControleAutoridades_00X_DataID,
      camposFixosAutoridades_00X_DataID: camposFixosAutoridades_00X_DataID,
      fonteCatalogadoraAutoridade_01X_09X_DataID: fonteCatalogadoraAutoridade_01X_09X_DataID,
      nomePessoalAutoridade_1XX_3XX_DataID: nomePessoalAutoridade_1XX_3XX_DataID,
      nomePessoalAutoridade_4XX_DataID: nomePessoalAutoridade_4XX_DataID,
      notaGeralNaoPublicaAutoridade_667_68X_DataID: notaGeralNaoPublicaAutoridade_667_68X_DataID,
      dadosDeFontesEncontradosAutoridade_667_68X_DataID: dadosDeFontesEncontradosAutoridade_667_68X_DataID,
    );
    carregado();
    notifyListeners();
    return autoridade;
  }

  // LIVROS
  // CONTROLADORES DE TEXTO
  var etiqueta_020Controller = TextEditingController();
  var primeiroIndicador_020Controller = TextEditingController();
  var segundoIndicador_020Controller = TextEditingController();
  var $a_numeroISBNController = TextEditingController();

  var etiqueta_040Controller = TextEditingController();
  var primeiroIndicador_040Controller = TextEditingController();
  var segundoIndicador_040Controller = TextEditingController();
  var $a_codigoDaAgenciaCatalogadoraController = TextEditingController();
  var $b_idiomaCatalogacaoController = TextEditingController();

  var etiqueta_080Controller = TextEditingController();
  var primeiroIndicador_080Controller = TextEditingController();
  var segundoIndicador_080Controller = TextEditingController();
  var $a_numeroDeClassificacaoDecimalUniversalController = TextEditingController();
  var $2_numeroDaEdicaoController = TextEditingController();

  var etiqueta_100Controller = TextEditingController();
  var primeiroIndicador_100Controller = TextEditingController();
  var segundoIndicador_100Controller = TextEditingController();
  var $a_nomePessoalController = TextEditingController();
  var $c_titulosEOutrasPalavrasAssociadasAoNomeController = TextEditingController();
  var $d_datasAssociadasAoNomeController = TextEditingController();
  
  var etiqueta_111Controller = TextEditingController();
  var primeiroIndicador_111Controller = TextEditingController();
  var segundoIndicador_111Controller = TextEditingController();
  var $a_nomeDoEventoOuLugarController = TextEditingController();

  var etiqueta_245Controller = TextEditingController();
  var primeiroIndicador_245Controller = TextEditingController();
  var segundoIndicador_245Controller = TextEditingController();
  var $a_tituloPrincipalController = TextEditingController();
  var $b_subtituloController = TextEditingController();
  var $c_indicacaoDeResponsabilidadeController = TextEditingController();

  var etiqueta_260Controller = TextEditingController();
  var primeiroIndicador_260Controller = TextEditingController();
  var segundoIndicador_260Controller = TextEditingController();
  var $a_lugarDePublicacaoController = TextEditingController();
  var $b_nomeDoEditorController = TextEditingController();
  var $c_dataDePublicacaoController = TextEditingController();

  var etiqueta_300Controller = TextEditingController();
  var primeiroIndicador_300Controller = TextEditingController();
  var segundoIndicador_300Controller = TextEditingController();
  var $a_extensaoController = TextEditingController();
  var $c_dimensoesController = TextEditingController();
  
  var etiqueta_856Controller = TextEditingController();
  var primeiroIndicador_856Controller = TextEditingController();
  var segundoIndicador_856Controller = TextEditingController();
  var $a_nomeDoServidorController = TextEditingController();
  var $u_identificadorUniformeDeRecursoURIController = TextEditingController();

  // LISTA DE LIVROS
  var lstLivros = <ClassLivroData>[];
  // LISTA PARA CAMPOS REPETIDOS
  var lstNotaGeral500Items = <NotaGeral500DataItems>[];
  var lstTopico650Items = <ClassTopico_650_DataItems>[];

  void limparListaLivros() {
    lstLivros.clear();
    notifyListeners();
  }

  // MÉTODOS [GET, UPDATE, DELETE]
  Future<List<ClassLivroData>> getLivroPorNome({required String nome}) async {
    carregando();
    var livros = await entradaLivroRepository.getLivroPorNome(
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
  
  Future<ClassGenericResponse> copiarLivro({
    required String livroID, 
    required String acervoDataID, 
    required String liderID,
    required String camposDeControle_00X_DataID,
    required String livro_006_DataID,
    required String todosOsMateriais_008_DataID,
    required String livros_008_DataID,
    required String isbn_020_DataID,
    required String fonteDeCatalogacao_040_DataID,
    required String codigoDoIdioma_041_DataID,
    required String codigoDaAreaGeografica_043_DataID,
    required String numeroDeClassificacaoDeDewey_082_DataID,
    required String numeroDeClassificacaoDecimalUniversal_080_DataID,
    required String nomePessoal_100_DataID,
    required String tituloPrincipal_245_DataID ,
    required String formasVariadasDoTitulo_246_DataID,
    required String edicao_250_DataID,
    required String imprenta_260_DataID,
    required String descricaoFisica_300_DataID ,
    required String indicacaoDeSeries_490_DataID,
    required String notaGeral_500_DataID,
    required String notaDeBibliografia_504_DataID,
    required String notaDeConteudo_505_DataID,
    required String nomePessoal_600_DataID,
    required String topico_650_DataID,
    required String nomePessoal_700_DataID,
    required String entradaDeIdiomaOriginal_765_DataID,
    required String exemplarNumero,
    required String exemplarDataID,
    required String tituloUniforme_240_DataID,
    required String localizacaoEAcessoEletronico_856_DataID,
    required String numeroDeChamadaLocal_090_DataID,
    required String notaDeResumo_520_dataID,
    required String evento_111_DataID,
    }) async {
    carregando();
    var livroCopiado = await entradaLivroRepository.copiarLivro(
      livroID: livroID, 
      acervoDataID: acervoDataID,
      liderID: liderID,
      camposDeControle_00X_DataID: camposDeControle_00X_DataID,
      livro_006_DataID: livro_006_DataID,
      todosOsMateriais_008_DataID: todosOsMateriais_008_DataID,
      livros_008_DataID: livros_008_DataID,
      isbn_020_DataID: isbn_020_DataID,
      fonteDeCatalogacao_040_DataID: fonteDeCatalogacao_040_DataID,
      codigoDoIdioma_041_DataID: codigoDoIdioma_041_DataID,
      codigoDaAreaGeografica_043_DataID: codigoDaAreaGeografica_043_DataID,
      numeroDeClassificacaoDeDewey_082_DataID: numeroDeClassificacaoDeDewey_082_DataID,
      numeroDeClassificacaoDecimalUniversal_080_DataID: numeroDeClassificacaoDecimalUniversal_080_DataID,
      nomePessoal_100_DataID: nomePessoal_100_DataID,
      tituloPrincipal_245_DataID:  tituloPrincipal_245_DataID,
      formasVariadasDoTitulo_246_DataID: formasVariadasDoTitulo_246_DataID,
      edicao_250_DataID: edicao_250_DataID,
      imprenta_260_DataID: imprenta_260_DataID,
      descricaoFisica_300_DataID:  descricaoFisica_300_DataID,
      indicacaoDeSeries_490_DataID: indicacaoDeSeries_490_DataID,
      notaGeral_500_DataID: notaGeral_500_DataID,
      notaDeBibliografia_504_DataID: notaDeBibliografia_504_DataID,
      notaDeConteudo_505_DataID: notaDeConteudo_505_DataID,
      nomePessoal_600_DataID: nomePessoal_600_DataID,
      topico_650_DataID: topico_650_DataID,
      nomePessoal_700_DataID: nomePessoal_700_DataID,
      entradaDeIdiomaOriginal_765_DataID: entradaDeIdiomaOriginal_765_DataID,
      exemplarNumero: exemplarNumero,
      exemplarDataID: exemplarDataID,
      tituloUniforme_240_DataID: tituloUniforme_240_DataID,
      localizacaoEAcessoEletronico_856_DataID: localizacaoEAcessoEletronico_856_DataID,
      numeroDeChamadaLocal_090_DataID: numeroDeChamadaLocal_090_DataID,
      notaDeResumo_520_dataID: notaDeResumo_520_dataID,
      evento_111_DataID: evento_111_DataID,
    );
    carregado();
    notifyListeners();
    return livroCopiado;
  }

  // MÉTODO PARA OBTER VALORES DE CAMPOS QUE PODEM SER REPETIDOS
  Future<List<NotaGeral500DataItems>> getNotaGeral500Items({required String id}) async {
    carregando();
    var items = await entradaLivroRepository.NotaGeral_500_Data_Items(id: id);
    if (!lstNotaGeral500Items.map((e) => e.notaGeral_500_DataID.toString()).contains(id)) {
      lstNotaGeral500Items.addAll(items);
    }
    carregado();
    notifyListeners();
    return items;
  }
  
  Future<List<ClassTopico_650_DataItems>> getTopico650Items({required String id}) async {
    carregando();
    var items = await entradaLivroRepository.Topico_650_Data_Items(id: id);
    if (!lstTopico650Items.map((e) => e.topico_650_DataID.toString()).contains(id)) {
      lstTopico650Items.addAll(items);
    }
    carregado();
    notifyListeners();
    return items;
  }

  Future<ClassGenericResponse> updateLivro({
    required int isbn_020_DataID,
    required int fonteDeCatalogacao_040_DataID,
    required int numeroDeClassificacaoDecimalUniversal_080_DataID,
    required int nomePessoal_100_DataID,
    required int evento_111_DataID,
    required int tituloPrincipal_245_DataID,
    required int imprenta_260_DataID,
    required int descricaoFisica_300_DataID,
    required int localizacaoEAcessoEletronico_856_DataID,
    required int livrosDataID,
    required String livroSituacao,
  }) async {
    carregando();
    var livroAtualizado = await entradaLivroRepository.updateLivro(
      livrosDataID: livrosDataID,
      livroSituacao: livroSituacao,
      livro: ClassLivroData(
        isbn_020_DataID: isbn_020_DataID,
        etiqueta_020: etiqueta_020Controller.text.trim(),
        primeiroIndicador_020: primeiroIndicador_020Controller.text.trim(),
        segundoIndicador_020: segundoIndicador_020Controller.text.trim(),
        $a_numeroISBN: $a_numeroISBNController.text.trim(),
        fonteDeCatalogacao_040_DataID: fonteDeCatalogacao_040_DataID,
        etiqueta_040: etiqueta_040Controller.text.trim(),
        primeiroIndicador_040: primeiroIndicador_040Controller.text.trim(),
        segundoIndicador_040: segundoIndicador_040Controller.text.trim(),
        $a_codigoDaAgenciaCatalogadora:$a_codigoDaAgenciaCatalogadoraController.text.trim(),
        $b_idiomaCatalogacao: $b_idiomaCatalogacaoController.text.trim(),
        numeroDeClassificacaoDecimalUniversal_080_DataID: numeroDeClassificacaoDecimalUniversal_080_DataID,
        etiqueta_080: etiqueta_080Controller.text.trim(),
        primeiroIndicador_080: primeiroIndicador_080Controller.text.trim(),
        segundoIndicador_080: segundoIndicador_080Controller.text.trim(),
        $a_numeroDeClassificacaoDecimalUniversal: $a_numeroDeClassificacaoDecimalUniversalController.text.trim(),
        nomePessoal_100_DataID: nomePessoal_100_DataID,
        etiqueta_100: etiqueta_100Controller.text.trim(),
        primeiroIndicador_100: primeiroIndicador_100Controller.text.trim(),
        segundoIndicador_100: segundoIndicador_100Controller.text.trim(),
        $a_nomePessoal_100: $a_nomePessoalController.text.trim(),
        $c_titulosEOutrasPalavrasAssociadasAoNome_100: $c_titulosEOutrasPalavrasAssociadasAoNomeController.text.trim(),
        $d_datasAssociadasAoNome_100: $d_datasAssociadasAoNomeController.text.trim(),
        evento_111_DataID: evento_111_DataID,
        etiqueta_111: etiqueta_111Controller.text.trim(),
        primeiroIndicador_111: primeiroIndicador_111Controller.text.trim(),
        segundoIndicador_111: segundoIndicador_111Controller.text.trim(),
        $a_nomeDoEventoOuLugar_111: $a_nomeDoEventoOuLugarController.text.trim(),
        tituloPrincipal_245_DataID: tituloPrincipal_245_DataID,
        etiqueta_245: etiqueta_245Controller.text.trim(),
        primeiroIndicador_245: primeiroIndicador_245Controller.text.trim(),
        segundoIndicador_245: segundoIndicador_245Controller.text.trim(),
        $a_tituloPrincipal: $a_tituloPrincipalController.text.trim(),
        $b_subtitulo: $b_subtituloController.text.trim(),
        $c_indicacaoDeResponsabilidade: $c_indicacaoDeResponsabilidadeController.text.trim(),
        imprenta_260_DataID: imprenta_260_DataID,
        etiqueta_260: etiqueta_260Controller.text.trim(),
        primeiroIndicador_260: primeiroIndicador_260Controller.text.trim(),
        segundoIndicador_260: segundoIndicador_260Controller.text.trim(),
        $a_lugarDePublicacao: $a_lugarDePublicacaoController.text.trim(),
        $b_nomeDoEditor: $b_nomeDoEditorController.text.trim(),
        $c_dataDePublicacao: $c_dataDePublicacaoController.text.trim(),
        descricaoFisica_300_DataID: descricaoFisica_300_DataID,
        etiqueta_300: etiqueta_300Controller.text.trim(),
        primeiroIndicador_300: primeiroIndicador_300Controller.text.trim(),
        segundoIndicador_300: segundoIndicador_300Controller.text.trim(),
        $a_extensao: $a_extensaoController.text.trim(),
        $c_dimensoes: $c_dimensoesController.text.trim(),
        localizacaoEAcessoEletronico_856_DataID: localizacaoEAcessoEletronico_856_DataID,
        etiqueta_856: etiqueta_856Controller.text.trim(),
        primeiroIndicador_856: primeiroIndicador_856Controller.text.trim(),
        segundoIndicador_856: segundoIndicador_856Controller.text.trim(),
        $a_nomeDoServidor: $a_nomeDoServidorController.text.trim(),
        $u_identificadorUniformeDeRecursoURI: $u_identificadorUniformeDeRecursoURIController.text.trim(),
      ),
    );
    carregado();
    notifyListeners();
    return livroAtualizado;
  }

  Future<ClassGenericResponse> removerLivro({
    required String livroID,
      required String livroNome,
      required String liderID,
      required String camposDeControleID,
      required String todosOsMateriaisID,
      required String livros_008_dataID,
      required String isbnID,
      required String fonteDeCatalogacaoID,
      required String codigoDoIdiomaID,
      required String codigoDaAreaGeograficaID,
      required String cduID,
      required String numeroDeChamadaLocalID,
      required String nomePessoalID,
      required String evento_111_DataID,
      required String tituloOriginalID,
      required String tituloPrincipalID,
      required String formasVariadasDoTituloID,
      required String edicaoID,
      required String imprentaID,
      required String descricaoFisicaID,
      required String indicacaoDeSeriesID,
      required String notaGeralID,
      required String notaDeBibliografiaID,
      required String notaDeConteudoID,
      required String topicoID,
      required String nomePessoalSecundarioID,
      required String localizacaoEAcessoEletronicoID,
  }) async {
    carregando();
    var livro = await entradaLivroRepository.removerLivro(
      livroID: livroID,
      livroNome: livroNome,
      liderID: liderID,
      camposDeControleID: camposDeControleID,
      todosOsMateriaisID: todosOsMateriaisID,
      livros_008_dataID: livros_008_dataID,
      numeroDeChamadaLocalID: numeroDeChamadaLocalID,
      isbnID: isbnID,
      codigoDoIdiomaID: codigoDoIdiomaID,
      codigoDaAreaGeograficaID: codigoDaAreaGeograficaID,
      fonteDeCatalogacaoID: fonteDeCatalogacaoID,
      cduID: cduID,
      nomePessoalID: nomePessoalID,
      evento_111_DataID: evento_111_DataID,
      tituloOriginalID: tituloOriginalID,
      tituloPrincipalID: tituloPrincipalID,
      formasVariadasDoTituloID: formasVariadasDoTituloID,
      edicaoID: edicaoID,
      imprentaID: imprentaID,
      descricaoFisicaID: descricaoFisicaID,
      indicacaoDeSeriesID: indicacaoDeSeriesID,
      notaGeralID: notaGeralID,
      notaDeBibliografiaID: notaDeBibliografiaID,
      notaDeConteudoID: notaDeConteudoID,
      topicoID: topicoID,
      nomePessoalSecundarioID: nomePessoalSecundarioID,
      localizacaoEAcessoEletronicoID: localizacaoEAcessoEletronicoID
    );
    carregado();
    notifyListeners();
    return livro;
  }

  // TESE
  // CONTROLADORES DE TEXTO
  var etiqueta_100TeseController = TextEditingController();
  var primeiroIndicador_100TeseController = TextEditingController();
  var segundoIndicador_100TeseController = TextEditingController();
  var $a_nomePessoalTeseController = TextEditingController();
  var $c_titulosEOutrasPalavrasAssociadasAoNomeTeseController = TextEditingController();
  var $d_datasAssociadasAoNomeTeseController = TextEditingController();

  var etiqueta_245TeseController = TextEditingController();
  var primeiroIndicador_245TeseController = TextEditingController();
  var segundoIndicador_245TeseController = TextEditingController();
  var $a_tituloPrincipalTeseController = TextEditingController();
  var $b_subtituloTeseController = TextEditingController();
  var $c_indicacaoDeResponsabilidadeTeseController = TextEditingController();

  var etiqueta_260TeseController = TextEditingController();
  var primeiroIndicador_260TeseController = TextEditingController();
  var segundoIndicador_260TeseController = TextEditingController();
  var $a_lugarDePublicacaoTeseController = TextEditingController();
  var $b_nomeDoEditorTeseController = TextEditingController();
  var $c_dataDePublicacaoTeseController = TextEditingController();

  var etiqueta_300TeseController = TextEditingController();
  var primeiroIndicador_300TeseController = TextEditingController();
  var segundoIndicador_300TeseController = TextEditingController();
  var $a_extensaoTeseController = TextEditingController();
  var $c_dimensoesTeseController = TextEditingController();
  
  var etiqueta_500TeseController = TextEditingController();
  var primeiroIndicador_500TeseController = TextEditingController();
  var segundoIndicador_500TeseController = TextEditingController();
  var $a_notaGeralTeseController = TextEditingController();
  
  var etiqueta_502TeseController = TextEditingController();
  var primeiroIndicador_502TeseController = TextEditingController();
  var segundoIndicador_502TeseController = TextEditingController();
  var $a_notaDeDissertacaoOuTeseController = TextEditingController();
  
  var etiqueta_700TeseController = TextEditingController();
  var primeiroIndicador_700TeseController = TextEditingController();
  var segundoIndicador_700TeseController = TextEditingController();
  var $a_nomePessoalSecundarioTeseController = TextEditingController();

  var etiqueta_856TeseController = TextEditingController();
  var primeiroIndicador_856TeseController = TextEditingController();
  var segundoIndicador_856TeseController = TextEditingController();
  var $a_nomeDoServidorTeseController = TextEditingController();
  var $u_identificadorUniformeDeRecursoURITeseController = TextEditingController();

  // LISTA DE TESES
  var lstTeses = <ClassMonografiaTeseDissertacaoData>[];

  void limparListaMonografiaTeseEDissertacao() {
    lstTeses.clear();
    notifyListeners();
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

  Future<ClassGenericResponse> copiarMonografiaTeseEDissertacao({
    required String monografiaTeseEDissertacaoDataID,
      required String liderID,                   
      required String camposDeControle_00X_DataID,
      required String todosOsMateriais_008_DataID,
      required String livros_008_DataID,          
      required String fonteDeCatalogacao_040_DataID,
      required String numeroDeClassificacaoDecimalUniversal_080_DataID, 
      required String numeroDeChamadaLocal_090_DataID,                  
      required String nomePessoal_100_DataID,     
      required String tituloPrincipal_245_DataID, 
      required String imprenta_260_DataID,        
      required String descricaoFisica_300_DataID, 
      required String notaGeral_500_DataID,       
      required String notaDeDissertacaoOuTese_502_DataID,               
      required String notaDeBibliografia_504_DataID,
      required String notaDeResumo_520_DataID,    
      required String notaDeOutrosFormatosDisponiveis_530_DataID,       
      required String entidade_610_DataID,        
      required String topico_650_DataID,          
      required String nomePessoal_700_DataID,     
      required String entidade_710_DataID,        
      required String exemplarNumero,             
      required String exemplarDataID,             
      required String acervoDataID,               
      required String localizacaoEAcessoEletronico_856_DataID,
  }) async {
    carregando();
    var monografiaTeseEDissertacaoCopiada = await entradaTeseRepository.copiarMonografiaTeseEDissertacao(
      monografiaTeseEDissertacaoDataID: monografiaTeseEDissertacaoDataID, 
      liderID: liderID, 
      camposDeControle_00X_DataID: camposDeControle_00X_DataID, 
      todosOsMateriais_008_DataID: todosOsMateriais_008_DataID, 
      livros_008_DataID: livros_008_DataID, 
      fonteDeCatalogacao_040_DataID: fonteDeCatalogacao_040_DataID, 
      numeroDeClassificacaoDecimalUniversal_080_DataID: numeroDeClassificacaoDecimalUniversal_080_DataID, 
      numeroDeChamadaLocal_090_DataID: numeroDeChamadaLocal_090_DataID, 
      nomePessoal_100_DataID: nomePessoal_100_DataID, 
      tituloPrincipal_245_DataID: tituloPrincipal_245_DataID, 
      imprenta_260_DataID: imprenta_260_DataID, 
      descricaoFisica_300_DataID: descricaoFisica_300_DataID, 
      notaGeral_500_DataID: notaGeral_500_DataID, 
      notaDeDissertacaoOuTese_502_DataID: notaDeDissertacaoOuTese_502_DataID, 
      notaDeBibliografia_504_DataID: notaDeBibliografia_504_DataID, 
      notaDeResumo_520_DataID: notaDeResumo_520_DataID, 
      notaDeOutrosFormatosDisponiveis_530_DataID: notaDeOutrosFormatosDisponiveis_530_DataID, 
      entidade_610_DataID: entidade_610_DataID, 
      topico_650_DataID: topico_650_DataID, 
      nomePessoal_700_DataID: nomePessoal_700_DataID, 
      entidade_710_DataID: entidade_710_DataID, 
      exemplarNumero: exemplarNumero, 
      exemplarDataID: exemplarDataID, 
      acervoDataID: acervoDataID, 
      localizacaoEAcessoEletronico_856_DataID: localizacaoEAcessoEletronico_856_DataID,
    );
    carregado();
    notifyListeners();
    return monografiaTeseEDissertacaoCopiada;
  }

  Future<ClassGenericResponse> updateMonografiaTeseEDissertacao(
    {
      required int monografiaTeseDissertacaoID,
      required int nomePessoal_100_DataID,
      required int tituloPrincipal_245_DataID,
      required int imprenta_260_DataID,
      required int descricaoFisica_300_DataID,
      required int notaGeral_500_dataID,
      required int notaDeDissertacaoOuTese_502_dataID,
      required int nomePessoal_700_DataID,
      required int localizacaoEAcessoEletronico_856_DataID,
    }
  ) async {
    carregando();
    var monografiaTeseEDissertacao = await entradaTeseRepository.updateMonografiaTeseEDissertacao(
      monografiaTeseEDissertacaoID: monografiaTeseDissertacaoID,
      tese: ClassMonografiaTeseDissertacaoData(
        monografiaTeseEDissertacaoDataID: monografiaTeseDissertacaoID,
        nomePessoal_100_DataID: nomePessoal_100_DataID,
        etiqueta_100: etiqueta_100TeseController.text.trim(),
        primeiroIndicador_100: primeiroIndicador_100TeseController.text.trim(),
        segundoIndicador_100: segundoIndicador_100TeseController.text.trim(),
        $a_nomePessoal_100: $a_nomePessoalTeseController.text.trim(),
        $c_titulosEOutrasPalavrasAssociadasAoNome_100: $c_titulosEOutrasPalavrasAssociadasAoNomeTeseController.text.trim(),
        $d_datasAssociadasAoNome_100: $d_datasAssociadasAoNomeTeseController.text.trim(),
        tituloPrincipal_245_DataID: tituloPrincipal_245_DataID,
        etiqueta_245: etiqueta_245TeseController.text.trim(),
        primeiroIndicador_245: primeiroIndicador_245TeseController.text.trim(),
        segundoIndicador_245: segundoIndicador_245TeseController.text.trim(),
        $a_tituloPrincipal: $a_tituloPrincipalTeseController.text.trim(),
        $b_subtitulo: $b_subtituloTeseController.text.trim(),
        $c_indicacaoDeResponsabilidade: $c_indicacaoDeResponsabilidadeTeseController.text.trim(),
        imprenta_260_DataID: imprenta_260_DataID,
        etiqueta_260: etiqueta_260TeseController.text.trim(),
        primeiroIndicador_260: primeiroIndicador_260TeseController.text.trim(),
        segundoIndicador_260: segundoIndicador_260TeseController.text.trim(),
        $a_lugarDePublicacao: $a_lugarDePublicacaoTeseController.text.trim(),
        $b_nomeDoEditor: $b_nomeDoEditorTeseController.text.trim(),
        $c_dataDePublicacao: $c_dataDePublicacaoTeseController.text.trim(),
        descricaoFisica_300_DataID: descricaoFisica_300_DataID,
        etiqueta_300: etiqueta_300TeseController.text.trim(),
        primeiroIndicador_300: primeiroIndicador_300TeseController.text.trim(),
        segundoIndicador_300: segundoIndicador_300TeseController.text.trim(),
        $a_extensao: $a_extensaoTeseController.text.trim(),
        $c_dimensoes: $c_dimensoesTeseController.text.trim(),
        notaGeral_500_DataID: notaGeral_500_dataID,
        etiqueta_500: etiqueta_500TeseController.text.trim(),
        primeiroIndicador_500: primeiroIndicador_500TeseController.text.trim(),
        segundoIndicador_500: segundoIndicador_500TeseController.text.trim(),
        $a_notaGeral: $a_notaGeralTeseController.text.trim(),
        notaDeDissertacaoOuTese_502_DataID: notaDeDissertacaoOuTese_502_dataID,
        etiqueta_502: etiqueta_502TeseController.text.trim(),
        primeiroIndicador_502: primeiroIndicador_502TeseController.text.trim(),
        segundoIndicador_502: segundoIndicador_502TeseController.text.trim(),
        $a_notaDeDissertacaoOuTese: $a_notaDeDissertacaoOuTeseController.text.trim(),
        nomePessoal_700_DataID: nomePessoal_700_DataID,
        etiqueta_700: etiqueta_700TeseController.text.trim(),
        primeiroIndicador_700: primeiroIndicador_700TeseController.text.trim(),
        segundoIndicador_700: segundoIndicador_700TeseController.text.trim(),
        $a_nomePessoal_700: $a_nomePessoalSecundarioTeseController.text.trim(),
        localizacaoEAcessoEletronico_856_DataID: localizacaoEAcessoEletronico_856_DataID,
        etiqueta_856: etiqueta_856TeseController.text.trim(),
        primeiroIndicador_856: primeiroIndicador_856TeseController.text.trim(),
        segundoIndicador_856: segundoIndicador_856TeseController.text.trim(),
        $a_nomeDoServidor: $a_nomeDoServidorTeseController.text.trim(),
        $u_identificadorUniformeDeRecursoURI: $u_identificadorUniformeDeRecursoURITeseController.text.trim(),
      ),
    );
    carregado();
    notifyListeners();
    return monografiaTeseEDissertacao;
  }

  Future<ClassGenericResponse> removerMonografiaTeseEDissertacao(
  {
    required String monografiaTeseEDissertacaoID,
    required String monografiaTeseEDissertacaoNome,
    required String liderID,
    required String acervoID,
    required String camposDeControle_00X_DataID,
    required String todosOsMateriais_008_DataID,
    required String livros_008_DataID,
    required String fonteDeCatalogacao_040_DataID,
    required String numeroDeClassificacaoDecimalUniversal_080_DataID,
    required String numeroDeChamadaLocal_090_DataID,
    required String nomePessoal_100_DataID,
    required String tituloPrincipal_245_DataID,
    required String imprenta_260_DataID,
    required String descricaoFisica_300_DataID,
    required String notaGeral_500_DataID,
    required String notaDeDissertacaoOuTese_502_DataID,
    required String notaDeBibliografia_504_DataID,
    required String notaDeResumo_520_DataID,
    required String notaDeOutrosFormatosDisponiveis_530_DataID,
    required String entidade_610_DataID,
    required String topico_650_DataID,
    required String nomePessoal_700_DataID,
    required String entidade_710_DataID,
    required String localizacaoEAcessoEletronico_856_DataID,
  }
  ) async {
    carregando();
    var monografiaTeseEDissertacao = await entradaTeseRepository.removerMonografiaTeseEDissertacao(
      monografiaTeseEDissertacaoID: monografiaTeseEDissertacaoID, 
      monografiaTeseEDissertacaoNome: monografiaTeseEDissertacaoNome,
      liderID: liderID,
      acervoID: acervoID,
      camposDeControle_00X_DataID: camposDeControle_00X_DataID,
      todosOsMateriais_008_DataID: todosOsMateriais_008_DataID,
      livros_008_DataID: livros_008_DataID,
      fonteDeCatalogacao_040_DataID: fonteDeCatalogacao_040_DataID,
      numeroDeClassificacaoDecimalUniversal_080_DataID: numeroDeClassificacaoDecimalUniversal_080_DataID,
      numeroDeChamadaLocal_090_DataID: numeroDeChamadaLocal_090_DataID, 
      nomePessoal_100_DataID: nomePessoal_100_DataID, 
      tituloPrincipal_245_DataID: tituloPrincipal_245_DataID, 
      imprenta_260_DataID: imprenta_260_DataID, 
      descricaoFisica_300_DataID: descricaoFisica_300_DataID, 
      notaGeral_500_DataID: notaGeral_500_DataID, 
      notaDeDissertacaoOuTese_502_DataID: notaDeDissertacaoOuTese_502_DataID,
      notaDeBibliografia_504_DataID: notaDeBibliografia_504_DataID,
      notaDeResumo_520_DataID: notaDeResumo_520_DataID,
      notaDeOutrosFormatosDisponiveis_530_DataID: notaDeOutrosFormatosDisponiveis_530_DataID,
      entidade_610_DataID: entidade_610_DataID,
      topico_650_DataID: topico_650_DataID, 
      nomePessoal_700_DataID: nomePessoal_700_DataID,
      entidade_710_DataID: entidade_710_DataID,
      localizacaoEAcessoEletronico_856_DataID: localizacaoEAcessoEletronico_856_DataID,
    );
    carregado();
    notifyListeners();
    return monografiaTeseEDissertacao;
  }
}
