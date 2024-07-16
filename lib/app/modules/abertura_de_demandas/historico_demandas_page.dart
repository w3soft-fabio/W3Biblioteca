import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/controllers/abertura_de_demandas_controller.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/models/class_abertura_de_demandas_data.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';

class HistoricoDemandasPage extends StatefulWidget {
  final AberturaDeDemandasController controller;
  const HistoricoDemandasPage({super.key, required this.controller});

  @override
  State<HistoricoDemandasPage> createState() => _HistoricoDemandasPageState();
}

class _HistoricoDemandasPageState extends State<HistoricoDemandasPage> {
  String mensagemSolicitacao = "";
  String mensagemObservacao = "";
  String status = "";
  int idDemanda = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AberturaDeDemandasController>().getDemandas();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.4,
              child: ListView(
                shrinkWrap: true,
                children: [
                  _criarTabela(),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Text('Solicitação: ', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
            const SizedBox(height: 8.0),
            Text(mensagemSolicitacao, style: ClassAppEstilosTexto.preto16w400Montserrat),
            const SizedBox(height: 16.0),
            Text('Observação: ', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
            const SizedBox(height: 8.0),
            Text(mensagemObservacao, style: ClassAppEstilosTexto.preto16w400Montserrat),
            const SizedBox(height: 16.0),
            const Divider(thickness: 1, color: ClassAppColors.preto),
            Text('Se a solicitação foi atendida e/ou respondida, clique no botão abaixo.', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
            const SizedBox(height: 16.0),
            CustomElevatedButtonWidget(
              titulo: 'Ok', 
              icone: Icons.check_circle_rounded,
              cor: ClassAppColors.verde, 
              onPressed: status != 'Liberado' ? null : () async {
                await context.read<AberturaDeDemandasController>().updateDemanda(id: idDemanda).then(
                  (response) {
                    if (response.codigoRetorno.toString() == "201") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                      );
                      context.read<AberturaDeDemandasController>().getDemandas();
                      setState(() {
                        status = '';
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao atualizar o status demanda!', largura: size.width * 0.37, altura: size.height * 0.45)
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  DataTable _criarTabela() {
    return DataTable(
      columns: _criarColunas(),
      rows: _criarLinhas(widget.controller.lstDemandas.length, widget.controller.lstDemandas),
      dividerThickness: 2,
      headingRowHeight: 60,
      showBottomBorder: true,
    );
  }

  List<DataColumn> _criarColunas() {
    return [
      DataColumn(label: Text('Núm', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat)),
      DataColumn(label: Text('Solicitante', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat)),
      DataColumn(label: Text('Situação', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat)),
      DataColumn(label: Text('Previsão', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat)),
      DataColumn(label: Text('Liberação', style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat)),
    ];
  }

  List<DataRow> _criarLinhas(int length, Set<ClassAberturaDeDemandasData> lstStatus) {
    var lstDemandas = List.generate(length, (index) {
      return DataRow(
        cells: [
        DataCell(
          Text(widget.controller.lstDemandas.elementAt(index).protocolo.toString(), style: ClassAppEstilosTexto.preto16w400Montserrat),
          onTap: () {
            setState(() {
              mensagemSolicitacao = widget.controller.lstDemandas.elementAt(index).solicitacao;
              mensagemObservacao = widget.controller.lstDemandas.elementAt(index).observacoes1 ?? '';
              status = widget.controller.lstDemandas.elementAt(index).status;
              idDemanda = widget.controller.lstDemandas.elementAt(index).id;
            });
          }
        ),
        DataCell(
          Text(widget.controller.lstDemandas.elementAt(index).nome, style: ClassAppEstilosTexto.preto16w400Montserrat),
          onTap: () {
            setState(() {
              mensagemSolicitacao = widget.controller.lstDemandas.elementAt(index).solicitacao;
              mensagemObservacao = widget.controller.lstDemandas.elementAt(index).observacoes1 ?? '';
              status = widget.controller.lstDemandas.elementAt(index).status;
              idDemanda = widget.controller.lstDemandas.elementAt(index).id;
            });
          }
        ),
        DataCell(
          Text(
            widget.controller.lstDemandas.elementAt(index).status == 'Aberto' ? 'Aberto' : 
            widget.controller.lstDemandas.elementAt(index).status == 'Aguardando1' ? 'Aguardando Autorização W3' : 
            widget.controller.lstDemandas.elementAt(index).status == 'Aguardando2' ? 'Aguardando Cliente' : 
            widget.controller.lstDemandas.elementAt(index).status == 'Atendimento' ? 'Atendimento' : 
            widget.controller.lstDemandas.elementAt(index).status == 'Concluido' ? 'Concluído' : 
            widget.controller.lstDemandas.elementAt(index).status == 'Cancelado' ? 'Cancelado' :  
            widget.controller.lstDemandas.elementAt(index).status == 'Liberado' ? 'Liberado' :  
            widget.controller.lstDemandas.elementAt(index).status == 'Fechado' ? 'Fechado' : '',
          style: widget.controller.lstDemandas.elementAt(index).status == 'Concluido' ? ClassAppEstilosTexto.verde16w400Montserrat :
                 widget.controller.lstDemandas.elementAt(index).status == 'Liberado' ? ClassAppEstilosTexto.verde16w400Montserrat :
                 widget.controller.lstDemandas.elementAt(index).status == 'Fechado' ? ClassAppEstilosTexto.vermelho16w400Montserrat :
                 widget.controller.lstDemandas.elementAt(index).status == 'Cancelado' ? ClassAppEstilosTexto.vermelho16w400Montserrat :
                 ClassAppEstilosTexto.azul16w400Montserrat,
          ),
          onTap: () {
            setState(() {
              mensagemSolicitacao = widget.controller.lstDemandas.elementAt(index).solicitacao;
              mensagemObservacao = widget.controller.lstDemandas.elementAt(index).observacoes1 ?? '';
              status = widget.controller.lstDemandas.elementAt(index).status;
              idDemanda = widget.controller.lstDemandas.elementAt(index).id;
            });
          }
        ),
        DataCell(
          Text(widget.controller.lstDemandas.elementAt(index).data_previsao_conclusao, 
          style: ClassAppEstilosTexto.preto16w400Montserrat),
          onTap: () {
            setState(() {
              mensagemSolicitacao = widget.controller.lstDemandas.elementAt(index).solicitacao;
              mensagemObservacao = widget.controller.lstDemandas.elementAt(index).observacoes1 ?? '';
              status = widget.controller.lstDemandas.elementAt(index).status;
              idDemanda = widget.controller.lstDemandas.elementAt(index).id;
            });
          }
        ),
        DataCell(
          Text(widget.controller.lstDemandas.elementAt(index).data_conclusao ?? '', 
          style: ClassAppEstilosTexto.preto16w400Montserrat),
          onTap: () {
            setState(() {
              mensagemSolicitacao = widget.controller.lstDemandas.elementAt(index).solicitacao;
              mensagemObservacao = widget.controller.lstDemandas.elementAt(index).observacoes1 ?? '';
              status = widget.controller.lstDemandas.elementAt(index).status;
              idDemanda = widget.controller.lstDemandas.elementAt(index).id;
            });
          }
        ),
      ]);
    });
    return lstDemandas;
  }
}
