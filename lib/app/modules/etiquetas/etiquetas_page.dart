import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/buscas/widgets/botao_limpar_pesquisa_widget.dart';
import 'package:w3biblioteca/app/modules/etiquetas/controllers/etiquetas_controller.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';

class EtiquetasPage extends StatelessWidget {
  const EtiquetasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final etiquetasController = context.watch<EtiquetasController>();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Etiquetas'),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: 32.0),
          child: Form(
            key: etiquetasController.formKey,
            child: Column(
              children: [
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextFormFieldWidget(
                        titulo: 'Pesquisar título',
                        width: 300,
                        validator: true,
                        controller: etiquetasController.pesquisaController,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Flexible(
                      child: CustomElevatedButtonWidget(
                        titulo: 'Pesquisar',
                        icone: Icons.check_circle,
                        width: 200,
                        height: 56,
                        cor: ClassAppColors.verde,
                        onPressed: () async {
                          await context.read<EtiquetasController>().getEtiquetas();
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Flexible(
                      child: CustomElevatedButtonWidget(
                        titulo: 'Imprimir',
                        icone: Icons.print,
                        width: 250,
                        height: 56,
                        cor: ClassAppColors.azul,
                        onPressed: () async {
                          await context.read<EtiquetasController>().obterEtiquetas().then((response) {
                            if (response.reportErrorMessage.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(
                                  cor: ClassAppColors.verde,
                                  mensagem: 'Etiquetas obtidas com sucesso!',
                                  largura: size.width * 0.37,
                                  altura: size.height * 0.45,
                                ),
                              );
                              context.read<EtiquetasController>().abrirUrl(Uri.parse("https://www.w3soft3.com.br/w3bibliotecaAPI/reportsTemp/${response.reportFileName}"));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(
                                  cor: ClassAppColors.vermelho,
                                  mensagem: response.reportErrorMessage,
                                  largura: size.width * 0.37,
                                  altura: size.height * 0.45,
                                ),
                              );
                            }
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Flexible(
                      child: BotaoLimparPesquisaWidget(
                      onPressed: () {
                          context.read<EtiquetasController>().limparListaEtiquetas();
                          context.read<EtiquetasController>().limparEtiquetasControllers();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Selecionar todos?', style: ClassAppEstilosTexto.preto16w400Montserrat),
                    Checkbox(
                      value: etiquetasController.isSelecionarTodos,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)
                      ), 
                      onChanged: (_) {
                        context.read<EtiquetasController>().marcarSelecionarTodos();
                        if (etiquetasController.isSelecionarTodos == false) {
                          context.read<EtiquetasController>().marcarLimparTodos();
                        }
                    }),
                  ],
                ),
                const SizedBox(height: 16.0),
                etiquetasController.isLoading == true ? const Center(child: CircularProgressIndicator()) : 
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      mainAxisExtent: 210,
                      childAspectRatio: (1 / .7)
                    ),
                    itemCount: etiquetasController.lstEtiquetas.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 4,
                        child: ListTile(
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: etiquetasController.lstEtiquetas.elementAt(index).isSelected,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)
                                ), 
                                onChanged: (_) {
                                context.read<EtiquetasController>().marcarSelecionado(index);
                              }),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'N. Chamada: ',
                                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                        children: [
                                          TextSpan(
                                            text: etiquetasController.lstEtiquetas.elementAt(index).$a_classificacao ?? '',
                                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Cutter: ',
                                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                        children: [
                                          TextSpan(
                                            text: etiquetasController.lstEtiquetas.elementAt(index).$b_numeroDeCutter ?? '',
                                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Ed: ',
                                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                        children: [
                                          TextSpan(
                                            text:etiquetasController.lstEtiquetas.elementAt(index).$a_edicao ?? '',
                                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Flexible(
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Autor: ',
                                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                    children: [
                                      TextSpan(
                                        text: etiquetasController.lstEtiquetas.elementAt(index).$a_nomePessoal ?? '',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Título: ',
                                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                    children: [
                                      TextSpan(
                                        text: etiquetasController.lstEtiquetas.elementAt(index).$a_tituloPrincipal?.replaceAll('  ', '') ?? '',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(etiquetasController.lstEtiquetas.elementAt(index).siglaInstituicao ?? 'N/A', 
                                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Cod. Ex: ',
                                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                        children: [
                                          TextSpan(
                                            text: etiquetasController.lstEtiquetas.elementAt(index).exemplarDataID.toString() == "null"
                                            ? "0" :
                                              etiquetasController.lstEtiquetas.elementAt(index).exemplarDataID.toString(),
                                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Ex: ',
                                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                        children: [
                                          TextSpan(
                                            text: etiquetasController.lstEtiquetas.elementAt(index).exemplarNumero.toString(),
                                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Ac: ',
                                        style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,
                                        children: [
                                          TextSpan(
                                            text: etiquetasController.lstEtiquetas.elementAt(index).acervoDataID.toString(),
                                            style: ClassAppEstilosTexto.preto16w400Montserrat,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
