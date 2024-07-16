// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/buscas/controllers/buscas_controller.dart';

class TabCodigoMarcAutoridadeWidget extends StatelessWidget {
  final String lider_000,
      camposDeControle_00x,
      todosOsMateriais_008,
      fonteDeCatalogacao_040,
      nomePessoal_100,
      nomePessoalRemissivaVer_400,
      notaGeralNaoPublica_667,
      dadosDeFontesEncontrados_670;

  const TabCodigoMarcAutoridadeWidget({
    super.key,
    required this.lider_000,
    required this.camposDeControle_00x,
    required this.todosOsMateriais_008,
    required this.fonteDeCatalogacao_040,
    required this.nomePessoal_100,
    required this.nomePessoalRemissivaVer_400,
    required this.notaGeralNaoPublica_667,
    required this.dadosDeFontesEncontrados_670,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1, vertical: 32),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Consumer<BuscasController>(builder: (context, value, __) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    lider_000.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            lider_000,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    camposDeControle_00x.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            camposDeControle_00x,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    todosOsMateriais_008.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            todosOsMateriais_008,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    fonteDeCatalogacao_040.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            fonteDeCatalogacao_040,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    nomePessoal_100.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            nomePessoal_100,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    nomePessoalRemissivaVer_400.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            nomePessoalRemissivaVer_400,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    notaGeralNaoPublica_667.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            notaGeralNaoPublica_667,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                    dadosDeFontesEncontrados_670.trim().isEmpty
                        ? Container()
                        : SelectableText(
                            dadosDeFontesEncontrados_670,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
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
