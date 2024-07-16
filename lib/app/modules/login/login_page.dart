import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/home/home_page.dart';
import 'package:w3biblioteca/app/modules/login/controllers/login_controller.dart';
import 'package:w3biblioteca/app/modules/login/widgets/button_widget.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/modules/login/widgets/image_widget.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import '../../classes/classes_do_app/class_app_colors.dart';
import '../../shared/widgets/snack_bar_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = context.watch<LoginController>();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: loginController.formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'W3Biblioteca',
                      style: ClassAppEstilosTexto.azul28w600Montserrat,
                    ),
                    const SizedBox(height: 16.0),
                    //Widget de imagem
                    const ImageWidget(),
                    const SizedBox(height: 16.0),
                    TextFormFieldWidget(
                      titulo: 'CPF',
                      validator: true,
                      inputFormatters: [
                        loginController.maskCpf,
                        LengthLimitingTextInputFormatter(14),
                      ],
                      length: 14,
                      controller: loginController.cpfController, 
                      width: 350,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormFieldWidget(
                      titulo: 'Senha',
                      validator: true,
                      obscureText: true,
                      controller: loginController.senhaController, 
                      width: 350,
                    ),
                    const SizedBox(height: 16.0),
                    //Widget botão enviar
                    loginController.isLoading == true ? const CircularProgressIndicator.adaptive() : ButtonWidget(
                      isLoading: loginController.isLoading,
                      onTap: () async {
                        await context.read<LoginController>().fazerLogin().then((response) {
                          if(response.erro.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.verde, mensagem: 'Login realizado com sucesso!', largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                            Future.delayed(const Duration(seconds: 1));
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                            loginController.cpfController.clear();
                            loginController.senhaController.clear();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: response.erro, largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
