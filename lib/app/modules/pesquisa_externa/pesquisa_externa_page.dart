import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/buscas/buscas_externa_page.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/historico_page.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/minhas_reservas/minhas_reservas_externa_page.dart';
import '../../classes/classes_do_app/class_app_colors.dart';
import '../../classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class PesquisaExternaPage extends StatefulWidget {
  const PesquisaExternaPage({super.key});

  @override
  State<PesquisaExternaPage> createState() => _PesquisaExternaPageState();
}

class _PesquisaExternaPageState extends State<PesquisaExternaPage> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            style: SideMenuStyle(
              displayMode: 
              MediaQuery.of(context).size.width < 1020? 
                SideMenuDisplayMode.compact : 
                SideMenuDisplayMode.auto,
              backgroundColor: Colors.grey.shade200,
              selectedIconColor: ClassAppColors.branco,
              selectedColor: ClassAppColors.azul,
              selectedTitleTextStyle: ClassAppEstilosTexto.branco16w400Montserrat,
              unselectedIconColor: ClassAppColors.azul,
              unselectedTitleTextStyle: ClassAppEstilosTexto.preto16w400Montserrat,
            ),
            onDisplayModeChanged: (_) {},
            controller: sideMenu,
            title: session.clEmpresaLogada.clienteID == '1' ? 
            SizedBox(
                width: double.maxFinite, 
                height: 100,
                child: Image.asset('assets/images/logo1.png', fit: BoxFit.cover),
              ) : 
              session.clEmpresaLogada.clienteID == '2' ?
              SizedBox(
                width: double.maxFinite, 
                height: 100,
                child: Image.asset('assets/images/logo2.png'),
              ) : Container(),
            items: [
              SideMenuItem(
                title: 'Buscas',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.search_rounded),
                tooltipContent: "Busque um registro",
              ),
              SideMenuItem(
                title: 'Minhas Reservas',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.my_library_books_rounded),
                tooltipContent: "Minhas reservas",
              ),
              SideMenuItem(
                title: 'Histórico',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.history_rounded),
                tooltipContent: "Histórico",
              ),
            ],
            footer: Text(
              '${DateTime.now().year} © W3soft',
              style: ClassAppEstilosTexto.preto16w400Montserrat,
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                BuscasExternaPage(),
                MinhasReservasExternaPage(),
                HistoricoPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
