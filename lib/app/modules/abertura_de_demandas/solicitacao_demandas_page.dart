import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/abertura_de_demandas/controllers/abertura_de_demandas_controller.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_check_box_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';

class SolicitacaoDemandasPage extends StatelessWidget {
  final AberturaDeDemandasController controller;
  const SolicitacaoDemandasPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              TextFormFieldWidget(
                titulo: 'Seu nome: ',
                width: size.width * 0.35,
                validator: true,
                controller: controller.nomeController,
              ),
              const SizedBox(height: 16.0),
              TextFormFieldWidget(
                titulo: 'Seu email: ',
                validator: true,
                width: size.width * 0.35,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16.0),
              TextFormFieldWidget(
                titulo: 'Telefone/celular:',
                validator: true,
                width: 170,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                controller: controller.telefoneController,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Instruções importantes',
                style: ClassAppEstilosTexto.vermelho16BoldMontserrat,
              ),
              Text(
                '* Entre em contato com o suporte ANTES de abrir a demanda, pois você precisará informar abaixo o nome de quem lhe atendeu.',
                style: ClassAppEstilosTexto.preto16w400Montserrat,
              ),
              Text(
                '* Informe apenas 1 (uma) solicitação/assunto por demanda.',
                style: ClassAppEstilosTexto.preto16w400Montserrat,
              ),
              Text(
                '* Explique o que deseja de forma clara e objetiva.',
                style: ClassAppEstilosTexto.preto16w400Montserrat,
              ),
              const SizedBox(height: 16.0),
              TextFormFieldWidget(
                titulo: '',
                maxLines: 10,
                validator: true,
                controller: controller.solicitacaoController,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Especifique o tipo de demanda: ',
                style: ClassAppEstilosTexto.azul16w400Montserrat,
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Flexible(
                    child: CustomCheckBoxWidget(
                      value: controller.isAlteracaoCorrecao,
                      onChanged: (_) => context.read<AberturaDeDemandasController>().marcarAlteracaoCorrecao(),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Alteração/correção de recurso existente',
                      style: ClassAppEstilosTexto.preto16w400Montserrat,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomCheckBoxWidget(
                      value: controller.isInclusaoRecurso,
                      onChanged: (_) => context.read<AberturaDeDemandasController>().marcarInclusaoRecurso(),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Inclusão de novo recurso',
                      style: ClassAppEstilosTexto.preto16w400Montserrat,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: ClassAppColors.preto,
              ),
              controller.isLoading == true ?  const Center(child: CircularProgressIndicator()) 
              : CustomElevatedButtonWidget(
                titulo: 'Abrir demanda',
                icone: Icons.add,
                width: 250,
                cor: ClassAppColors.verde,
                onPressed: () async {
                  await context.read<AberturaDeDemandasController>().setDemanda().then(
                  (response) {
                      if (response.codigoRetorno.toString() == "201") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                        );
                        context.read<AberturaDeDemandasController>().limparControllers();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao abrir demanda!', largura: size.width * 0.37, altura: size.height * 0.45)
                        );
                      }
                    },
                  );
                },
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
