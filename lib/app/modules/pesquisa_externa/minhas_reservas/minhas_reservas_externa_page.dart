import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/minhas_reservas/controllers/minhas_reservas_controller.dart';
import '../../../classes/classes_do_app/class_app_colors.dart';
import '../../../classes/classes_do_app/class_app_estilos_texto.dart';
import '../../../shared/widgets/custom_app_bar_widget.dart';
import '../../../shared/widgets/custom_elevated_button_widget.dart';
import '../../../shared/widgets/snack_bar_widget.dart';

class MinhasReservasExternaPage extends StatefulWidget {
  const MinhasReservasExternaPage({super.key});

  @override
  State<MinhasReservasExternaPage> createState() => _MinhasReservasExternaPageState();
}

class _MinhasReservasExternaPageState extends State<MinhasReservasExternaPage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      context.read<MinhasReservasController>().limparListaReservas();
      context.read<MinhasReservasController>().getMinhasReservas();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var minhasReservasController = context.watch<MinhasReservasController>();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar:CustomAppBarWidget(
        titulo: 'Minhas reservas',
      ),
      body: minhasReservasController.isLoading == true ?  const Center(child: CircularProgressIndicator()) : 
      minhasReservasController.lstReservas.isNotEmpty ? ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32),
        primary: false,
        shrinkWrap: true,
        itemCount: minhasReservasController.lstReservas.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nome: ${minhasReservasController.lstReservas.elementAt(index).nome}',
                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                      ),
                      const SizedBox(height: 8.0),
                      Text.rich(
                      TextSpan(
                        text: 'Situação: ',
                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                        children: [
                          TextSpan(
                            text: minhasReservasController.lstReservas.elementAt(index).reservaSituacao,
                            style: minhasReservasController.lstReservas.elementAt(index).reservaSituacao == 'Cancelada' ? ClassAppEstilosTexto.vermelho16w400Montserrat : 
                                    minhasReservasController.lstReservas.elementAt(index).reservaSituacao == 'Concluída' ? ClassAppEstilosTexto.verde16w400Montserrat : 
                                    ClassAppEstilosTexto.azul16w400Montserrat,
                          ),
                        ],
                      ),
                    ),
                      const SizedBox(height: 8.0),
                      Text(
                        'CPF: ${minhasReservasController.lstReservas.elementAt(index).cpf}',
                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Email: ${minhasReservasController.lstReservas.elementAt(index).email}',
                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Data reserva: ${DateFormat('dd/MM/yyyy').format(DateTime.parse(minhasReservasController.lstReservas.elementAt(index).reservaData))}',
                        style: ClassAppEstilosTexto.preto16w400Montserrat,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: minhasReservasController.lstReservas.elementAt(index).reservaSituacao == 'Em andamento' ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomElevatedButtonWidget(
                      height: 51,
                      width: 145,
                      titulo: 'Cancelar',
                      icone: Icons.cancel_rounded,
                      cor: ClassAppColors.vermelho,
                      onPressed: () async {
                        showDialog(context: context, 
                          builder: (context) {
                            return AlertDialog(
                              actionsAlignment: MainAxisAlignment.center,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                              title: Text('Tem certeza que deseja cancelar esta reserva?', style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                              content:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Você está cancelando a reserva do(a): ${minhasReservasController.lstReservas.elementAt(index).nome}', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                ],
                              ),
                              actions: <Widget>[
                                CustomElevatedButtonWidget(titulo: 'Sim', icone: Icons.check_circle_outline_rounded,
                                cor: ClassAppColors.verde,
                                onPressed: () async {
                                    await context.read<MinhasReservasController>().cancelarReserva(
                                      exemplarNumero: minhasReservasController.lstReservas.elementAt(index).exemplarNumero.toString(), 
                                      livroDataID: minhasReservasController.lstReservas.elementAt(index).livroDataID.toString(), 
                                      reservasDataID: minhasReservasController.lstReservas.elementAt(index).reservasDataID.toString(), 
                                      cpf: minhasReservasController.lstReservas.elementAt(index).cpf,
                                    ).then((response) {
                                      if(response.codigoRetorno.toString() == "201"){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                        );
                                        context.read<MinhasReservasController>().limparListaReservas();
                                        context.read<MinhasReservasController>().getMinhasReservas();
                                        Navigator.pop(context);
                                      } else {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao fazer cancelar reserva.', largura: size.width * 0.37, altura: size.height * 0.45)
                                        );
                                      }
                                    });
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
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ) : Center(child: Text('Você não tem nehuma reserva.', style: ClassAppEstilosTexto.vermelho16BoldMontserrat)),
    );
  }
}
