import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/controllers/historico_controller.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_list_view_widget.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({super.key});

  @override
  State<HistoricoPage> createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      context.read<HistoricoController>().limparListaHistorico();
      context.read<HistoricoController>().getHistorico();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var historicoController = context.watch<HistoricoController>();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Histórico'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('Nº exemplar',
                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('Data reserva',
                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('Hora',
                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Título',
                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('Responsável',
                    style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              CustomListViewWidget(
                itemCount: historicoController.lstHistorico.length,
                itemBuilder: (_, index) {
                  return ListView(
                    shrinkWrap: true,
                    primary: false,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(historicoController.lstHistorico.elementAt(index).numeroExemplar.toString(), 
                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(DateFormat('dd/MM/yyyy').format(DateTime.parse(historicoController.lstHistorico.elementAt(index).reservaData)), 
                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('${historicoController.lstHistorico.elementAt(index).hora.toString()} horas', 
                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(historicoController.lstHistorico.elementAt(index).titulo, 
                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(historicoController.lstHistorico.elementAt(index).nome, 
                            style: ClassAppEstilosTexto.preto16w400Montserrat),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
