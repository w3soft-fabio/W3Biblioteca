import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/controllers/abertura_de_demandas_controller.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/historico_demandas_page.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/solicitacao_demandas_page.dart';

class AberturaDeDemandasPage extends StatelessWidget {
  const AberturaDeDemandasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aberturaDeDemandasController = context.watch<AberturaDeDemandasController>();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Abertura de demandas', style: ClassAppEstilosTexto.azul28w600Montserrat),
          toolbarHeight: 90,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    ClassAppColors.azul,
                    Colors.white,
                    Colors.white,
                    ClassAppColors.azul,
                  ]),
            ),
          ),
          // actions: const [
          //   IconButton(
          //     padding: EdgeInsets.only(right: 20.0),
          //     onPressed: null,
          //     icon: Icon(
          //       Icons.logout_rounded,
          //     ),
          //     tooltip: 'Sair',
          //   ),
          // ],
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: const Icon(Icons.add_rounded),
                child: Text('Solicitação', style: ClassAppEstilosTexto.azul18w600Montserrat),
              ),
              Tab(
                icon: const Icon(Icons.history_rounded),
                child:  Text('Histórico', style: ClassAppEstilosTexto.azul18w600Montserrat),
              ),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            SolicitacaoDemandasPage(
              controller: aberturaDeDemandasController,
            ),
            HistoricoDemandasPage(
              controller: aberturaDeDemandasController,
            ),
          ] 
        ),
      ),
    );
  }
}
