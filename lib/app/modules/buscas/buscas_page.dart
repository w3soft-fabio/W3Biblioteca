import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_util.dart';
import 'package:w3biblioteca/app/modules/buscas/controllers/buscas_controller.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/autoridade_card_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/botao_limpar_pesquisa_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/livro_card_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/referencia_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/search_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/tabs/tab_codigo_marc__autoridade_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/tabs/tab_codigo_marc_monografia_tese_dissertacao_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/tabs/tab_detalhes_autoridade_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/tabs/tab_detalhes_monografia_tese_dissertacao_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/monografia_tese_dissertacao_card_widget.dart';
import 'package:w3biblioteca/app/modules/emprestimo/controllers/emprestimo_controller.dart';
import 'package:w3biblioteca/app/modules/login/login_page.dart';
import 'package:w3biblioteca/app/modules/reservas/controllers/reservas_controller.dart';
import 'package:w3biblioteca/app/modules/reservas/reservas_page.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_alert_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/tabs/tab_codigo_marc_widget.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/tabs/tab_detalhes_livro_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_check_box_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_list_view_widget.dart';
import '../../shared/widgets/custom_dropdown_form_field_widget.dart';
import '../email/controllers/configurar_email_controller.dart';
import '../emprestimo/emprestimo_page.dart';
import 'widgets/qtd_registros_widget.dart';

class BuscasPage extends StatefulWidget {
  const BuscasPage({super.key});

  @override
  State<BuscasPage> createState() => _BuscasPageState();
}

class _BuscasPageState extends State<BuscasPage> {
  var livroSituacoes = <String>['Disponível', 'Fixo', 'Excluído', 'Processamento técnico'];

