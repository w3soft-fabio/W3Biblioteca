import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_check_box_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';
import '../../shared/widgets/snack_bar_widget.dart';
import 'controllers/configurar_email_controller.dart';

class ConfigurarEmailPage extends StatefulWidget {
  const ConfigurarEmailPage({super.key});

  @override
  State<ConfigurarEmailPage> createState() => _ConfigurarEmailPageState();
}

class _ConfigurarEmailPageState extends State<ConfigurarEmailPage> {
  int contaID = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ConfigurarEmailController>().getEmailContas();
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var emailController = context.watch<ConfigurarEmailController>();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Configuração de Email'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 32.0),
        child: Form(
          key: emailController.formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    Center( 
                      child: Text('Contas de e-mails', style: ClassAppEstilosTexto.azul28w600Montserrat)),
                    const SizedBox(height: 16.0),
                    emailController.isLoading == true ?  const Center(child: CircularProgressIndicator()) : 
                    emailController.lstEmailContas.isNotEmpty ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: emailController.lstEmailContas.length,
                      itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          emailController.apelidoController.text = emailController.lstEmailContas.elementAt(index).apelido;
                          emailController.enderecoController.text = emailController.lstEmailContas.elementAt(index).endereco;
                          emailController.credenciaisUsuariosController.text = emailController.lstEmailContas.elementAt(index).credenciaisUsuarios;
                          emailController.credenciaisSenhaController.text = emailController.lstEmailContas.elementAt(index).credenciaisSenha;
                          emailController.smtpHostController.text = emailController.lstEmailContas.elementAt(index).smtpHost;
                          emailController.smtpPortController.text = emailController.lstEmailContas.elementAt(index).smtpPort;
                          emailController.isSMTP = emailController.stgToBool(emailController.lstEmailContas.elementAt(index).smtpSSL);
                          contaID = emailController.lstEmailContas.elementAt(index).contaID;
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        title: Text(emailController.lstEmailContas.elementAt(index).apelido, style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat,),
                        subtitle: Text(emailController.lstEmailContas.elementAt(index).endereco),
                      );
                    }) : Center(
                      child: Text('Você não tem nenhuma conta de e-mail cadastrada.', style: ClassAppEstilosTexto.vermelho16w400Montserrat)),
                  ],
                ),
              ),
              const SizedBox(width: 8.0),
              Flexible(
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 48.0),
                     CustomTextFormFieldWidget(
                      titulo: 'Apelido da conta',
                      validator: true,
                      controller: emailController.apelidoController,
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormFieldWidget(
                      titulo: 'Endereço de email da conta',
                      validator: true,
                      controller: emailController.enderecoController,
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormFieldWidget(
                      titulo: 'Login da conta',
                      validator: true,
                      controller: emailController.credenciaisUsuariosController,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormFieldWidget(
                      titulo: 'Senha da conta',
                      validator: true,
                      obscureText: true,
                      controller: emailController.credenciaisSenhaController,
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormFieldWidget(
                      titulo: 'Endereço do servidor SMTP',
                      validator: true,
                      controller: emailController.smtpHostController,
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormFieldWidget(
                      titulo: 'Porta do serviço',
                      validator: true,
                      controller: emailController.smtpPortController,
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomCheckBoxWidget(
                            value: emailController.isSMTP,
                            onChanged: (_) => emailController.marcarCheckSMTP(),
                          ),
                        ),
                        Flexible(
                            child: Text(
                          'Servidor usa SSL?',
                          style: ClassAppEstilosTexto.verde16w400Montserrat,
                          overflow: TextOverflow.ellipsis,
                        )),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 145,
                        child: CustomElevatedButtonWidget(
                          titulo: 'Salvar',
                          icone: Icons.check_circle_rounded,
                          cor: ClassAppColors.verde,
                          onPressed: () async {
                          if (emailController.formKey.currentState!.validate()) {
                            await context.read<ConfigurarEmailController>().setContasEmail(
                              contaID: contaID.toString(),
                            ).then((response) async {
                              if (response.statusCode == 200) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.codigoRetorno, largura: size.width * 0.37, altura: size.height * 0.45,
                                  ));
                                context.read<ConfigurarEmailController>().limparControllers();
                                context.read<ConfigurarEmailController>().limparListaEmailContas();
                                await context.read<ConfigurarEmailController>().getEmailContas();
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBarWidget(
                                    cor: ClassAppColors.vermelho, 
                                    mensagem: response.codigoRetorno, 
                                    largura: size.width * 0.37, 
                                    altura: size.height * 0.45,
                                ));
                              }
                            });
                          }},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
