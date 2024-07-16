import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/custom_theme_color.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/controllers/abertura_de_demandas_controller.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/repository/abertura_de_demanda_repository.dart';
import 'package:w3biblioteca/app/modules/acervo/repository/acervo_repository.dart';
import 'package:w3biblioteca/app/modules/buscas/controllers/buscas_controller.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/controllers/configuracao_sistema_controller.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/repository/configuracao_sistema_repository.dart';
import 'package:w3biblioteca/app/modules/devolucao/controller/devolucao_controller.dart';
import 'package:w3biblioteca/app/modules/devolucao/repository/devolucao_repository.dart';
import 'package:w3biblioteca/app/modules/email/controllers/configurar_email_controller.dart';
import 'package:w3biblioteca/app/modules/email/repository/configurar_email_repository.dart';
import 'package:w3biblioteca/app/modules/emprestimo/controllers/emprestimo_controller.dart';
import 'package:w3biblioteca/app/modules/emprestimo/repository/emprestimo_repository.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/controllers/entrada_livro_controller.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/repository/entrada_livro_repository.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/controllers/entrada_monografia_tese_dissertacao_controller.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/repository/entrada_monografia_tese_dissertacao_repository.dart';
import 'package:w3biblioteca/app/modules/etiquetas/controllers/etiquetas_controller.dart';
import 'package:w3biblioteca/app/modules/etiquetas/repository/etiquetas_repository.dart';
import 'package:w3biblioteca/app/modules/exemplar/repository/exemplar_repository.dart';
import 'package:w3biblioteca/app/modules/importacao/controllers/importacao_controller.dart';
import 'package:w3biblioteca/app/modules/importacao/repository/importacao_repository.dart';
import 'package:w3biblioteca/app/modules/login/login_page.dart';
import 'package:w3biblioteca/app/modules/login/repository/login_repository.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/buscas/controllers/buscas_externa_controller.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/controllers/historico_controller.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/repository/historico_repository.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/minhas_reservas/controllers/minhas_reservas_controller.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/minhas_reservas/repository/minhas_reservas_repository.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/pesquisa_externa_page.dart';
import 'package:w3biblioteca/app/modules/relatorios/controllers/relatorio_controller.dart';
import 'package:w3biblioteca/app/modules/relatorios/repository/relatorio_repository.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import 'package:w3biblioteca/app/modules/autoridade/controllers/autoridade_controller.dart';
import 'package:w3biblioteca/app/modules/autoridade/repository/autoridade_repository.dart';
import 'modules/autoridade/models/class_autoridades_data.dart';
import 'modules/home/controllers/home_controller.dart';
import 'modules/login/controllers/login_controller.dart';
import 'modules/reservas/controllers/reservas_controller.dart';
import 'modules/reservas/repository/reservas_repository.dart';

class AppWidget extends StatelessWidget {
  final String? cpf;
  const AppWidget({super.key, this.cpf});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => HttpService()),
        Provider(create: (context) => ClassAutoridadesData()),
        Provider(create: (context) => LoginRepository(context.read())),
        Provider(create: (context) => AutoridadeRepository(context.read())),
        Provider(create: (context) => EntradaLivroRepository(context.read())),
        Provider(create: (context) => EntradaMonograTeseDissertacaoRepository(context.read())),
        Provider(create: (context) => ImportacaoRepository(context.read())),
        Provider(create: (context) => AcervoRepository(context.read())),
        Provider(create: (context) => EmprestimoRepository(context.read())),
        Provider(create: (context) => ReservasRepository(context.read())),
        Provider(create: (context) => DevolucaoRepository(context.read())),
        Provider(create: (context) => ConfigurarEmailRepository(context.read())),
        Provider(create: (context) => MinhasReservasRepository(context.read())),
        Provider(create: (context) => RelatorioRepository(context.read())),
        Provider(create: (context) => HistoricoRepository(context.read())),
        Provider(create: (context) => ExemplarRepository(context.read())),
        Provider(create: (context) => EtiquetasRepository(context.read())),
        Provider(create: (context) => AberturaDeDemandaRepository(context.read())),
        Provider(create: (context) => ConfiguracaoSistemaRepository(context.read())),
        ChangeNotifierProvider(create: (context) => LoginController(context.read())),
        ChangeNotifierProvider(create: (context) => AutoridadeController(context.read())),
        ChangeNotifierProvider(create: (context) => EntradaLivroController(context.read(), context.read(), context.read())),
        ChangeNotifierProvider(create: (context) => EntradaMonografiaTeseDissertacaoController(context.read(), context.read(), context.read())),
        ChangeNotifierProvider(create: (context) => EmprestimoController(context.read())),
        ChangeNotifierProvider(create: (context) => EtiquetasController(context.read(), context.read())),
        ChangeNotifierProvider(create: (context) => ReservasController(context.read())),
        ChangeNotifierProvider(create: (context) => ConfigurarEmailController(context.read())),  
        ChangeNotifierProvider(create: (context) => DevolucaoController(context.read())),
        ChangeNotifierProvider(create: (context) => BuscasController(context.read(), context.read(), context.read())),
        ChangeNotifierProvider(create: (context) => BuscasExternaController(context.read(), context.read(), context.read())),
        ChangeNotifierProvider(create: (context) => MinhasReservasController(context.read(), context.read())),
        ChangeNotifierProvider(create: (context) => RelatorioController(context.read())),
        ChangeNotifierProvider(create: (context) => ConfiguracaoSistemaController(context.read())),
        ChangeNotifierProvider(create: (context) => HistoricoController(context.read())),
        ChangeNotifierProvider(create: (context) => ImportacaoController(context.read())),
        ChangeNotifierProvider(create: (context) => AberturaDeDemandasController(context.read())),
        ChangeNotifierProvider(create: (context) => HomeController(context.read(), context.read())),
      ],
      child: MaterialApp(
        title: 'W3Biblioteca',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch:CustomThemeColor.color,
        ),
        home: (cpf == null || cpf == '') ? const LoginPage() : const PesquisaExternaPage(),
      ),
    );
  }
}
