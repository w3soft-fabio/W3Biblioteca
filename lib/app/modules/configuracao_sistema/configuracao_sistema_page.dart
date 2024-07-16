import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/controllers/configuracao_sistema_controller.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import '../../shared/widgets/snack_bar_widget.dart';

class ConfiguracaoSistemaPage extends StatefulWidget {
  const ConfiguracaoSistemaPage({super.key});

  @override
  State<ConfiguracaoSistemaPage> createState() =>
      _ConfiguracaoSistemaPageState();
}

class _ConfiguracaoSistemaPageState extends State<ConfiguracaoSistemaPage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ConfiguracaoSistemaController>().getConfiguracaoDoSistema();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Configuração do sistema'),
      body: Consumer<ConfiguracaoSistemaController>(
        builder: (context, controller, __) {
          return ListView.builder(
            itemCount: controller.lstConfiguracao.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32.0),
                child: Form(
                  key: controller.formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormFieldWidget(
                        titulo: 'Multa',
                        width: 150,
                        validator: true,
                        controller: controller.multaController..text = controller.lstConfiguracao.elementAt(index).multaValorDiario.toString(),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      CustomElevatedButtonWidget(
                        titulo: 'Salvar', 
                        icone: Icons.check_circle_rounded,
                        width: 150,
                        cor: ClassAppColors.verde,
                        onPressed: () async {
                          await context.read<ConfiguracaoSistemaController>().updateConfiguracaoDoSistema().then((response) {
                            if(response.codigoRetorno.toString() == "200"){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                              context.read<ConfiguracaoSistemaController>().limparListaConfiguracao();
                              context.read<ConfiguracaoSistemaController>().getConfiguracaoDoSistema();
                              //atualiza valor da multa na session
                              session.clConfiguracaoSistema.multa = double.parse(controller.multaController.text.trim());
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao atualizar configurações.', largura: size.width * 0.37, altura: size.height * 0.45)
                              );
                            }
                          });
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
