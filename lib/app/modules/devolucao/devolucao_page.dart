import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_util.dart';
import 'package:w3biblioteca/app/modules/devolucao/controller/devolucao_controller.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../../classes/classes_do_app/class_app_colors.dart';
import '../../shared/widgets/snack_bar_widget.dart';
import '../buscas/widgets/botao_limpar_pesquisa_widget.dart';

class DevolucaoPage extends StatelessWidget {
  const DevolucaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Devolução'),
      body: Consumer<DevolucaoController>(
        builder: (context, devolucaoController, __) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32.0),
            child: Form(
              key: devolucaoController.formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: TextFormFieldWidget(
                            titulo: 'Nº exemplar',
                            width: 150,
                            controller: devolucaoController.exemplarNumeroController,
                            validator: true,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(7)
                              ],
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: CustomElevatedButtonWidget(
                            titulo: 'Pesquisar',
                            icone: Icons.search_rounded,
                            height: 55,
                            onPressed: () async {
                              if(devolucaoController.formKey.currentState!.validate()) {
                                devolucaoController.foiMultado = false;
                                context.read<DevolucaoController>().limparListaEmprestimo();
                                await context.read<DevolucaoController>().pesquisarLivroEmprestado().then((lista) async {
                                  if(lista.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Nenhum empréstimo encontrado. Por favor, tente novamente.', largura: size.width * 0.3, altura: size.height * 0.45));
                                  } else {
                                    devolucaoController.idEmprestimoMulta = lista.first.livroDataID;
                                  }
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        BotaoLimparPesquisaWidget(
                          onPressed: () {
                            context.read<DevolucaoController>().limparListaEmprestimo();
                            context.read<DevolucaoController>().limparControllers();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    devolucaoController.isLoading == true ? const Center(child: CircularProgressIndicator()) : 
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: devolucaoController.lstEmprestimo.length,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nome: ${devolucaoController.lstEmprestimo.elementAt(index).nome}',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'Situação: ${devolucaoController.lstEmprestimo.elementAt(index).emprestimoSituacao}',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'CPF: ${devolucaoController.lstEmprestimo.elementAt(index).cpf}',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'Email: ${devolucaoController.lstEmprestimo.elementAt(index).email}',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'Data empréstimo: ${DateFormat('dd/MM/yyyy').format(DateTime.parse(devolucaoController.lstEmprestimo.elementAt(index).dataEmprestimo))}',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'Data entrega prevista: ${DateFormat('dd/MM/yyyy').format(DateTime.parse(devolucaoController.lstEmprestimo.elementAt(index).dataEntregaPrevista))}',
                                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: CustomElevatedButtonWidget(
                                          titulo: 'Devolução',
                                          icone: Icons.arrow_back,
                                          cor: ClassAppColors.verde,
                                          onPressed: devolucaoController.foiMultado == true && devolucaoController.lstEmprestimo.elementAt(index).livroDataID == devolucaoController.idEmprestimoMulta ? null : () async {
                                            // Calcula a diferença da data atual e a prevista de entrega e armazenar no controlador
                                            DateTime dataEntregaPrevista = DateTime.parse(devolucaoController.lstEmprestimo.elementAt(index).dataEntregaPrevista);
                                            DateTime dataAtual = DateTime.now();
                                            devolucaoController.diasAtrasado = dataAtual.difference(dataEntregaPrevista).inDays;

                                            if (devolucaoController.diasAtrasado > 0 && devolucaoController.multaFoiCancelada == false) {
                                              showDialog(
                                                context: context, 
                                                builder: (dialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Você foi multado :(', style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                                                    content: Text(
                                                      'Você passou ${dataAtual.difference(dataEntregaPrevista).inDays} dias após a data de entrega.\nPara finalizar o processo de devolução é necessário pagar a multa.',
                                                      textAlign: TextAlign.start,
                                                      style: ClassAppEstilosTexto.preto16w400Montserrat,
                                                    ),
                                                    actions: [
                                                      CustomElevatedButtonWidget(
                                                        titulo: 'OK', 
                                                        icone: Icons.check_circle_rounded, 
                                                        cor: ClassAppColors.verde,
                                                        onPressed: () => Navigator.pop(context),
                                                      )
                                                    ],
                                                  );
                                                },
                                              );
                                              context.read<DevolucaoController>().marcarMultado();
                                              devolucaoController.idEmprestimoMulta = devolucaoController.lstEmprestimo.elementAt(index).livroDataID;
                                            } else {
                                              await context.read<DevolucaoController>().fazerDevolucao(
                                                livroDataID: devolucaoController.lstEmprestimo.elementAt(index).livroDataID.toString(),
                                                emprestimoDataID: devolucaoController.lstEmprestimo.elementAt(index).emprestimoDataID.toString(), 
                                                exemplarNumero: devolucaoController.lstEmprestimo.elementAt(index).exemplarNumero.toString(), 
                                                cpf: devolucaoController.lstEmprestimo.elementAt(index).cpf,
                                              ).then((response) {
                                                if(response.codigoRetorno.toString() == "201"){
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                                  );
                                                  context.read<DevolucaoController>().limparListaEmprestimo();
                                                  context.read<DevolucaoController>().marcarMultaCancelada();
                                                } else {
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao fazer devolução.', largura: size.width * 0.3, altura: size.height * 0.45)
                                                  );
                                                }
                                              });
                                            }
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 16.0),
                                      Visibility(
                                        visible: devolucaoController.foiMultado,
                                        child: Flexible(
                                          child: CustomElevatedButtonWidget(
                                            titulo: 'Pagar multa',
                                            icone: Icons.payment_rounded,
                                            width: 165,
                                            cor: ClassAppColors.vermelho,
                                            onPressed: () async {
                                              showDialog(
                                                barrierDismissible: false,
                                                context: context, 
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    child: SizedBox(
                                                      width: MediaQuery.of(context).size.width * 0.5,
                                                      height: MediaQuery.of(context).size.height * 0.5,
                                                      child: Scaffold(
                                                        appBar: AppBar(
                                                          leading: Container(),
                                                          title: Text('Pagar multa', style: ClassAppEstilosTexto.branco28w400Montserrat),
                                                          centerTitle: true,
                                                          toolbarHeight: 90.0,
                                                          actions: [
                                                            IconButton(
                                                              onPressed: () => Navigator.pop(dialogContext), 
                                                              icon: const Icon(Icons.close_rounded), 
                                                              padding: const EdgeInsets.only(right: 16.0),
                                                            )
                                                          ],
                                                        ),
                                                        body: SingleChildScrollView(
                                                          child: Padding(
                                                            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 32),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                const SizedBox(height: 16.0),
                                                                TextFormFieldWidget(
                                                                  titulo: 'Quantidade de dias atrasados',
                                                                  enabled: false,
                                                                  width: 210,
                                                                  controller: devolucaoController.qtdDiasAtrasados..text = devolucaoController.diasAtrasado.toString(),
                                                                ),
                                                                const SizedBox(height: 16.0),
                                                                TextFormFieldWidget(
                                                                  titulo: 'Valor da multa',
                                                                  enabled: false,
                                                                  width: 210,
                                                                  controller: devolucaoController.valorMulta..text = 'R\$: ${session.clConfiguracaoSistema.multa.toString()}',                             
                                                                ),
                                                                const SizedBox(height: 16.0),
                                                                TextFormFieldWidget(
                                                                  titulo: 'Total a pagar',
                                                                  width: 210,
                                                                  controller: devolucaoController.totalMultaAPagar..text = 'R\$: ${devolucaoController.totalMulta.toStringAsFixed(2)}',
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter.digitsOnly,
                                                                    CurrencyPtBrInputFormatter(),
                                                                  ],                                                       
                                                                ),
                                                                const SizedBox(height: 32.0),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                  children: [
                                                                    CustomElevatedButtonWidget(
                                                                      titulo: 'Pagar multa', 
                                                                      icone: Icons.payment_rounded, 
                                                                      width: 210,
                                                                      height: 51,
                                                                      cor: ClassAppColors.verde,
                                                                      onPressed: () {},
                                                                    ),
                                                                    const SizedBox(width: 16.0),
                                                                    CustomElevatedButtonWidget(
                                                                      titulo: 'Considerar multa paga', 
                                                                      icone: Icons.cancel_rounded,                                                              
                                                                      width: 250,
                                                                      height: 51,
                                                                      cor: ClassAppColors.vermelho,
                                                                      onPressed: () {
                                                                        devolucaoController.diasAtrasado = 0;
                                                                        context.read<DevolucaoController>().marcarMultado();
                                                                        context.read<DevolucaoController>().marcarMultaCancelada();
                                                                        Navigator.pop(dialogContext);
                                                                      },                                                                                      
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