  @override
  Widget build(BuildContext context) {
    // DECLARAÇÃO DO CONTROLLER DA PÁGINA
    var buscasController = context.watch<BuscasController>();
    var emprestimoController = context.watch<EmprestimoController>();
    var emailController = context.watch<ConfigurarEmailController>();
    var reservasController = context.watch<ReservasController>();
    var clUtil = ClassUtil();

    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: buscasController.scaffoldKey,
      appBar: CustomAppBarWidget(
        titulo: 'Buscas',
        logout: () {
          buscasController.limparListaAutoridades();
          buscasController.limparListaLivros();
          buscasController.limparListaMonografiaTeseEDissertacao();
          buscasController.pesquisarController.clear();
          buscasController.qtdRegistros.clear();
          buscasController.isCheckLivro = false;
          buscasController.isCheckAutoridade = false;
          buscasController.isCheckMonografiaTeseEDissertacao = false;
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const LoginPage()),
          );
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.13, vertical: 32.0),
        child: SingleChildScrollView( 
          primary: false,
          child: Form(
            key: buscasController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Text(
                  'Encontre artigos, livros e mais com o W3Biblioteca',
                  style: ClassAppEstilosTexto.preto16w400Montserrat,
                ),
                const SizedBox(height: 16.0),
                // CAMPO DE PESQUISA
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SearchWidget(
                        controller: buscasController.pesquisarController,
                      ),
                      const SizedBox(width: 16.0),
                      CustomElevatedButtonWidget(
                        titulo: 'Pesquisar',
                        cor: ClassAppColors.verde,
                        height: 51,
                        icone: Icons.search_rounded,
                        onPressed: () async {
                          if (buscasController.formKey.currentState!.validate()) {
                              if (buscasController.isCheckLivro == false  && buscasController.isCheckAutoridade == false && buscasController.isCheckMonografiaTeseEDissertacao == false) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'É necessário informar um tipo de registro.', largura: size.width * 0.37, altura: size.height * 0.45));
                              } 
                              if (buscasController.isCheckLivro) {
                              buscasController.limparListaLivros();
                              await context.read<BuscasController>().getLivroPorNome(nome: buscasController.pesquisarController.text.trim()).then((lista) {
                                if(lista.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Nenhum exemplar encontrado.', largura: size.width * 0.37, altura: size.height * 0.45));
                                } 
                              });
                              } else if (buscasController.isCheckMonografiaTeseEDissertacao) {
                              buscasController.limparListaMonografiaTeseEDissertacao();
                              await context.read<BuscasController>().getMonografiaTeseEDissertacaoPorNome(nomeTese: buscasController.pesquisarController.text.trim()).then((lista) {
                                if(lista.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Nenhum registro encontrado.', largura: size.width * 0.37, altura: size.height * 0.45));
                                }
                              });
                              } else if (buscasController.isCheckAutoridade) {
                              buscasController.limparListaAutoridades();
                              await context.read<BuscasController>().getAutoridades(nomeAutoridade: buscasController.pesquisarController.text.trim()).then((lista) {
                                if(lista.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Nenhuma autoridade encontrada.', largura: size.width * 0.37, altura: size.height * 0.45));
                                } 
                            });
                          }}     
                        },
                      ),
                      const SizedBox(width: 8.0),
                      BotaoLimparPesquisaWidget(
                        onPressed: () {
                            buscasController.limparListaAutoridades();
                            buscasController.limparListaLivros();
                            buscasController.limparListaMonografiaTeseEDissertacao();
                            buscasController.pesquisarController.clear();
                            buscasController.qtdRegistros.clear();
                            buscasController.isCheckLivro = false;
                            buscasController.isCheckAutoridade = false;
                            buscasController.isCheckMonografiaTeseEDissertacao = false;
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // CHECKBOXES DE FILTRO DE PESQUISA
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomCheckBoxWidget(
                        value: buscasController.isCheckLivro,
                        onChanged: (_) => context.read<BuscasController>().marcarCheckLivro(),
                      ),
                      const SizedBox(width: 8.0),
                      Text('Livro', style: ClassAppEstilosTexto.preto16w400Montserrat),
                      const SizedBox(width: 8.0),
                      CustomCheckBoxWidget(
                        value: buscasController.isCheckAutoridade,
                        onChanged: (_) => context.read<BuscasController>().marcarCheckAutoridade(),
                      ),
                      const SizedBox(width: 8.0),
                      Text('Autoridade', style: ClassAppEstilosTexto.preto16w400Montserrat),
                      const SizedBox(width: 8.0),
                      CustomCheckBoxWidget(
                        value: buscasController.isCheckMonografiaTeseEDissertacao,
                        onChanged: (_) => context.read<BuscasController>().marcarCheckMonografiaTeseEDissertacao(),
                      ),
                      const SizedBox(width: 8.0),
                      Text('Monografia/Tese/Dissertação', style: ClassAppEstilosTexto.preto16w400Montserrat),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // CAMPO DE TEXTO PARA LIMITAR A QUANTIDADE DE REGISTROS
                QtdRegistrosWidget(
                  controller: buscasController,
                ),
                const SizedBox(height: 16.0),
                // LISTA DE LIVROS
                buscasController.isLoading ? const Center(child: CircularProgressIndicator()) : CustomListViewWidget(
                  itemCount: buscasController.lstLivros.length,
                  itemBuilder: (context, index) {
                    // CLIQUE DO CARD DE LIVRO
                    return LivroCardWidget(
                      codigoAcergo: buscasController.lstLivros[index].acervoDataID.toString(),
                      exemplarNumero: buscasController.lstLivros[index].exemplarDataID.toString(),
                      tituloPrincipal: buscasController.lstLivros[index].$a_tituloPrincipal,
                      nomePessoal: buscasController.lstLivros[index].$a_nomePessoal_100,
                      numeroISBN: buscasController.lstLivros[index].$a_numeroISBN,
                      codigoDaAgenciaCatalogadora: buscasController.lstLivros[index].$a_codigoDaAgenciaCatalogadora,
                      numeroDeClassificacao: buscasController.lstLivros[index].$a_classificacao,
                      uri: buscasController.lstLivros[index].$u_identificadorUniformeDeRecursoURI,
                      livroSituacao: buscasController.lstLivros[index].livroSituacao,
                      livroReservado: buscasController.lstLivros[index].livroReservado,
                      onPressedAbrirLink: () => context.read<BuscasController>().abrirUrl(Uri.parse(buscasController.lstLivros[index].$u_identificadorUniformeDeRecursoURI)),
                      onPressedRemover: () {
                        showDialog(context: context, 
                        builder: (context) {
                          return AlertDialog(
                            actionsAlignment: MainAxisAlignment.center,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                            title: Text('Tem certeza que deseja excluir este arquivo?', style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                            content:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Você está deletando o livro: ${buscasController.lstLivros[index].$a_nomePessoal_100}', style: ClassAppEstilosTexto.preto16w400Montserrat),
                              ],
                            ),
                            actions: <Widget>[
                              CustomElevatedButtonWidget(titulo: 'Sim', icone: Icons.check_circle_outline_rounded,
                              cor: ClassAppColors.verde,
                              onPressed: () async {
                                await context.read<BuscasController>().removerLivro(
                                  livroNome: buscasController.lstLivros[index].$a_nomePessoal_100,
                                  liderID: buscasController.lstLivros[index].liderID.toString(),
                                  camposDeControleID: buscasController.lstLivros[index].camposDeControle_00X_DataID.toString(),
                                  todosOsMateriaisID: buscasController.lstLivros[index].todosOsMateriais_008_DataID.toString(),
                                  livros_008_dataID: buscasController.lstLivros[index].livros_008_DataID.toString(),
                                  livroID: buscasController.lstLivros[index].livrosDataID.toString(), 
                                  isbnID: buscasController.lstLivros[index].isbn_020_DataID.toString(),
                                  codigoDoIdiomaID: buscasController.lstLivros[index].codigoDoIdioma_041_DataID.toString(),
                                  codigoDaAreaGeograficaID: buscasController.lstLivros[index].codigoDaAreaGeografica_043_DataID.toString(),
                                  fonteDeCatalogacaoID: buscasController.lstLivros[index].fonteDeCatalogacao_040_DataID.toString(),
                                  cduID: buscasController.lstLivros[index].numeroDeClassificacaoDecimalUniversal_080_DataID.toString(),
                                  numeroDeChamadaLocalID: buscasController.lstLivros[index].numeroDeChamadaLocal_090_DataID.toString(),
                                  nomePessoalID: buscasController.lstLivros[index].nomePessoal_100_DataID.toString(),
                                  evento_111_DataID: buscasController.lstLivros[index].evento_111_DataID.toString(),
                                  tituloOriginalID: buscasController.lstLivros[index].tituloUniforme_240_DataID.toString(),
                                  tituloPrincipalID: buscasController.lstLivros[index].tituloPrincipal_245_DataID.toString(),
                                  formasVariadasDoTituloID: buscasController.lstLivros[index].formasVariadasDoTitulo_246_DataID.toString(),                                  edicaoID: buscasController.lstLivros[index].edicao_250_DataID.toString(),
                                  imprentaID: buscasController.lstLivros[index].imprenta_260_DataID.toString(),
                                  descricaoFisicaID: buscasController.lstLivros[index].descricaoFisica_300_DataID.toString(),
                                  indicacaoDeSeriesID: buscasController.lstLivros[index].indicacaoDeSeries_490_DataID.toString(),
                                  notaGeralID: buscasController.lstLivros[index].notaGeral_500_DataID.toString(),
                                  notaDeBibliografiaID: buscasController.lstLivros[index].notaDeBibliografia_504_DataID.toString(),
                                  notaDeConteudoID: buscasController.lstLivros[index].notaDeConteudo_505_DataID.toString(),
                                  topicoID: buscasController.lstLivros[index].topico_650_DataID.toString(),
                                  nomePessoalSecundarioID: buscasController.lstLivros[index].nomePessoal_700_DataID.toString(),
                                  localizacaoEAcessoEletronicoID: buscasController.lstLivros[index].localizacaoEAcessoEletronico_856_DataID.toString(),
                                  ).then((response) {
                                    if(response.codigoRetorno.toString() == "200"){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                      );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao excluir livro!', largura: size.width * 0.37, altura: size.height * 0.45)
                                    );
                                  }
                                  });
                                  if (mounted) {
                                    Navigator.of(context).pop();
                                    context.read<BuscasController>().limparListaLivros();
                                    await context.read<BuscasController>().getLivroPorNome(nome: buscasController.pesquisarController.text.trim());
                                  }
                                },
                              ),
                              CustomElevatedButtonWidget(titulo: 'Não', icone: Icons.cancel_rounded, 
                              cor: ClassAppColors.vermelho, 
                              onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          );
                        },
                        );
                      },
                      onPressedAtualizar: () {
                        showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: DefaultTabController(
                              length: 2,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: MediaQuery.of(context).size.height * 0.85,
                                child: Scaffold(
                                  backgroundColor: Colors.grey.shade200,
                                  appBar: AppBar(
                                    title: Text(
                                      'Atualizar registro',
                                      style: ClassAppEstilosTexto.branco28w400Montserrat,
                                    ),
                                    centerTitle: true,
                                    toolbarHeight: 90.0,
                                    automaticallyImplyLeading: false,
                                    actions: [
                                      IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close_rounded), padding: const EdgeInsets.only(right: 16.0))
                                    ],
                                    bottom: TabBar(
                                      indicatorColor: ClassAppColors.branco,
                                      labelStyle: ClassAppEstilosTexto.branco16w400Montserrat,
                                      tabs:  <Widget>[
                                        Tab(
                                          text: 'Detalhes do livro ${buscasController.lstLivros[index].$a_nomePessoal_100}',
                                        ),
                                        const Tab(
                                          text: 'MARC',
                                        ),
                                      ],
                                    ),
                                  ),
                                  body: TabBarView(
                                    children: [
                                      // TAB DETALHES LIVRO
                                      TabDetalhesLivroWidget(
                                        livroSituacao: SizedBox(
                                          width: 300,
                                          child: CustomDropdownFormFieldWidget<String>(
                                            titulo: 'Livro Situação',
                                              value: buscasController.lstLivros[index].livroSituacao,
                                              onChanged: (value) {
                                                setState(() {
                                                  buscasController.lstLivros[index].livroSituacao = value as String;
                                                });
                                              },
                                              items: livroSituacoes.map<DropdownMenuItem<String>>((value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                },
                                              ).toList(),
                                          ),
                                        ),
                                        etiqueta_020: buscasController.etiqueta_020Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_020,
                                        primeiroIndicador_020: buscasController.primeiroIndicador_020Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_020,
                                        segundoIndicador_020: buscasController.segundoIndicador_020Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_020,
                                        $a_numeroISBN: buscasController.$a_numeroISBNController = TextEditingController()..text = buscasController.lstLivros[index].$a_numeroISBN,
                                        etiqueta_040: buscasController.etiqueta_040Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_040,
                                        primeiroIndicador_040: buscasController.primeiroIndicador_040Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_040,
                                        segundoIndicador_040: buscasController.segundoIndicador_040Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_040,
                                        $a_codigoDaAgenciaCatalogadora: buscasController.$a_codigoDaAgenciaCatalogadoraController = TextEditingController()..text = buscasController.lstLivros[index].$a_codigoDaAgenciaCatalogadora,
                                        $b_idiomaCatalogacao: buscasController.$b_idiomaCatalogacaoController = TextEditingController()..text = buscasController.lstLivros[index].$b_idiomaCatalogacao,
                                        etiqueta_080: buscasController.etiqueta_080Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_080,
                                        primeiroIndicador_080: buscasController.primeiroIndicador_080Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_080,
                                        segundoIndicador_080: buscasController.segundoIndicador_080Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_080,
                                        $a_numeroDeClassificacao: buscasController.$a_numeroDeClassificacaoDecimalUniversalController = TextEditingController()..text = buscasController.lstLivros[index].$a_numeroDeClassificacaoDecimalUniversal,
                                        etiqueta_100: buscasController.etiqueta_100Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_100,
                                        primeiroIndicador_100: buscasController.primeiroIndicador_100Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_100,
                                        segundoIndicador_100: buscasController.segundoIndicador_100Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_100,
                                        $a_nomePessoal: buscasController.$a_nomePessoalController = TextEditingController()..text = buscasController.lstLivros[index].$a_nomePessoal_100,
                                        $c_titulosEOutrasPalavrasAssociadasAoNome: buscasController.$c_titulosEOutrasPalavrasAssociadasAoNomeController = TextEditingController()..text = buscasController.lstLivros[index].$c_titulosEOutrasPalavrasAssociadasAoNome_100,
                                        $d_datasAssociadasAoNome: buscasController.$d_datasAssociadasAoNomeController = TextEditingController()..text = buscasController.lstLivros[index].$d_datasAssociadasAoNome_100,
                                        etiqueta_111: buscasController.etiqueta_111Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_111,
                                        primeiroIndicador_111: buscasController.primeiroIndicador_111Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_111,
                                        segundoIndicador_111: buscasController.segundoIndicador_111Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_111,
                                        $a_nomeDoEventoOuLugar: buscasController.$a_nomeDoEventoOuLugarController = TextEditingController()..text = buscasController.lstLivros[index].$a_nomeDoEventoOuLugar_111, 
                                        etiqueta_245: buscasController.etiqueta_245Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_245,
                                        primeiroIndicador_245: buscasController.primeiroIndicador_245Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_245,
                                        segundoIndicador_245: buscasController.segundoIndicador_245Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_245,
                                        $a_tituloPrincipal: buscasController.$a_tituloPrincipalController = TextEditingController()..text = buscasController.lstLivros[index].$a_tituloPrincipal,
                                        $b_subtitulo: buscasController.$b_subtituloController = TextEditingController()..text = buscasController.lstLivros[index].$b_subtitulo,
                                        $c_indicacaoDeResponsabilidade: buscasController.$c_indicacaoDeResponsabilidadeController = TextEditingController()..text = buscasController.lstLivros[index].$c_indicacaoDeResponsabilidade,
                                        etiqueta_260: buscasController.etiqueta_260Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_260,
                                        primeiroIndicador_260: buscasController.primeiroIndicador_260Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_260,
                                        segundoIndicador_260: buscasController.segundoIndicador_260Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_260,
                                        $a_lugarDePublicacao: buscasController.$a_lugarDePublicacaoController = TextEditingController()..text = buscasController.lstLivros[index].$a_lugarDePublicacao,
                                        $b_nomeDoEditor: buscasController.$b_nomeDoEditorController = TextEditingController()..text = buscasController.lstLivros[index].$b_nomeDoEditor,
                                        $c_dataDePublicacao: buscasController.$c_dataDePublicacaoController = TextEditingController()..text = buscasController.lstLivros[index].$c_dataDePublicacao,
                                        etiqueta_300: buscasController.etiqueta_300Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_300,
                                        primeiroIndicador_300: buscasController.primeiroIndicador_300Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_300,
                                        segundoIndicador_300: buscasController.segundoIndicador_300Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_300,
                                        $a_extensao: buscasController.$a_extensaoController = TextEditingController()..text = buscasController.lstLivros[index].$a_extensao,
                                        $c_dimensoes: buscasController.$c_dimensoesController = TextEditingController()..text = buscasController.lstLivros[index].$c_dimensoes,
                                        etiqueta_856: buscasController.etiqueta_856Controller = TextEditingController()..text = buscasController.lstLivros[index].etiqueta_856,
                                        primeiroIndicador_856: buscasController.primeiroIndicador_856Controller = TextEditingController()..text = buscasController.lstLivros[index].primeiroIndicador_856,
                                        segundoIndicador_856: buscasController.segundoIndicador_856Controller = TextEditingController()..text = buscasController.lstLivros[index].segundoIndicador_856,
                                        $a_nomeDoServidor: buscasController.$a_nomeDoServidorController = TextEditingController()..text = buscasController.lstLivros[index].$a_nomeDoServidor,
                                        $u_URI: buscasController.$u_identificadorUniformeDeRecursoURIController = TextEditingController()..text = buscasController.lstLivros[index].$u_identificadorUniformeDeRecursoURI,
                                        onPressedAtualizar: () async {
                                          await context.read<BuscasController>().updateLivro(
                                            livroSituacao: buscasController.lstLivros[index].livroSituacao,
                                            livrosDataID: buscasController.lstLivros[index].livrosDataID,
                                            isbn_020_DataID: buscasController.lstLivros[index].isbn_020_DataID,
                                            fonteDeCatalogacao_040_DataID: buscasController.lstLivros[index].fonteDeCatalogacao_040_DataID,
                                            numeroDeClassificacaoDecimalUniversal_080_DataID: buscasController.lstLivros[index].numeroDeClassificacaoDecimalUniversal_080_DataID,
                                            nomePessoal_100_DataID: buscasController.lstLivros[index].nomePessoal_100_DataID,
                                            evento_111_DataID: buscasController.lstLivros[index].evento_111_DataID,
                                            tituloPrincipal_245_DataID: buscasController.lstLivros[index].tituloPrincipal_245_DataID,
                                            imprenta_260_DataID: buscasController.lstLivros[index].imprenta_260_DataID,
                                            descricaoFisica_300_DataID: buscasController.lstLivros[index].descricaoFisica_300_DataID,
                                            localizacaoEAcessoEletronico_856_DataID: buscasController.lstLivros[index].localizacaoEAcessoEletronico_856_DataID,
                                          ).then((response) {
                                            if(response.codigoRetorno == "200"){
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao atualizar o livro!', largura: size.width * 0.37, altura: size.height * 0.45)
                                              );
                                            }
                                          });
                                          if (mounted) {
                                            Navigator.pop(context);
                                            context.read<BuscasController>().limparListaLivros();
                                            await context.read<BuscasController>().getLivroPorNome(nome: buscasController.pesquisarController.text.trim());
                                          }
                                        },
                                      ),
                                      // TAB CÓDIGO MARC21
                                      TabCodigoMarcWidget(
                                        lider_000:'${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_000)} ${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tamanhoDoRegistro_00_04, 5)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].statusDoRegistro_05, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tipoDeRegistro_06, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].nivelBibliografico_07, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tipodeControle_08, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].esquemaDeCodificacaoDeCaractere_09, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].numeroDeIndicadores_10, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].numeroDeSubcampos_11, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].enderecoDeDados_12_16, 5)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].nivelDeCodificacao_17, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].formaDeCatalogacaoDescritiva_18, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].nivelDeRegistroDeRecurso_19, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tamanhoDaPosicaoDoCaractereDeInicio_21, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tamanhoDaParteDefinidaParaImplementacao_22, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].entradaNaoDefinida_23, 1)}',
                                        camposDeControle_00x: '${clUtil.getSubCampoDeControle('001', buscasController.lstLivros[index].numeroDeControle_001)} ${clUtil.getSubCampoDeControle('\n003', buscasController.lstLivros[index].codigoAgenciaCatalogadora_003)} ${clUtil.getSubCampoDeControle('\n005', buscasController.lstLivros[index].dataEHoraUltimaAtualizacao_005)}',
                                        todosOsMateriais_008: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_008)} ${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].dataDeEntradaDoRegistroNoArquivo_00_05, 6)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].tipodeDataOuStatusDePublicacao_06, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].data1_07_10, 4)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].data2_11_14, 4)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].lugarDePublicacaoProducaoExecucao_15_17, 3)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].ilustracoes_18_21, 4)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].publicoAlvo_22, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].formaDoDocumento_23, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].naturezaDoConteudo_24_27, 4)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].publicacaoGovernamental_28, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].publicacaoDeConferencia_29, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].obraComemorativa_30, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].indice_31, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].indefinido_32, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].formaLiteraria_33, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].biografia_34, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].idiomaDoTextoDoDocumento_35_37, 3)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].registroModificado_38, 1)}${clUtil.getCampoUnicoDados(buscasController.lstLivros[index].fonteDeCatalogacao_39, 1)}',
                                        isbn_020: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_020)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_020, buscasController.lstLivros[index].segundoIndicador_020)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_numeroISBN)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_modalidadesDeAquisicao)} ${clUtil.getSubCampoDados('q', buscasController.lstLivros[index].$q_informacaoQualificadora)} ${clUtil.getSubCampoDados('z', buscasController.lstLivros[index].$z_isbnCanceladoOuInvalido)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_020)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_020)}', 
                                        fonteDeCatalogacao_040: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_040)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_040, buscasController.lstLivros[index].segundoIndicador_040)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_codigoDaAgenciaCatalogadora)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_idiomaCatalogacao)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_agenciaQueTranscreveuORegistro)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_agenciaQueAlterouORegistro)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_fontesConvencionaisDedescricaoDeDados)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_040)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_040)}', 
                                        codigoDoIdioma_041: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_041)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_041, buscasController.lstLivros[index].segundoIndicador_041)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_codigoDoIdiomaDoTexto)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_codigoDoIdiomaDoResumo)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_codigoDoIdiomaDaMusica)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_codigoDoIdiomaDoLibreto)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_codigoDoIdiomaDoSumario)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_codigoDoIdiomaDoMaterialAdicional)} ${clUtil.getSubCampoDados('h', buscasController.lstLivros[index].$h_codigoDoIdiomaDoDocumentoOriginal)} ${clUtil.getSubCampoDados('j', buscasController.lstLivros[index].$j_codigoDoIdiomaDoSubtituloOuLegenda)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_codigoDoIdiomaDaTraducaoIntermediaria)} ${clUtil.getSubCampoDados('m', buscasController.lstLivros[index].$m_codigoDoIdiomaOriginalDoMaterialAdicional)} ${clUtil.getSubCampoDados('n', buscasController.lstLivros[index].$n_codigoDoIdiomaOriginalDoLibreto)} ${clUtil.getSubCampoDados('2', buscasController.lstLivros[index].$2_fonteDoCodigo_041)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_041)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_041)}',
                                        codigoDaAreaGeografica_043: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_043)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_043, buscasController.lstLivros[index].segundoIndicador_043)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_codigoAreaGeografica)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_codigoAreaGeograficaLocal)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_codigoISO)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridade_043)} ${clUtil.getSubCampoDados('2', buscasController.lstLivros[index].$2_fonteDoCodigo_043)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_043)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_043)}',
                                        numeroDeClassificacaoDecimalUniversal_080: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_080)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_080, buscasController.lstLivros[index].segundoIndicador_080)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_numeroDeClassificacaoDecimalUniversal)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_numeroDoItem)} ${clUtil.getSubCampoDados('x', buscasController.lstLivros[index].$x_subdivisaoAuxiliarComum)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridades)} ${clUtil.getSubCampoDados('2', buscasController.lstLivros[index].$2_numeroDeEdicao)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_080)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_080)}', 
                                        numeroDeChamadaLocal_090: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_090)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_090, buscasController.lstLivros[index].segundoIndicador_090)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_classificacao)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_numeroDeCutter)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_anoDePublicacao)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_tipoDeObra)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_unidadeCatalogadora)}',
                                        nomePessoal_100: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_100)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_100, buscasController.lstLivros[index].segundoIndicador_100)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_nomePessoal_100)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_algarismosRomanosQueSeguemPrenome)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_titulosEOutrasPalavrasAssociadasAoNome_100)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_datasAssociadasAoNome_100)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_termoDeRelacao_100)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_dataDaPublicacaoDoTrabalho_100)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_informacoesAdicionais_100)} ${clUtil.getSubCampoDados('j', buscasController.lstLivros[index].$j_atributoQualificador)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_subcabecalho)} ${clUtil.getSubCampoDados('l', buscasController.lstLivros[index].$l_idiomaDaPublicacao_100)} ${clUtil.getSubCampoDados('n', buscasController.lstLivros[index].$n_numeroDaSecaoDaPublicacao_100)} ${clUtil.getSubCampoDados('p', buscasController.lstLivros[index].$p_nomeDaSecaoDaPublicacao_100)} ${clUtil.getSubCampoDados('q', buscasController.lstLivros[index].$q_formaCompletaDoNome_100)} ${clUtil.getSubCampoDados('t', buscasController.lstLivros[index].$t_tituloDaPublicacao_100)} ${clUtil.getSubCampoDados('u', buscasController.lstLivros[index].$u_afiliacao_100)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridade_100)} ${clUtil.getSubCampoDados('4', buscasController.lstLivros[index].$4_relacao_100)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_100)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_100)}', 
                                        evento_111: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_111)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_111, buscasController.lstLivros[index].segundoIndicador_111)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_nomeDoEventoOuLugar_111)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_localDeRealizacaoDoEvento_111)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_dataRealizacaoDoEvento_111)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_unidadesSubordinadas_111)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_dataDaPublicacaoDoTrabalho_111)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_informacoesAdicionais_111)} ${clUtil.getSubCampoDados('j', buscasController.lstLivros[index].$j_termoDeRelacao_111)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_subcabecalho_111)} ${clUtil.getSubCampoDados('l', buscasController.lstLivros[index].$l_idiomaDaPublicacao_111)} ${clUtil.getSubCampoDados('m', buscasController.lstLivros[index].$n_numeroDaSecaoDoEvento_111)} ${clUtil.getSubCampoDados('p', buscasController.lstLivros[index].$p_nomeDaSecaoDaPublicacao_111)} ${clUtil.getSubCampoDados('q', buscasController.lstLivros[index].$q_nomeDoEventoSequindoONomeDaJurisdicao_111)} ${clUtil.getSubCampoDados('t', buscasController.lstLivros[index].$t_tituloDaPublicacao_111)} ${clUtil.getSubCampoDados('u', buscasController.lstLivros[index].$u_afiliacao_111)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridade_111)} ${clUtil.getSubCampoDados('4', buscasController.lstLivros[index].$4_relacao_111)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_111)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_111)}',
                                        tituloOriginal_240: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_240)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_240, buscasController.lstLivros[index].segundoIndicador_240)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_tituloUniforme)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_dataDaAssinaturaTratado)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_dataDaPublicacaoDoTrabalho_240)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_informacoesAdicionais_240)} ${clUtil.getSubCampoDados('h', buscasController.lstLivros[index].$h_meioDGM_240)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_subcabecalho_240)} ${clUtil.getSubCampoDados('l', buscasController.lstLivros[index].$l_idiomaDaPublicacao_240)} ${clUtil.getSubCampoDados('m', buscasController.lstLivros[index].$m_meioDeExecucaoParaMusica)} ${clUtil.getSubCampoDados('n', buscasController.lstLivros[index].$n_numeroDaSecaoDaPublicacao_240)} ${clUtil.getSubCampoDados('o', buscasController.lstLivros[index].$o_arranjoMusical_240)} ${clUtil.getSubCampoDados('p', buscasController.lstLivros[index].$p_nomeDaSecaoDaPublicacao_240)} ${clUtil.getSubCampoDados('r', buscasController.lstLivros[index].$r_escalaMusical_240)} ${clUtil.getSubCampoDados('s', buscasController.lstLivros[index].$s_versao_240)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridade_240)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_240)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_240)}',
                                        tituloPrincipal_245: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_245)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_245, buscasController.lstLivros[index].segundoIndicador_245)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_tituloPrincipal)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_subtitulo)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_indicacaoDeResponsabilidade)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_datasDeAbrangencia)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_conjuntoDeDatas)} ${clUtil.getSubCampoDados('h', buscasController.lstLivros[index].$h_meioDGM_245)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_formaDoMaterial)} ${clUtil.getSubCampoDados('n', buscasController.lstLivros[index].$n_numeroDaSecaoDaPublicacao_245)} ${clUtil.getSubCampoDados('p', buscasController.lstLivros[index].$p_nomeDaSecaoDaPublicacao_245)} ${clUtil.getSubCampoDados('s', buscasController.lstLivros[index].$s_versao_245)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_245)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_245)}', 
                                        edicao_250: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_250)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_250, buscasController.lstLivros[index].segundoIndicador_250)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_edicao)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_outrasInformacoesSobreEdicao)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_250)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_250)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumerosDeSequencia_250)}',
                                        imprenta_260: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_260)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_260, buscasController.lstLivros[index].segundoIndicador_260)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_lugarDePublicacao)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_nomeDoEditor)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_dataDePublicacao)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_lugarDeFabricacao)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_nomeDoFabricante)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_dataDeFabricacao)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_260)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_260)}',
                                        descricaoFisica_300: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_300)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_300, buscasController.lstLivros[index].segundoIndicador_300)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_extensao)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_detalhesFisicosAdicionais)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_dimensoes)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_materialAdicional)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_tipoDeUnidade)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_tamanhoDaUnidade)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_300)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_300)}',
                                        indicacaoDeSerie_490: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_490)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_490, buscasController.lstLivros[index].segundoIndicador_490)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_tituloDaSerie)} ${clUtil.getSubCampoDados('l', buscasController.lstLivros[index].$l_numeroDeChamadaDaLC)} ${clUtil.getSubCampoDados('v', buscasController.lstLivros[index].$v_numeroDoVolumeOuDesignacaoSequencialDaSerie)} ${clUtil.getSubCampoDados('x', buscasController.lstLivros[index].$x_ISSN_490)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_490)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_490)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_490)}',
                                        notaGeral_500: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_500)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_500, buscasController.lstLivros[index].segundoIndicador_500)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_notaGeral)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_500)} ${clUtil.getSubCampoDados('5', buscasController.lstLivros[index].$5_codigoDaInstituicao_500)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_500)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_500)}',
                                        notaGeral_500_DataID: buscasController.lstLivros[index].notaGeral_500_DataID.toString(),
                                        notaDeBibliografia_504: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_504)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_504, buscasController.lstLivros[index].segundoIndicador_504)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_notaDeBibliografia)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_numeroDeReferencias)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_504)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_504)}',
                                        notaDeConteudo_505: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_505)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_505, buscasController.lstLivros[index].segundoIndicador_505)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_notaDeConteudo)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_informacoesAdicionais)} ${clUtil.getSubCampoDados('r', buscasController.lstLivros[index].$r_indicacaoDeResposabilidade)} ${clUtil.getSubCampoDados('t', buscasController.lstLivros[index].$t_titulo)} ${clUtil.getSubCampoDados('u', buscasController.lstLivros[index].$u_URI)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_505)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_505)}',
                                        notaDeResumo_520: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_520)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_520, buscasController.lstLivros[index].segundoIndicador_520)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_notaDeResumo)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_expansaoDaNotaDeResumo)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_agenciaDepositaria)} ${clUtil.getSubCampoDados('u', buscasController.lstLivros[index].$u_URI_520)} ${clUtil.getSubCampoDados('2', buscasController.lstLivros[index].$2_fonte_520)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_520)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_520)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_520)}',
                                        topico_650: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_650)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_650, buscasController.lstLivros[index].segundoIndicador_650)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_cabecalhoTopicoOuNomeGeografico)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_cabecalhoTopicoSeguindoNomeGeografico)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_localDoEvento)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_dataDeRealizacaoDoEvento)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_termoDeRelacao_650)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_informacoesAdicionais_650)} ${clUtil.getSubCampoDados('v', buscasController.lstLivros[index].$v_subdivisaoDeForma)} ${clUtil.getSubCampoDados('x', buscasController.lstLivros[index].$x_subdivisaoGeral)} ${clUtil.getSubCampoDados('y', buscasController.lstLivros[index].$y_subdivisaoCronologica)} ${clUtil.getSubCampoDados('z', buscasController.lstLivros[index].$z_subdivisaoGeografica)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridade_650)} ${clUtil.getSubCampoDados('2', buscasController.lstLivros[index].$2_fonteDoCabecalhoOuTermo)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_650)} ${clUtil.getSubCampoDados('4', buscasController.lstLivros[index].$4_relacao_650)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_650)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_650)}',
                                        topico_650_DataID: buscasController.lstLivros[index].topico_650_DataID.toString(),
                                        nomePessoalSecundario_700: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_700)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_700, buscasController.lstLivros[index].segundoIndicador_700)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_nomePessoal_700)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_algarismosRomanosQueSeguemOPrenome)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_titulosEOutrasPalavrasAssociadasAoNome_700)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_datasAssociadasAoNome_700)} ${clUtil.getSubCampoDados('e', buscasController.lstLivros[index].$e_termoDeRelacao_700)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_dataDaPublicacaoDoTrabalho_700)} ${clUtil.getSubCampoDados('g', buscasController.lstLivros[index].$g_informacoesAdicionais_700)} ${clUtil.getSubCampoDados('h', buscasController.lstLivros[index].$h_meioDGM)} ${clUtil.getSubCampoDados('i', buscasController.lstLivros[index].$i_informacoesSobreRelacoes)} ${clUtil.getSubCampoDados('j', buscasController.lstLivros[index].$j_atributo)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_subcabecalhos)}  ${clUtil.getSubCampoDados('l', buscasController.lstLivros[index].$l_idiomaDaPublicacao_700)} ${clUtil.getSubCampoDados('m', buscasController.lstLivros[index].$m_instrumentosMusicais)} ${clUtil.getSubCampoDados('n', buscasController.lstLivros[index].$n_numeroDaSecaoDaPublicacao_700)} ${clUtil.getSubCampoDados('o', buscasController.lstLivros[index].$o_arranjoMusical_700)} ${clUtil.getSubCampoDados('p', buscasController.lstLivros[index].$p_nomeDaSecaoDaPublicacao_700)} ${clUtil.getSubCampoDados('q', buscasController.lstLivros[index].$q_formaCompletaDoNome_700)} ${clUtil.getSubCampoDados('r', buscasController.lstLivros[index].$r_escalaMusical_700)} ${clUtil.getSubCampoDados('s', buscasController.lstLivros[index].$s_versao_700)} ${clUtil.getSubCampoDados('t', buscasController.lstLivros[index].$t_tituloDaPublicacao_700)} ${clUtil.getSubCampoDados('u', buscasController.lstLivros[index].$u_afiliacao_700)} ${clUtil.getSubCampoDados('x', buscasController.lstLivros[index].$x_ISSN)} ${clUtil.getSubCampoDados('0', buscasController.lstLivros[index].$0_numeroDeControleDoRegistroDeAutoridade_700)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_700)} ${clUtil.getSubCampoDados('4', buscasController.lstLivros[index].$4_relacao_700)} ${clUtil.getSubCampoDados('5', buscasController.lstLivros[index].$5_codigoDaInstituicao_700)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_700)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_700)}',
                                        localizacaoEAcessoEletronico_856: '${clUtil.getEtiqueta(buscasController.lstLivros[index].etiqueta_856)} ${clUtil.getIndicadores(buscasController.lstLivros[index].primeiroIndicador_856, buscasController.lstLivros[index].segundoIndicador_856)} ${clUtil.getSubCampoDados('a', buscasController.lstLivros[index].$a_nomeDoServidor)} ${clUtil.getSubCampoDados('b', buscasController.lstLivros[index].$b_numeroDoAcesso)} ${clUtil.getSubCampoDados('c', buscasController.lstLivros[index].$c_informacoesSobreCompactacao)} ${clUtil.getSubCampoDados('d', buscasController.lstLivros[index].$d_caminho)} ${clUtil.getSubCampoDados('f', buscasController.lstLivros[index].$f_nomeDoArquivoEletronico)} ${clUtil.getSubCampoDados('h', buscasController.lstLivros[index].$h_username)} ${clUtil.getSubCampoDados('i', buscasController.lstLivros[index].$i_instrucao)} ${clUtil.getSubCampoDados('j', buscasController.lstLivros[index].$j_bitsPorSegundo)} ${clUtil.getSubCampoDados('k', buscasController.lstLivros[index].$k_password)} ${clUtil.getSubCampoDados('l', buscasController.lstLivros[index].$l_login)} ${clUtil.getSubCampoDados('m', buscasController.lstLivros[index].$m_contatoParaObterAjuda)} ${clUtil.getSubCampoDados('n', buscasController.lstLivros[index].$n_nomeDaLocalizacaoDoServidor)} ${clUtil.getSubCampoDados('o', buscasController.lstLivros[index].$o_sistemaOperativo)} ${clUtil.getSubCampoDados('p', buscasController.lstLivros[index].$p_porta)} ${clUtil.getSubCampoDados('q', buscasController.lstLivros[index].$q_tipoDoFormatoEletronico)} ${clUtil.getSubCampoDados('r', buscasController.lstLivros[index].$r_configuracao)} ${clUtil.getSubCampoDados('s', buscasController.lstLivros[index].$s_tamanhoDoArquivo)} ${clUtil.getSubCampoDados('t', buscasController.lstLivros[index].$t_emulacaoDeTerminal)} ${clUtil.getSubCampoDados('u', buscasController.lstLivros[index].$u_identificadorUniformeDeRecursoURI)} ${clUtil.getSubCampoDados('v', buscasController.lstLivros[index].$v_horarioDeAcesso)} ${clUtil.getSubCampoDados('w', buscasController.lstLivros[index].$w_numeroDeControleDeUmRegistro)} ${clUtil.getSubCampoDados('x', buscasController.lstLivros[index].$x_notaInterna)} ${clUtil.getSubCampoDados('y', buscasController.lstLivros[index].$y_textoDoLink)} ${clUtil.getSubCampoDados('z', buscasController.lstLivros[index].$z_notaDoPublico)} ${clUtil.getSubCampoDados('2', buscasController.lstLivros[index].$2_metodoDeAcesso)} ${clUtil.getSubCampoDados('3', buscasController.lstLivros[index].$3_materialEspecificado_856)} ${clUtil.getSubCampoDados('6', buscasController.lstLivros[index].$6_ligacao_856)} ${clUtil.getSubCampoDados('8', buscasController.lstLivros[index].$8_campoDeLigacaoENumeroDeSequencia_856)}',
                                        referencia: ReferenciaWidget(
                                          autor: buscasController.lstLivros[index].$a_nomePessoal_100, 
                                          titulo: buscasController.lstLivros[index].$a_tituloPrincipal, 
                                          subtitulo: buscasController.lstLivros[index].$b_subtitulo, 
                                          edicao: buscasController.lstLivros[index].$a_edicao, 
                                          local: '${buscasController.lstLivros[index].$a_lugarDePublicacao} ${buscasController.lstLivros[index].$b_nomeDoEditor}', 
                                          dataPublicacao: buscasController.lstLivros[index].$c_dataDePublicacao,
                                          extensao: buscasController.lstLivros[index].$a_extensao,
                                          dimensao: buscasController.lstLivros[index].$c_dimensoes,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                      onPressedCopiar: () async {
                      await context.read<BuscasController>().copiarLivro( 
                        livroID: buscasController.lstLivros[index].livrosDataID.toString(), 
                        acervoDataID: buscasController.lstLivros[index].acervoDataID.toString(),
                        exemplarDataID: buscasController.lstLivros[index].exemplarDataID.toString(),
                        liderID: buscasController.lstLivros[index].liderID.toString(),
                        camposDeControle_00X_DataID: buscasController.lstLivros[index].camposDeControle_00X_DataID.toString(),
                        livro_006_DataID: buscasController.lstLivros[index].livro_006_DataID.toString(), 
                        todosOsMateriais_008_DataID: buscasController.lstLivros[index].todosOsMateriais_008_DataID.toString(),
                        livros_008_DataID: buscasController.lstLivros[index].livros_008_DataID.toString(),
                        isbn_020_DataID: buscasController.lstLivros[index].isbn_020_DataID.toString(),
                        fonteDeCatalogacao_040_DataID: buscasController.lstLivros[index].fonteDeCatalogacao_040_DataID.toString(),
                        codigoDoIdioma_041_DataID: buscasController.lstLivros[index].codigoDoIdioma_041_DataID.toString(),
                        codigoDaAreaGeografica_043_DataID: buscasController.lstLivros[index].codigoDaAreaGeografica_043_DataID.toString(),
                        numeroDeClassificacaoDecimalUniversal_080_DataID: buscasController.lstLivros[index].numeroDeClassificacaoDecimalUniversal_080_DataID.toString(),
                        numeroDeClassificacaoDeDewey_082_DataID: buscasController.lstLivros[index].numeroDeClassificacaoDeDewey_082_DataID.toString(),
                        nomePessoal_100_DataID: buscasController.lstLivros[index].nomePessoal_100_DataID.toString(),
                        tituloPrincipal_245_DataID: buscasController.lstLivros[index]. tituloPrincipal_245_DataID.toString(),
                        formasVariadasDoTitulo_246_DataID: buscasController.lstLivros[index].formasVariadasDoTitulo_246_DataID.toString(),
                        edicao_250_DataID: buscasController.lstLivros[index].edicao_250_DataID.toString(),
                        imprenta_260_DataID: buscasController.lstLivros[index].imprenta_260_DataID.toString(),
                        descricaoFisica_300_DataID: buscasController.lstLivros[index]. descricaoFisica_300_DataID.toString(),
                        indicacaoDeSeries_490_DataID: buscasController.lstLivros[index].indicacaoDeSeries_490_DataID.toString(),
                        notaGeral_500_DataID: buscasController.lstLivros[index].notaGeral_500_DataID.toString(),
                        notaDeBibliografia_504_DataID: buscasController.lstLivros[index].notaDeBibliografia_504_DataID.toString(),
                        notaDeConteudo_505_DataID: buscasController.lstLivros[index].notaDeConteudo_505_DataID.toString(),
                        nomePessoal_600_DataID: buscasController.lstLivros[index].nomePessoal_600_DataID.toString(), 
                        topico_650_DataID: buscasController.lstLivros[index].topico_650_DataID.toString(),
                        nomePessoal_700_DataID: buscasController.lstLivros[index].nomePessoal_700_DataID.toString(),
                        entradaDeIdiomaOriginal_765_DataID: buscasController.lstLivros[index].entradaDeIdiomaOriginal_765_DataID.toString(),
                        exemplarNumero: "1",
                        tituloUniforme_240_DataID: buscasController.lstLivros[index].tituloUniforme_240_DataID.toString(),
                        localizacaoEAcessoEletronico_856_DataID: buscasController.lstLivros[index].localizacaoEAcessoEletronico_856_DataID.toString(),
                        numeroDeChamadaLocal_090_DataID: buscasController.lstLivros[index].numeroDeChamadaLocal_090_DataID.toString(),
                        notaDeResumo_520_dataID: buscasController.lstLivros[index].notaDeResumo_520_DataID.toString(),
                        evento_111_DataID: buscasController.lstLivros[index].evento_111_DataID.toString(),
                      ).then((response) {
                          if(response.codigoRetorno.toString() == "200"){
                            ScaffoldMessenger.of(buscasController.scaffoldKey.currentContext!).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                        } else {
                          ScaffoldMessenger.of(buscasController.scaffoldKey.currentContext!).showSnackBar(
                            SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao copiar registro!', largura: size.width * 0.37, altura: size.height * 0.45)
                          );
                        }
                      });
                    },
                      onPressedEmprestar: () {
                        if (buscasController.lstLivros[index].livroSituacao == 'Fixo') {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Opps!', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  content: Text('Este livro não pode ser emprestado ou reservado!\nApenas usado como consulta.', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  actions: [
                                    CustomElevatedButtonWidget(
                                      titulo: 'Ok',
                                      icone: Icons.check_circle_rounded,
                                      onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            });
                        } else {
                        showDialog(context: context, barrierDismissible: false, builder: (context) {
                        return Dialog(
                          child: DefaultTabController(
                            length: 2,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.85,
                              child: Scaffold(
                                appBar: AppBar(
                                  title: Text('Empréstimo e Reserva',style: ClassAppEstilosTexto.branco28w400Montserrat),
                                  centerTitle: true,
                                  toolbarHeight: 90.0,
                                  automaticallyImplyLeading: false,
                                   bottom: TabBar(
                                      indicatorColor: ClassAppColors.branco,
                                      labelStyle: ClassAppEstilosTexto.branco16w400Montserrat,
                                      tabs:  <Widget>[
                                        Tab(
                                          text: 'Emprestar registro ${buscasController.lstLivros[index].$a_nomePessoal_100}',
                                        ),
                                        const Tab(
                                          text: 'Reservar registro',
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      IconButton(padding: const EdgeInsets.only(right: 16.0), onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close_rounded))
                                    ],
                                ),
                                body: TabBarView(
                                  children: [
                                      EmprestimoPage(
                                        buscasController: buscasController,
                                        emprestimoController: emprestimoController,
                                        index: index,
                                      ),
                                      ReservasPage(
                                        emailController: emailController,
                                        buscasController: buscasController, 
                                        reservasController: reservasController,
                                        index: index, 
                                       ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                        });
                      }},
                    );
                  },
                ),
                // LISTA DE AUTORIDADES
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: buscasController.lstAutoridades.length,
                  itemBuilder: (context, index) {
                    return AutoridadeCardWidget(
                      fonteDeCatalogacao: buscasController.lstAutoridades[index].$a_agenciaDeCatalogacaoOriginal,
                      nomePessoal: buscasController.lstAutoridades[index].$a_nomePessoal_100,
                      nomePessoalRemissivaVer: buscasController.lstAutoridades[index].$a_nomePessoal_400,
                      notasGeraisNaoDisponiveis: buscasController.lstAutoridades[index].$a_notaGeralNaoPublica,
                      dadosDeFontesEncontrados: buscasController.lstAutoridades[index].$a_citacaoDeFonte,
                      uri: buscasController.lstAutoridades[index].$u_URI,
                      tabBarDetalhesAutoridade: TabDetalhesAutoridadeWidget(
                        etiqueta_040: buscasController.etiqueta_040AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].etiqueta_040, 
                        primeiroIndicador_040: buscasController.primeiroIndicador_040AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].primeiroIndicador_040, 
                        segundoIndicador_040: buscasController.segundoIndicador_040AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].segundoIndicador_040, 
                        $a_agenciaDeCatalogacaoOriginal: buscasController.$a_agenciaDeCatalogacaoOriginalAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$a_agenciaDeCatalogacaoOriginal, 
                        $b_idiomaDaCatalogacao: buscasController.$b_idiomaDaCatalogacaoAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$b_idiomaDaCatalogacao, 
                        $c_agenciaDeTranscricao: buscasController.$c_agenciaDeTranscricaoAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$c_agenciaDeTranscricao, 
                        $d_agenciaModificadora: buscasController.$d_agenciaModificadoraAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$d_agenciaModificadora, 
                        etiqueta_100: buscasController.etiqueta_100AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].etiqueta_100, 
                        primeiroIndicador_100: buscasController.primeiroIndicador_100AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].primeiroIndicador_100, 
                        segundoIndicador_100: buscasController.segundoIndicador_100AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].segundoIndicador_100, 
                        $a_nomePessoal_100: buscasController.$a_nomePessoal_100AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$a_nomePessoal_100, 
                        $d_datasAssociadasAoNome_100: buscasController.$d_datasAssociadasAoNome_100AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$d_datasAssociadasAoNome_100, 
                        etiqueta_400: buscasController.etiqueta_400AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].etiqueta_400, 
                        primeiroIndicador_400: buscasController.primeiroIndicador_400AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].primeiroIndicador_400, 
                        segundoIndicador_400: buscasController.segundoIndicador_400AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].segundoIndicador_400, 
                        $a_nomePessoal_400: buscasController.$a_nomePessoal_400AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$a_nomePessoal_400, 
                        $d_datasAssociadasAoNome_400: buscasController.$d_datasAssociadasAoNome_400AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$d_datasAssociadasAoNome_400, 
                        etiqueta_667: buscasController.etiqueta_667AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].etiqueta_667, 
                        primeiroIndicador_667: buscasController.primeiroIndicador_667AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].primeiroIndicador_667, 
                        segundoIndicador_667: buscasController.segundoIndicador_667AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].segundoIndicador_667, 
                        $a_notaGeralNaoPublica: buscasController.$a_notaGeralNaoPublicaAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$a_notaGeralNaoPublica, 
                        etiqueta_670: buscasController.etiqueta_670AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].etiqueta_670, 
                        primeiroIndicador_670: buscasController.primeiroIndicador_670AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].primeiroIndicador_670, 
                        segundoIndicador_670: buscasController.segundoIndicador_670AutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].segundoIndicador_670, 
                        $a_citacaoDeFonte: buscasController.$a_citacaoDeFonteAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$a_citacaoDeFonte, 
                        $u_URI: buscasController.$u_URIAutoridadeController = TextEditingController()..text = buscasController.lstAutoridades[index].$u_URI,
                        onPressedAtualizar: () async {
                        await context.read<BuscasController>().updateAutoridade(
                          fonteCatalogadora_040_DataID: buscasController.lstAutoridades[index].autoridadesDataID,
                          nomePessoal_100_DataID: buscasController.lstAutoridades[index].nomePessoalAutoridade_1XX_3XX_DataID,
                          nomePessoal_400_DataID: buscasController.lstAutoridades[index].nomePessoalAutoridade_4XX_DataID,
                          notaGeralNaoPublica_667_DataID: buscasController.lstAutoridades[index].notaGeralNaoPublicaAutoridade_667_68X_DataID,
                          dadosDeFontesEncontrados_670_DataID: buscasController.lstAutoridades[index].dadosDeFontesEncontradosAutoridade_667_68X_DataID
                        ).then((response) {
                          if(response.codigoRetorno.toString() == "200"){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao atualizar autoridade!', largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                          }
                        });
                        if (mounted) {
                          Navigator.pop(context);
                          context.read<BuscasController>().limparListaAutoridades();
                          await context.read<BuscasController>().getAutoridades(nomeAutoridade: buscasController.pesquisarController.text.trim());
                        }
                      },
                      ),
                      tabMarcAutoridade: TabCodigoMarcAutoridadeWidget(
                        lider_000: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_000)} ${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].tamanhoLogicoDoRegistro_00_04, 5)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].statusDoRegistro_05, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].tipoDeRegistro_06, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].posicaoDeCaracteresIndefinida_07_08, 2)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].esquemaDeCodificacaoDeCaracteres_09, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].numeroDeIndicadores_10, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].contagemDeCodigosDeSubcampos_11, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].enderecoDeDadosNaBase_12_16, 5)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].nivelDeCatalogacao_17, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].politicaDePontuacao_18, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].indefinido_19, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].comprimentoDaParteDeComprimentoDeCampo_20, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].comprimentoDaParteDaPosicaoDoCaractereInicial_21, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].comprimentoDaParteDefinidaPelaImplementacao_22, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].indefinido_23, 1)}', 
                        camposDeControle_00x: '${clUtil.getSubCampoDeControle('001', buscasController.lstAutoridades[index].numeroDeControle_001)} ${clUtil.getSubCampoDeControle('\n003', buscasController.lstAutoridades[index].identificadorDoNumeroDeControle_003)} ${clUtil.getSubCampoDeControle('\n005', buscasController.lstAutoridades[index].dataEHoraDaUltimaAtualizacao_005)}', 
                        todosOsMateriais_008: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_008)} ${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].dataInseridaNoArquivo_00_05, 6)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].subdivisaoGeograficaDiretaOuIndireta_06, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].esquemaDeLatinizacao_07, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].idiomaDoCatalogo_08, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].tipoDeRegistro_09, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].regrasDescritivasDeCatalogacao_10, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].sistemaDeCabecalhoDeAssunto_11, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].tipoDeSerie_12, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].serieNumeradaOuNaoNumerada_13, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].cabecalhoAplicadoEntradaPrincipalOuSecundaria_14, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].cabecalhoAplicadoEntradaDeAssunto_15, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].seriePrincipalESerieSecundaria_16 , 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].tipoDeSubdivisaoDeAssunto_17, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].posicoesDeCaracteresIndifinidas_18_27, 10)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].tipoDeAgenciaGovernamental_28, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].avaliacaoDeReferencias_29, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].posicaoDeCaractereIndefinido_30, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].processoDeAtualizacaoDoRegistro_31, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].nomePessoalNaoDiferenciado_32, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].nivelDeAutorizacao_33, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].posicoesDeCaracteresIndefinidas_34_37, 4)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].registroModificado_38, 1)}${clUtil.getCampoUnicoDados(buscasController.lstAutoridades[index].fonteDeCatalogacao_39, 1)}', 
                        fonteDeCatalogacao_040: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_040)} ${clUtil.getIndicadores(buscasController.lstAutoridades[index].primeiroIndicador_040, buscasController.lstAutoridades[index].segundoIndicador_040)} ${clUtil.getSubCampoDados('a', buscasController.lstAutoridades[index].$a_agenciaDeCatalogacaoOriginal)} ${clUtil.getSubCampoDados('b', buscasController.lstAutoridades[index].$b_idiomaDaCatalogacao)} ${clUtil.getSubCampoDados('c', buscasController.lstAutoridades[index].$c_agenciaDeTranscricao)} ${clUtil.getSubCampoDados('d', buscasController.lstAutoridades[index].$d_agenciaModificadora)}', 
                        nomePessoal_100: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_100)} ${clUtil.getIndicadores(buscasController.lstAutoridades[index].primeiroIndicador_100, buscasController.lstAutoridades[index].segundoIndicador_100)} ${clUtil.getSubCampoDados('a', buscasController.lstAutoridades[index].$a_nomePessoal_100)} ${clUtil.getSubCampoDados('d', buscasController.lstAutoridades[index].$d_datasAssociadasAoNome_100)}', 
                        nomePessoalRemissivaVer_400: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_400)} ${clUtil.getIndicadores(buscasController.lstAutoridades[index].primeiroIndicador_400, buscasController.lstAutoridades[index].segundoIndicador_400)} ${clUtil.getSubCampoDados('a', buscasController.lstAutoridades[index].$a_nomePessoal_400)} ${clUtil.getSubCampoDados('d', buscasController.lstAutoridades[index].$d_datasAssociadasAoNome_400)}', 
                        notaGeralNaoPublica_667: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_667)} ${clUtil.getIndicadores(buscasController.lstAutoridades[index].primeiroIndicador_667, buscasController.lstAutoridades[index].segundoIndicador_667)} ${clUtil.getSubCampoDados('a', buscasController.lstAutoridades[index].$a_notaGeralNaoPublica)}', 
                        dadosDeFontesEncontrados_670: '${clUtil.getEtiqueta(buscasController.lstAutoridades[index].etiqueta_670)} ${clUtil.getIndicadores(buscasController.lstAutoridades[index].primeiroIndicador_670, buscasController.lstAutoridades[index].segundoIndicador_670)} ${clUtil.getSubCampoDados('a', buscasController.lstAutoridades[index].$a_citacaoDeFonte)} ${clUtil.getSubCampoDados('u', buscasController.lstAutoridades[index].$u_URI)}',
                      ),
                      onTapAbrirLink: () async {
                        await context.read<BuscasController>().abrirUrl(Uri.parse(buscasController.lstAutoridades[index].$u_URI));
                      },
                      onPressedRemover: () {
                        CustomAlertWidget.showAlertConfirmarExcluir(context, titulo: 'Tem certeza que deseja excluir este arquivo?', 
                        content: 'Você está deletando a autoridade: ${buscasController.lstAutoridades[index].$a_nomePessoal_100}.',
                        btnSim: () async {
                          await context.read<BuscasController>().removerAutoridade(
                            autoridadeID: buscasController.lstAutoridades[index].autoridadesDataID.toString(),
                            autoridadeNome: buscasController.lstAutoridades[index].$a_nomePessoal_100,
                            liderAutoridadesDataID: buscasController.lstAutoridades[index].liderAutoridadesDataID.toString(),
                            camposDeControleAutoridades_00X_DataID: buscasController.lstAutoridades[index].camposDeControleAutoridades_00X_DataID.toString(),
                            camposFixosAutoridades_00X_DataID: buscasController.lstAutoridades[index].camposFixosAutoridades_00X_DataID.toString(),
                            fonteCatalogadoraAutoridade_01X_09X_DataID: buscasController.lstAutoridades[index].fonteCatalogadoraAutoridade_01X_09X_DataID.toString(),
                            nomePessoalAutoridade_1XX_3XX_DataID: buscasController.lstAutoridades[index].nomePessoalAutoridade_1XX_3XX_DataID.toString(),
                            nomePessoalAutoridade_4XX_DataID: buscasController.lstAutoridades[index].nomePessoalAutoridade_4XX_DataID.toString(),
                            notaGeralNaoPublicaAutoridade_667_68X_DataID: buscasController.lstAutoridades[index].notaGeralNaoPublicaAutoridade_667_68X_DataID.toString(),
                            dadosDeFontesEncontradosAutoridade_667_68X_DataID: buscasController.lstAutoridades[index].dadosDeFontesEncontradosAutoridade_667_68X_DataID.toString(),
                          ).then((response) {
                            if(response.codigoRetorno.toString() == "200"){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao remover autoridade!', largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                            }
                          });
                          if (mounted) {
                            Navigator.pop(context);
                            context.read<BuscasController>().limparListaAutoridades();
                            await context.read<BuscasController>().getAutoridades(nomeAutoridade: buscasController.pesquisarController.text.trim());
                            }
                          },
                        );
                      },
                    );
                  },
                ),
                // LISTA DE MONOGRAFIA, TESE E DISSERTACAO
                CustomListViewWidget(
                itemCount: buscasController.lstTeses.length,
                itemBuilder: (context, index) {
                  return MonografiaTeseDissertacaoCardWidget(
                    codAcervo: buscasController.lstTeses[index].acervoDataID.toString(),
                    exemplarNumero: buscasController.lstTeses[index].exemplarDataID.toString(),
                    nomePessoal: buscasController.lstTeses[index].$a_nomePessoal_100, 
                    tituloPrincipal: buscasController.lstTeses[index].$a_tituloPrincipal, 
                    lugarDePublicacao: buscasController.lstTeses[index].$a_lugarDePublicacao, 
                    notaGeral: buscasController.lstTeses[index].$a_notaGeral, 
                    notaDeDissertacaoOuTese: buscasController.lstTeses[index].$a_notaDeDissertacaoOuTese, 
                    nomePessoalSecundario: buscasController.lstTeses[index].$a_nomePessoal_700,
                    uri: buscasController.lstTeses[index].$u_identificadorUniformeDeRecursoURI,
                    onPressedAbrirLink: () => context.read<BuscasController>().abrirUrl(Uri.parse(buscasController.lstTeses[index].$u_identificadorUniformeDeRecursoURI)),
                    tabDetalhesMonografiaTeseDissertacao: TabDetalhesMonografiaTeseDissertacaoWidget(
                        etiqueta_100: buscasController.etiqueta_100TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_100,
                        primeiroIndicador_100: buscasController.primeiroIndicador_100TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_100,
                        segundoIndicador_100: buscasController.segundoIndicador_100TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_100,
                        $a_nomePessoal: buscasController.$a_nomePessoalTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_nomePessoal_100,
                        $c_titulosEOutrasPalavrasAssociadasAoNome: buscasController.$c_titulosEOutrasPalavrasAssociadasAoNomeTeseController = TextEditingController()..text = buscasController.lstTeses[index].$c_titulosEOutrasPalavrasAssociadasAoNome_100,
                        $d_datasAssociadasAoNome: buscasController.$d_datasAssociadasAoNomeTeseController = TextEditingController()..text = buscasController.lstTeses[index].$d_datasAssociadasAoNome_100,
                        etiqueta_245: buscasController.etiqueta_245TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_245,
                        primeiroIndicador_245: buscasController.primeiroIndicador_245TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_245,
                        segundoIndicador_245: buscasController.segundoIndicador_245TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_245,
                        $a_tituloPrincipal: buscasController.$a_tituloPrincipalTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_tituloPrincipal,
                        $b_subtitulo: buscasController.$b_subtituloTeseController = TextEditingController()..text = buscasController.lstTeses[index].$b_subtitulo,
                        $c_indicacaoDeResponsabilidade: buscasController.$c_indicacaoDeResponsabilidadeTeseController = TextEditingController()..text = buscasController.lstTeses[index].$c_indicacaoDeResponsabilidade,
                        etiqueta_260: buscasController.etiqueta_260TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_260,
                        primeiroIndicador_260: buscasController.primeiroIndicador_260TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_260,
                        segundoIndicador_260: buscasController.segundoIndicador_260TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_260,
                        $a_lugarDePublicacao: buscasController.$a_lugarDePublicacaoTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_lugarDePublicacao,
                        $b_nomeDoEditor: buscasController.$b_nomeDoEditorTeseController = TextEditingController()..text = buscasController.lstTeses[index].$b_nomeDoEditor,
                        $c_dataDePublicacao: buscasController.$c_dataDePublicacaoTeseController = TextEditingController()..text = buscasController.lstTeses[index].$c_dataDePublicacao,
                        etiqueta_300: buscasController.etiqueta_300TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_300,
                        primeiroIndicador_300: buscasController.primeiroIndicador_300TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_300,
                        segundoIndicador_300: buscasController.segundoIndicador_300TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_300,
                        $a_extensao: buscasController.$a_extensaoTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_extensao,
                        $c_dimensoes: buscasController.$c_dimensoesTeseController = TextEditingController()..text = buscasController.lstTeses[index].$c_dimensoes,
                        etiqueta_500: buscasController.etiqueta_500TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_500,
                        primeiroIndicador_500: buscasController.primeiroIndicador_500TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_500,
                        segundoIndicador_500: buscasController.segundoIndicador_500TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_500,
                        $a_notaGeral: buscasController.$a_notaGeralTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_notaGeral,
                        etiqueta_502: buscasController.etiqueta_502TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_502,
                        primeiroIndicador_502: buscasController.primeiroIndicador_502TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_502,
                        segundoIndicador_502: buscasController.segundoIndicador_502TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_502,
                        $a_notaDeDissertacaoOuTese: buscasController.$a_notaDeDissertacaoOuTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_notaDeDissertacaoOuTese,
                        etiqueta_700: buscasController.etiqueta_700TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_700,
                        primeiroIndicador_700: buscasController.primeiroIndicador_700TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_700,
                        segundoIndicador_700: buscasController.segundoIndicador_700TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_700,
                        $a_nomePessoalSecundario: buscasController.$a_nomePessoalSecundarioTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_nomePessoal_700,
                        etiqueta_856: buscasController.etiqueta_856TeseController = TextEditingController()..text = buscasController.lstTeses[index].etiqueta_856,
                        primeiroIndicador_856: buscasController.primeiroIndicador_856TeseController = TextEditingController()..text = buscasController.lstTeses[index].primeiroIndicador_856,
                        segundoIndicador_856: buscasController.segundoIndicador_856TeseController = TextEditingController()..text = buscasController.lstTeses[index].segundoIndicador_856,
                        $a_nomeDoServidor: buscasController.$a_nomeDoServidorTeseController = TextEditingController()..text = buscasController.lstTeses[index].$a_nomeDoServidor,
                        $u_URI: buscasController.$u_identificadorUniformeDeRecursoURITeseController = TextEditingController()..text = buscasController.lstTeses[index].$u_identificadorUniformeDeRecursoURI,
                        onPressedAtualizar: () async {
                          await context.read<BuscasController>().updateMonografiaTeseEDissertacao(
                            monografiaTeseDissertacaoID: buscasController.lstTeses[index].monografiaTeseEDissertacaoDataID, 
                            nomePessoal_100_DataID: buscasController.lstTeses[index].nomePessoal_100_DataID, 
                            tituloPrincipal_245_DataID: buscasController.lstTeses[index].tituloPrincipal_245_DataID, 
                            imprenta_260_DataID: buscasController.lstTeses[index].imprenta_260_DataID, 
                            descricaoFisica_300_DataID: buscasController.lstTeses[index].descricaoFisica_300_DataID, 
                            notaGeral_500_dataID: buscasController.lstTeses[index].notaGeral_500_DataID, 
                            notaDeDissertacaoOuTese_502_dataID: buscasController.lstTeses[index].notaDeDissertacaoOuTese_502_DataID, 
                            nomePessoal_700_DataID: buscasController.lstTeses[index].nomePessoal_700_DataID,
                            localizacaoEAcessoEletronico_856_DataID: buscasController.lstTeses[index].localizacaoEAcessoEletronico_856_DataID,
                          ).then((response) {
                            if(response.codigoRetorno.toString() == "200") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                               SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao atualizar registro!', largura: size.width * 0.37, altura: size.height * 0.45)
                             );
                           }
                         });
                         if (mounted) {
                          Navigator.pop(context);
                          context.read<BuscasController>().limparListaMonografiaTeseEDissertacao();
                          await context.read<BuscasController>().getMonografiaTeseEDissertacaoPorNome(nomeTese: buscasController.pesquisarController.text.trim());
                        }
                       },
                    ),
                    tabCodigoMarcMonografiaTeseDissertacao: TabCodigoMarcMonografiaTeseDissertacaoWidget(
                      lider_000:'${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_000)} ${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tamanhoDoRegistro_00_04, 5)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].statusDoRegistro_05, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tipoDeRegistro_06, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].nivelBibliografico_07, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tipodeControle_08, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].esquemaDeCodificacaoDeCaractere_09, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].numeroDeIndicadores_10, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].numeroDeSubcampos_11, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].enderecoDeDados_12_16, 5)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].nivelDeCodificacao_17, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].formaDeCatalogacaoDescritiva_18, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].nivelDeRegistroDeRecurso_19, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tamanhoDaPosicaoDoCaractereDeInicio_21, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tamanhoDaParteDefinidaParaImplementacao_22, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].entradaNaoDefinida_23, 1)}',
                      camposDeControle_00x: '${clUtil.getSubCampoDeControle('001', buscasController.lstTeses[index].numeroDeControle_001)} ${clUtil.getSubCampoDeControle('\n003', buscasController.lstTeses[index].codigoAgenciaCatalogadora_003)} ${clUtil.getSubCampoDeControle('\n005', buscasController.lstTeses[index].dataEHoraUltimaAtualizacao_005)}',
                      todosOsMateriais_008: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_008)} ${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].dataDeEntradaDoRegistroNoArquivo_00_05, 6)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].tipodeDataOuStatusDePublicacao_06, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].data1_07_10, 4)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].data2_11_14, 4)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].lugarDePublicacaoProducaoExecucao_15_17, 3)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].ilustracoes_18_21, 4)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].publicoAlvo_22, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].formaDoDocumento_23, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].naturezaDoConteudo_24_27, 4)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].publicacaoGovernamental_28, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].publicacaoDeConferencia_29, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].obraComemorativa_30, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].indice_31, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].indefinido_32, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].formaLiteraria_33, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].biografia_34, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].idiomaDoTextoDoDocumento_35_37, 3)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].registroModificado_38, 1)}${clUtil.getCampoUnicoDados(buscasController.lstTeses[index].fonteDeCatalogacao_39, 1)}',
                      numeroDeClassificacaoDecimalUniversal_080: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_080)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_080, buscasController.lstTeses[index].segundoIndicador_080)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_numeroDeClassificacaoDecimalUniversal)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_numeroDoItem)} ${clUtil.getSubCampoDados('x', buscasController.lstTeses[index].$x_subdivisaoAuxiliarComum)} ${clUtil.getSubCampoDados('0', buscasController.lstTeses[index].$0_numeroDeControleDoRegistroDeAutoridades)} ${clUtil.getSubCampoDados('2', buscasController.lstTeses[index].$2_numeroDeEdicao)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_080)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_080)}', 
                      numeroDeChamadaLocal_090: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_090)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_090, buscasController.lstTeses[index].segundoIndicador_090)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_classificacao)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_numeroDeCutter)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_anoDePublicacao)} ${clUtil.getSubCampoDados('d', buscasController.lstTeses[index].$d_tipoDeObra)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_unidadeCatalogadora)}',
                      nomePessoal_100: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_100)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_100, buscasController.lstTeses[index].segundoIndicador_100)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_nomePessoal_100)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_algarismosRomanosQueSeguemPrenome)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_titulosEOutrasPalavrasAssociadasAoNome_100)} ${clUtil.getSubCampoDados('d', buscasController.lstTeses[index].$d_datasAssociadasAoNome_100)} ${clUtil.getSubCampoDados('e', buscasController.lstTeses[index].$e_termoDeRelacao_100)} ${clUtil.getSubCampoDados('f', buscasController.lstTeses[index].$f_dataDaPublicacaoDoTrabalho_100)} ${clUtil.getSubCampoDados('g', buscasController.lstTeses[index].$g_informacoesAdicionais_100)} ${clUtil.getSubCampoDados('j', buscasController.lstTeses[index].$j_atributoQualificador)} ${clUtil.getSubCampoDados('k', buscasController.lstTeses[index].$k_subcabecalho)} ${clUtil.getSubCampoDados('l', buscasController.lstTeses[index].$l_idiomaDaPublicacao_100)} ${clUtil.getSubCampoDados('n', buscasController.lstTeses[index].$n_numeroDaSecaoDaPublicacao_100)} ${clUtil.getSubCampoDados('p', buscasController.lstTeses[index].$p_nomeDaSecaoDaPublicacao_100)} ${clUtil.getSubCampoDados('q', buscasController.lstTeses[index].$q_formaCompletaDoNome_100)} ${clUtil.getSubCampoDados('t', buscasController.lstTeses[index].$t_tituloDaPublicacao_100)} ${clUtil.getSubCampoDados('u', buscasController.lstTeses[index].$u_afiliacao_100)} ${clUtil.getSubCampoDados('0', buscasController.lstTeses[index].$0_numeroDeControleDoRegistroDeAutoridade_100)} ${clUtil.getSubCampoDados('4', buscasController.lstTeses[index].$4_relacao_100)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_100)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_100)}', 
                      tituloPrincipal_245: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_245)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_245, buscasController.lstTeses[index].segundoIndicador_245)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_tituloPrincipal)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_subtitulo)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_indicacaoDeResponsabilidade)} ${clUtil.getSubCampoDados('f', buscasController.lstTeses[index].$f_datasDeAbrangencia)} ${clUtil.getSubCampoDados('g', buscasController.lstTeses[index].$g_conjuntoDeDatas)} ${clUtil.getSubCampoDados('h', buscasController.lstTeses[index].$h_meioDGM_245)} ${clUtil.getSubCampoDados('k', buscasController.lstTeses[index].$k_formaDoMaterial)} ${clUtil.getSubCampoDados('n', buscasController.lstTeses[index].$n_numeroDaSecaoDaPublicacao_245)} ${clUtil.getSubCampoDados('p', buscasController.lstTeses[index].$p_nomeDaSecaoDaPublicacao_245)} ${clUtil.getSubCampoDados('s', buscasController.lstTeses[index].$s_versao_245)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_245)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_245)}', 
                      imprenta_260: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_260)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_260, buscasController.lstTeses[index].segundoIndicador_260)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_lugarDePublicacao)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_nomeDoEditor)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_dataDePublicacao)} ${clUtil.getSubCampoDados('e', buscasController.lstTeses[index].$e_lugarDeFabricacao)} ${clUtil.getSubCampoDados('f', buscasController.lstTeses[index].$f_nomeDoFabricante)} ${clUtil.getSubCampoDados('g', buscasController.lstTeses[index].$g_dataDeFabricacao)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_260)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_260)}',
                      descricaoFisica_300: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_300)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_300, buscasController.lstTeses[index].segundoIndicador_300)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_extensao)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_detalhesFisicosAdicionais)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_dimensoes)} ${clUtil.getSubCampoDados('e', buscasController.lstTeses[index].$e_materialAdicional)} ${clUtil.getSubCampoDados('f', buscasController.lstTeses[index].$f_tipoDeUnidade)} ${clUtil.getSubCampoDados('g', buscasController.lstTeses[index].$g_tamanhoDaUnidade)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_300)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_300)}',
                      notaGeral_500: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_500)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_500, buscasController.lstTeses[index].segundoIndicador_500)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_notaGeral)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_500)} ${clUtil.getSubCampoDados('5', buscasController.lstTeses[index].$5_codigoDaInstituicao_500)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_500)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_500)}',
                      notaDeDissertacaoOuTese_502: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_502)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_502, buscasController.lstTeses[index].segundoIndicador_502)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_notaDeDissertacaoOuTese)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_502)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_502)}',
                      notaDeBibliografia_504: buscasController.lstTeses[index].$a_notaDeBibliografia.isEmpty ? '' : '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_504)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_504, buscasController.lstTeses[index].segundoIndicador_504)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_notaDeBibliografia)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_numeroDeReferencias)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_504)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_504)}',
                      notaDeResumo_520: buscasController.lstTeses[index].$a_notaDeResumo.isEmpty ? '' : '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_520)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_520, buscasController.lstTeses[index].segundoIndicador_520)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_notaDeResumo)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_expansaoDaNotaDeResumo)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_agenciaDepositaria)} ${clUtil.getSubCampoDados('u', buscasController.lstTeses[index].$u_URI_520)} ${clUtil.getSubCampoDados('2', buscasController.lstTeses[index].$2_fonte_520)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_520)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_520)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_520)}',
                      topico_650: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_650)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_650, buscasController.lstTeses[index].segundoIndicador_650)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_cabecalhoTopicoOuNomeGeografico)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_cabecalhoTopicoSeguindoNomeGeografico)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_localDoEvento)} ${clUtil.getSubCampoDados('d', buscasController.lstTeses[index].$d_dataDeRealizacaoDoEvento)} ${clUtil.getSubCampoDados('e', buscasController.lstTeses[index].$e_termoDeRelacao_650)} ${clUtil.getSubCampoDados('g', buscasController.lstTeses[index].$g_informacoesAdicionais_650)} ${clUtil.getSubCampoDados('v', buscasController.lstTeses[index].$v_subdivisaoDeForma_650)} ${clUtil.getSubCampoDados('x', buscasController.lstTeses[index].$x_subdivisaoGeral_650)} ${clUtil.getSubCampoDados('y', buscasController.lstTeses[index].$y_subdivisaoCronologica_650)} ${clUtil.getSubCampoDados('z', buscasController.lstTeses[index].$z_subdivisaoGeografica_650)} ${clUtil.getSubCampoDados('0', buscasController.lstTeses[index].$0_numeroDeControleDoRegistroDeAutoridade_650)} ${clUtil.getSubCampoDados('2', buscasController.lstTeses[index].$2_fonteDoCabecalhoOuTermo_650)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_650)} ${clUtil.getSubCampoDados('4', buscasController.lstTeses[index].$4_relacao_650)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_650)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_650)}',
                      nomePessoalSecundario_700: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_700)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_700, buscasController.lstTeses[index].segundoIndicador_700)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_nomePessoal_700)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_algarismosRomanosQueSeguemOPrenome)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_titulosEOutrasPalavrasAssociadasAoNome_700)} ${clUtil.getSubCampoDados('d', buscasController.lstTeses[index].$d_datasAssociadasAoNome_700)} ${clUtil.getSubCampoDados('e', buscasController.lstTeses[index].$e_termoDeRelacao_700)} ${clUtil.getSubCampoDados('f', buscasController.lstTeses[index].$f_dataDaPublicacaoDoTrabalho_700)} ${clUtil.getSubCampoDados('g', buscasController.lstTeses[index].$g_informacoesAdicionais_700)} ${clUtil.getSubCampoDados('h', buscasController.lstTeses[index].$h_meioDGM)} ${clUtil.getSubCampoDados('i', buscasController.lstTeses[index].$i_informacoesSobreRelacoes_700)} ${clUtil.getSubCampoDados('j', buscasController.lstTeses[index].$j_atributo)} ${clUtil.getSubCampoDados('k', buscasController.lstTeses[index].$k_subcabecalhos)}  ${clUtil.getSubCampoDados('l', buscasController.lstTeses[index].$l_idiomaDaPublicacao_700)} ${clUtil.getSubCampoDados('m', buscasController.lstTeses[index].$m_instrumentosMusicais_700)} ${clUtil.getSubCampoDados('n', buscasController.lstTeses[index].$n_numeroDaSecaoDaPublicacao_700)} ${clUtil.getSubCampoDados('o', buscasController.lstTeses[index].$o_arranjoMusical_700)} ${clUtil.getSubCampoDados('p', buscasController.lstTeses[index].$p_nomeDaSecaoDaPublicacao_700)} ${clUtil.getSubCampoDados('q', buscasController.lstTeses[index].$q_formaCompletaDoNome_700)} ${clUtil.getSubCampoDados('r', buscasController.lstTeses[index].$r_escalaMusical_700)} ${clUtil.getSubCampoDados('s', buscasController.lstTeses[index].$s_versao_700)} ${clUtil.getSubCampoDados('t', buscasController.lstTeses[index].$t_tituloDaPublicacao_700)} ${clUtil.getSubCampoDados('u', buscasController.lstTeses[index].$u_afiliacao_700)} ${clUtil.getSubCampoDados('x', buscasController.lstTeses[index].$x_ISSN_700)} ${clUtil.getSubCampoDados('0', buscasController.lstTeses[index].$0_numeroDeControleDoRegistroDeAutoridade_700)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_700)} ${clUtil.getSubCampoDados('4', buscasController.lstTeses[index].$4_relacao_700)} ${clUtil.getSubCampoDados('5', buscasController.lstTeses[index].$5_codigoDaInstituicao_700)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_700)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_700)}', 
                      localizacaoEAcessoEletronico_856: '${clUtil.getEtiqueta(buscasController.lstTeses[index].etiqueta_856)} ${clUtil.getIndicadores(buscasController.lstTeses[index].primeiroIndicador_856, buscasController.lstTeses[index].segundoIndicador_856)} ${clUtil.getSubCampoDados('a', buscasController.lstTeses[index].$a_nomeDoServidor)} ${clUtil.getSubCampoDados('b', buscasController.lstTeses[index].$b_numeroDoAcesso)} ${clUtil.getSubCampoDados('c', buscasController.lstTeses[index].$c_informacoesSobreCompactacao)} ${clUtil.getSubCampoDados('d', buscasController.lstTeses[index].$d_caminho)} ${clUtil.getSubCampoDados('f', buscasController.lstTeses[index].$f_nomeDoArquivoEletronico)} ${clUtil.getSubCampoDados('h', buscasController.lstTeses[index].$h_username)} ${clUtil.getSubCampoDados('i', buscasController.lstTeses[index].$i_instrucao)} ${clUtil.getSubCampoDados('j', buscasController.lstTeses[index].$j_bitsPorSegundo)} ${clUtil.getSubCampoDados('k', buscasController.lstTeses[index].$k_password)} ${clUtil.getSubCampoDados('l', buscasController.lstTeses[index].$l_login)} ${clUtil.getSubCampoDados('m', buscasController.lstTeses[index].$m_contatoParaObterAjuda)} ${clUtil.getSubCampoDados('n', buscasController.lstTeses[index].$n_nomeDaLocalizacaoDoServidor)} ${clUtil.getSubCampoDados('o', buscasController.lstTeses[index].$o_sistemaOperativo)} ${clUtil.getSubCampoDados('p', buscasController.lstTeses[index].$p_porta)} ${clUtil.getSubCampoDados('q', buscasController.lstTeses[index].$q_tipoDoFormatoEletronico)} ${clUtil.getSubCampoDados('r', buscasController.lstTeses[index].$r_configuracao)} ${clUtil.getSubCampoDados('s', buscasController.lstTeses[index].$s_tamanhoDoArquivo)} ${clUtil.getSubCampoDados('t', buscasController.lstTeses[index].$t_emulacaoDeTerminal)} ${clUtil.getSubCampoDados('u', buscasController.lstTeses[index].$u_identificadorUniformeDeRecursoURI)} ${clUtil.getSubCampoDados('v', buscasController.lstTeses[index].$v_horarioDeAcesso)} ${clUtil.getSubCampoDados('w', buscasController.lstTeses[index].$w_numeroDeControleDeUmRegistro)} ${clUtil.getSubCampoDados('x', buscasController.lstTeses[index].$x_notaInterna)} ${clUtil.getSubCampoDados('y', buscasController.lstTeses[index].$y_textoDoLink)} ${clUtil.getSubCampoDados('z', buscasController.lstTeses[index].$z_notaDoPublico)} ${clUtil.getSubCampoDados('2', buscasController.lstTeses[index].$2_metodoDeAcesso)} ${clUtil.getSubCampoDados('3', buscasController.lstTeses[index].$3_materialEspecificado_856)} ${clUtil.getSubCampoDados('6', buscasController.lstTeses[index].$6_ligacao_856)} ${clUtil.getSubCampoDados('8', buscasController.lstTeses[index].$8_campoDeLigacaoENumeroDeSequencia_856)}',
                      referencia: ReferenciaWidget(
                        autor: buscasController.lstTeses[index].$a_nomePessoal_100, 
                        titulo: buscasController.lstTeses[index].$a_tituloPrincipal, 
                        subtitulo: buscasController.lstTeses[index].$b_subtitulo, 
                        edicao: "", 
                        local: '${buscasController.lstTeses[index].$a_lugarDePublicacao} ${buscasController.lstTeses[index].$b_nomeDoEditor}', 
                        dataPublicacao: buscasController.lstTeses[index].$c_dataDePublicacao,
                        extensao: buscasController.lstTeses[index].$a_extensao,
                        dimensao: buscasController.lstTeses[index].$c_dimensoes,
                      ),
                    ),
                    onPressedRemover: () {
                      CustomAlertWidget.showAlertConfirmarExcluir(
                        context, 
                        titulo: 'Tem certeza que deseja excluir este arquivo?', 
                        content: 'Você está deletando a tese: ${buscasController.lstTeses[index].$a_nomePessoal_100}.',
                        btnSim: () async {
                          await context.read<BuscasController>().removerMonografiaTeseEDissertacao(
                            monografiaTeseEDissertacaoID: buscasController.lstTeses[index].monografiaTeseEDissertacaoDataID.toString(), 
                            monografiaTeseEDissertacaoNome: buscasController.lstTeses[index].$a_nomePessoal_100,
                            liderID: buscasController.lstTeses[index].liderID.toString(), 
                            acervoID: buscasController.lstTeses[index].acervoDataID.toString(), 
                            camposDeControle_00X_DataID: buscasController.lstTeses[index].camposDeControle_00X_DataID.toString(),
                            todosOsMateriais_008_DataID: buscasController.lstTeses[index].todosOsMateriais_008_DataID.toString(),
                            livros_008_DataID: buscasController.lstTeses[index].livros_008_DataID.toString(),
                            fonteDeCatalogacao_040_DataID: buscasController.lstTeses[index].fonteDeCatalogacao_040_DataID.toString(),
                            numeroDeClassificacaoDecimalUniversal_080_DataID: buscasController.lstTeses[index].numeroDeClassificacaoUniversal_080_DataID.toString(),
                            numeroDeChamadaLocal_090_DataID: buscasController.lstTeses[index].numeroDeChamadaLocal_090_DataID.toString(),
                            nomePessoal_100_DataID: buscasController.lstTeses[index].nomePessoal_100_DataID.toString(), 
                            tituloPrincipal_245_DataID: buscasController.lstTeses[index].tituloPrincipal_245_DataID.toString(), 
                            imprenta_260_DataID: buscasController.lstTeses[index].imprenta_260_DataID.toString(), 
                            descricaoFisica_300_DataID: buscasController.lstTeses[index].descricaoFisica_300_DataID.toString(), 
                            notaGeral_500_DataID: buscasController.lstTeses[index].notaGeral_500_DataID.toString(), 
                            notaDeDissertacaoOuTese_502_DataID: buscasController.lstTeses[index].notaDeDissertacaoOuTese_502_DataID.toString(), 
                            notaDeBibliografia_504_DataID: buscasController.lstTeses[index].notaDeBibliografia_504_DataID.toString(),
                            notaDeResumo_520_DataID: buscasController.lstTeses[index].notaDeResumo_520_DataID.toString(),
                            notaDeOutrosFormatosDisponiveis_530_DataID: buscasController.lstTeses[index].notaDeOutrosFormatosDisponiveis_530_DataID.toString(),
                            entidade_610_DataID: buscasController.lstTeses[index].entidade_610_DataID.toString(),
                            topico_650_DataID: buscasController.lstTeses[index].topico_650_DataID.toString(),
                            nomePessoal_700_DataID: buscasController.lstTeses[index].nomePessoal_700_DataID.toString(),
                            entidade_710_DataID: buscasController.lstTeses[index].entidade_710_DataID.toString(),
                            localizacaoEAcessoEletronico_856_DataID: buscasController.lstTeses[index].localizacaoEAcessoEletronico_856_DataID.toString(),
                          ).then((response) {
                            if(response.codigoRetorno.toString() == "200"){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao excluir tese!', largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                            }
                          });
                          if (mounted) {
                            Navigator.of(context).pop();
                            context.read<BuscasController>().limparListaMonografiaTeseEDissertacao();
                            await context.read<BuscasController>().getMonografiaTeseEDissertacaoPorNome(nomeTese: buscasController.lstTeses[index].$a_nomePessoal_100);
                          }
                        },
                      );
                    },
                    onPressedCopiar: () async {
                      await context.read<BuscasController>().copiarMonografiaTeseEDissertacao( 
                        monografiaTeseEDissertacaoDataID: buscasController.lstTeses[index].monografiaTeseEDissertacaoDataID.toString(), 
                        liderID: buscasController.lstTeses[index].liderID.toString(), 
                        camposDeControle_00X_DataID: buscasController.lstTeses[index].camposDeControle_00X_DataID.toString(), 
                        todosOsMateriais_008_DataID: buscasController.lstTeses[index].todosOsMateriais_008_DataID.toString(), 
                        livros_008_DataID: buscasController.lstTeses[index].livros_008_DataID.toString(), 
                        fonteDeCatalogacao_040_DataID: buscasController.lstTeses[index].fonteDeCatalogacao_040_DataID.toString(), 
                        numeroDeClassificacaoDecimalUniversal_080_DataID: buscasController.lstTeses[index].numeroDeClassificacaoUniversal_080_DataID.toString(), 
                        numeroDeChamadaLocal_090_DataID: buscasController.lstTeses[index].numeroDeChamadaLocal_090_DataID.toString(), 
                        nomePessoal_100_DataID: buscasController.lstTeses[index].nomePessoal_100_DataID.toString(), 
                        tituloPrincipal_245_DataID: buscasController.lstTeses[index].tituloPrincipal_245_DataID.toString(), 
                        imprenta_260_DataID: buscasController.lstTeses[index].imprenta_260_DataID.toString(), 
                        descricaoFisica_300_DataID: buscasController.lstTeses[index].descricaoFisica_300_DataID.toString(), 
                        notaGeral_500_DataID: buscasController.lstTeses[index].notaGeral_500_DataID.toString(), 
                        notaDeDissertacaoOuTese_502_DataID: buscasController.lstTeses[index].notaDeDissertacaoOuTese_502_DataID.toString(), 
                        notaDeBibliografia_504_DataID: buscasController.lstTeses[index].notaDeBibliografia_504_DataID.toString(), 
                        notaDeResumo_520_DataID: buscasController.lstTeses[index].notaDeResumo_520_DataID.toString(), 
                        notaDeOutrosFormatosDisponiveis_530_DataID: buscasController.lstTeses[index].notaDeOutrosFormatosDisponiveis_530_DataID.toString(), 
                        entidade_610_DataID: buscasController.lstTeses[index].entidade_610_DataID.toString(), 
                        topico_650_DataID: buscasController.lstTeses[index].topico_650_DataID.toString(), 
                        nomePessoal_700_DataID: buscasController.lstTeses[index].nomePessoal_700_DataID.toString(), 
                        entidade_710_DataID: buscasController.lstTeses[index].entidade_710_DataID.toString(), 
                        exemplarNumero: buscasController.lstTeses[index].exemplarNumero.toString(), 
                        exemplarDataID: buscasController.lstTeses[index].exemplarDataID.toString(), 
                        acervoDataID: buscasController.lstTeses[index].acervoDataID.toString(), 
                        localizacaoEAcessoEletronico_856_DataID: buscasController.lstTeses[index].localizacaoEAcessoEletronico_856_DataID.toString(),
                      ).then((response) {
                          if(response.codigoRetorno.toString() == "200"){
                            ScaffoldMessenger.of(buscasController.scaffoldKey.currentContext!).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                        } else {
                          ScaffoldMessenger.of(buscasController.scaffoldKey.currentContext!).showSnackBar(
                            SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao copiar registro!', largura: size.width * 0.37, altura: size.height * 0.45)
                          );
                        }
                      });
                    },
                  );
                 }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
