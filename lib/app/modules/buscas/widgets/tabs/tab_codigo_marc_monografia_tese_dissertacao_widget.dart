// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/buscas/controllers/buscas_controller.dart';

class TabCodigoMarcMonografiaTeseDissertacaoWidget extends StatefulWidget {
  final String lider_000,
      camposDeControle_00x,
      todosOsMateriais_008,
      numeroDeClassificacaoDecimalUniversal_080,
      numeroDeChamadaLocal_090,
      nomePessoal_100,
      tituloPrincipal_245,
      imprenta_260,
      descricaoFisica_300,
      notaGeral_500,
      notaDeDissertacaoOuTese_502,
      notaDeBibliografia_504,
      notaDeResumo_520,
      topico_650,
      nomePessoalSecundario_700,
      localizacaoEAcessoEletronico_856;
    final Widget referencia;

  const TabCodigoMarcMonografiaTeseDissertacaoWidget({
    super.key,
    required this.lider_000,
    required this.camposDeControle_00x,
    required this.todosOsMateriais_008,
    required this.numeroDeClassificacaoDecimalUniversal_080,
    required this.numeroDeChamadaLocal_090,
    required this.nomePessoal_100,
    required this.tituloPrincipal_245,
    required this.imprenta_260,
    required this.descricaoFisica_300,
    required this.notaGeral_500,
    required this.notaDeDissertacaoOuTese_502,
    required this.notaDeBibliografia_504,
    required this.notaDeResumo_520,
    required this.topico_650,
    required this.nomePessoalSecundario_700,
    required this.localizacaoEAcessoEletronico_856,
    required this.referencia,
  });

  @override
  State<TabCodigoMarcMonografiaTeseDissertacaoWidget> createState() => _TabCodigoMarcMonografiaTeseDissertacaoWidgetState();
}

class _TabCodigoMarcMonografiaTeseDissertacaoWidgetState extends State<TabCodigoMarcMonografiaTeseDissertacaoWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                     widget.tituloPrincipal_245.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.tituloPrincipal_245,
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
                     widget.notaGeral_500.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaGeral_500,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.notaDeDissertacaoOuTese_502.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaDeDissertacaoOuTese_502,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                     widget.notaDeBibliografia_504.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaDeBibliografia_504,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
                      widget.notaDeResumo_520.trim().isEmpty
                        ? Container()
                        : SelectableText(
                             widget.notaDeResumo_520,
                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                          ),
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
