import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:w3biblioteca/app/modules/login/models/class_login_data.dart';
import 'package:w3biblioteca/app/modules/login/repository/login_repository.dart';

class LoginController extends ChangeNotifier {
  final LoginRepository loginRepository;

  LoginController(this.loginRepository);

  final formKey = GlobalKey<FormState>();
  final maskCpf = MaskTextInputFormatter(mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  final cpfController = TextEditingController();
  final senhaController = TextEditingController();

  bool isLoading = false;

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  Future<ClassLoginData> fazerLogin() async {
    if (formKey.currentState!.validate()) {
      carregando();
      var usuario = await loginRepository.fazerLogin(
        cpf: cpfController.text.trim(),
        senha: senhaController.text.trim(), 
      );
      carregado();
      return usuario;
    } else {
      throw Exception();
    }
  }
}
