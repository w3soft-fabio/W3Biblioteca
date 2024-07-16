// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/buscas/controllers/buscas_controller.dart';

class TabCodigoMarcWidget extends StatefulWidget {
  final String lider_000,
      camposDeControle_00x,
      todosOsMateriais_008,
      isbn_020,
      fonteDeCatalogacao_040,
      codigoDoIdioma_041,
      codigoDaAreaGeografica_043,
      numeroDeClassificacaoDecimalUniversal_080,
      numeroDeChamadaLocal_090,
      nomePessoal_100,
      evento_111,
      tituloOriginal_240,
      tituloPrincipal_245,
      edicao_250,
      imprenta_260,
      descricaoFisica_300,
      indicacaoDeSerie_490,
      notaGeral_500,
      notaGeral_500_DataID,
      notaDeBibliografia_504,
      notaDeConteudo_505,
      notaDeResumo_520,
      topico_650,
      topico_650_DataID,
      nomePessoalSecundario_700,
      localizacaoEAcessoEletronico_856;
  final Widget referencia;

  const TabCodigoMarcWidget({
    super.key,
    required this.lider_000,
    required this.camposDeControle_00x,
    required this.todosOsMateriais_008,
    required this.isbn_020,
    required this.fonteDeCatalogacao_040,
    required this.codigoDoIdioma_041,
    required this.codigoDaAreaGeografica_043,
    required this.numeroDeClassificacaoDecimalUniversal_080,
    required this.numeroDeChamadaLocal_090,
    required this.nomePessoal_100,
    required this.evento_111,
    required this.tituloOriginal_240,
    required this.tituloPrincipal_245,
    required this.edicao_250,
    required this.imprenta_260,
    required this.descricaoFisica_300,
    required this.indicacaoDeSerie_490,
    required this.notaGeral_500,
    required this.notaGeral_500_DataID,
    required this.notaDeBibliografia_504,
    required this.notaDeConteudo_505,
    required this.notaDeResumo_520,
    required this.topico_650,
    required this.topico_650_DataID,
    required this.nomePessoalSecundario_700,
    required this.localizacaoEAcessoEletronico_856,
    required this.referencia,
  });

  @override
  State<TabCodigoMarcWidget> createState() => _TabCodigoMarcWidgetState();
}

class _TabCodigoMarcWidgetState extends State<TabCodigoMarcWidget> {
  // CHAMA OS MÉTODOS DE CAMPOS REPETIDOS
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // LIMPA A LISTA E CHAMA O MÉTODO A CADA CHAMADA 
      context.read<BuscasController>().lstNotaGeral500Items.clear();
      context.read<BuscasController>().lstTopico650Items.clear();
      context.read<BuscasController>().getNotaGeral500Items(id: widget.notaGeral_500_DataID);
      context.read<BuscasController>().getTopico650Items(id: widget.topico_650_DataID);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var buscasController = context.watch<BuscasController>();
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Consumer<BuscasController>(builder: (context, value, __) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     widget.lider_000.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.lider_000,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.camposDeControle_00x.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.camposDeControle_00x,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.todosOsMateriais_008.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.todosOsMateriais_008,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.isbn_020.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.isbn_020,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.fonteDeCatalogacao_040.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.fonteDeCatalogacao_040,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.codigoDoIdioma_041.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.codigoDoIdioma_041,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.codigoDaAreaGeografica_043.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.codigoDaAreaGeografica_043,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.numeroDeClassificacaoDecimalUniversal_080
                            .trim()
                            .isEmpty
                        ? Container()
                        : SelectableText(
                             widget.numeroDeClassificacaoDecimalUniversal_080,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.numeroDeChamadaLocal_090.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.numeroDeChamadaLocal_090,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.nomePessoal_100.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.nomePessoal_100,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.evento_111.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.evento_111,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.tituloOriginal_240.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.tituloOriginal_240,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.tituloPrincipal_245.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.tituloPrincipal_245,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.edicao_250.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.edicao_250,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.imprenta_260.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.imprenta_260,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.descricaoFisica_300.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.descricaoFisica_300,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.indicacaoDeSerie_490.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.indicacaoDeSerie_490,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.lstNotaGeral500Items.length,
                        itemBuilder: (context, index) {
                          return SelectableText(
                            '${buscasController.lstNotaGeral500Items[index].etiqueta_500} ${buscasController.lstNotaGeral500Items[index].primeiroIndicador}${buscasController.lstNotaGeral500Items[index].segundoIndicador} ${buscasController.lstNotaGeral500Items[index].$a_notaGeral}',
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          );
                        }),
                     widget.notaDeBibliografia_504.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaDeBibliografia_504,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.notaDeConteudo_505.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaDeConteudo_505,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                      widget.notaDeResumo_520.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaDeResumo_520,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.lstTopico650Items.length,
                        itemBuilder: (context, index) {
                          return SelectableText(
                            '${buscasController.lstTopico650Items[index].etiqueta_650} ${buscasController.lstTopico650Items[index].primeiroIndicador}${buscasController.lstTopico650Items[index].segundoIndicador} ${buscasController.lstTopico650Items[index].$a_cabecalhoTopicoOuNomeGeografico}',
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          );
                        }),
                      widget.nomePessoalSecundario_700.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.nomePessoalSecundario_700,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.localizacaoEAcessoEletronico_856.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.localizacaoEAcessoEletronico_856,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                          const SizedBox(height: 32.0),
                          Text('Referência', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
                          const SizedBox(height: 16.0),
                            widget.referencia, 
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
