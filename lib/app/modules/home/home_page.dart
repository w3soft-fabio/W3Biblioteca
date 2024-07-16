import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/abertura_de_demandas_page.dart';
import 'package:w3biblioteca/app/modules/autoridade/autoridade_page.dart';
import 'package:w3biblioteca/app/modules/buscas/buscas_page.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/configuracao_sistema_page.dart';
import 'package:w3biblioteca/app/modules/devolucao/devolucao_page.dart';
import 'package:w3biblioteca/app/modules/email/configurar_email_page.dart';
import 'package:w3biblioteca/app/modules/entrada/entrada_page.dart';
import 'package:w3biblioteca/app/modules/etiquetas/etiquetas_page.dart';
import 'package:w3biblioteca/app/modules/home/controllers/home_controller.dart';
import 'package:w3biblioteca/app/modules/importacao/selecionar_codigo_marc_page.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/modules/relatorios/relatorios_page.dart';
import '../reservas/pesquisar_reserva_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((p0) {
      pageController.jumpToPage(p0);
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      context.read<HomeController>().getConfiguracaoDoSistema().then((response) {
        session.clConfiguracaoSistema.multa = response.first.multaValorDiario;
      });
      context.read<HomeController>().getConfiguracaoEmail().then((response) {
        if (response.isNotEmpty) {
          session.clEmpresaLogada.contaID = response.first.contaID.toString();
        }
      });
      await context.read<HomeController>().loadTawkTo();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
              selectedTitleTextStyleExpandable: ClassAppEstilosTexto.preto16w400Montserrat,
              selectedIconColorExpandable: ClassAppColors.azul,
              unselectedIconColorExpandable: ClassAppColors.azul,
              selectedTitleTextStyle: ClassAppEstilosTexto.branco16w400Montserrat,
              unselectedIconColor: ClassAppColors.azul,
              unselectedTitleTextStyle: ClassAppEstilosTexto.preto16w400Montserrat,
            ),
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
            onDisplayModeChanged: (_) {},
            footer: Text(
              '${DateTime.now().year} © W3soft',
              style: ClassAppEstilosTexto.preto16w400Montserrat,
            ),
            items: [
              SideMenuItem(
                title: 'Buscas',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.search_rounded),
                tooltipContent: "Busque um registro",
              ),
              SideMenuExpansionItem(
                title: "Entrada",
                icon: const Icon(Icons.add_rounded, color: ClassAppColors.azul),
                children: [
                 SideMenuItem(
                    title: 'Cadastro',
                    onTap: (pagina, __) => sideMenu.changePage(pagina),
                    icon: const Icon(Icons.add_rounded),
                    tooltipContent: "Adicione um registro", 
                  ),
                  SideMenuItem(
                    title: 'Cadastro autoridade',
                    onTap: (pagina, __) => sideMenu.changePage(pagina),
                    icon: const Icon(Icons.add_rounded),
                    tooltipContent: "Adicione uma autoridade",
                  ),
                ],
              ),
              SideMenuItem(
                title: 'Importação',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.import_contacts_rounded),
                tooltipContent: "Importe um aquivo MARC",
              ),
              SideMenuExpansionItem(
                title: "Reservas/Devolução",
                icon: const Icon(Icons.calendar_month_rounded, color: ClassAppColors.azul),
                children: [
                  SideMenuItem(
                    title: 'Reservas',
                    onTap: (pagina, __) => sideMenu.changePage(pagina),
                    icon: const Icon(Icons.calendar_month_rounded),
                    tooltipContent: "Reserva de registros",
                  ),
                  SideMenuItem(
                    title: 'Devolução',
                    onTap: (pagina, __) => sideMenu.changePage(pagina),
                    icon: const Icon(Icons.call_received_rounded),
                    tooltipContent: "Devolução de registros",
                  ),
                ],
              ),
              SideMenuItem( 
                title: 'Envio email',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.email_rounded),
                tooltipContent: "Configuração de envio email",
              ),
              SideMenuItem(
                title: 'Relatórios',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.add_chart_rounded),
                tooltipContent: "Relatórios",
              ),
               SideMenuItem(
                title: 'Imprimir etiquetas',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.print_rounded),
                tooltipContent: "Imprimir etiquetas",
              ),
              SideMenuItem(
                title: 'Configuração',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.settings_rounded),
                tooltipContent: "Configuração",
              ),
              SideMenuItem(
                title: 'Abertura de demandas',
                onTap: (pagina, __) => sideMenu.changePage(pagina),
                icon: const Icon(Icons.support_agent_rounded),
                tooltipContent: "Abertura de demandas",
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children:  const [
                BuscasPage(),
                EntradaPage(),
                AutoridadePage(),
                SelecionarCodigoMarcPage(),
                PesquisarReservaPage(),
                DevolucaoPage(),
                ConfigurarEmailPage(),
                RelatoriosPage(),
                EtiquetasPage(),
                ConfiguracaoSistemaPage(),
                AberturaDeDemandasPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
