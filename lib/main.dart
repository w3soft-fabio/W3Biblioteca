import 'package:flutter/material.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:w3biblioteca/app/app_widget.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;

void main() {
  // usePathUrlStrategy();
  String? clienteID = Uri.base.queryParameters["clienteID"];
  String? cpf = Uri.base.queryParameters["cpf"];

  String getClienteID() {
    String clienteID = "1";

    return clienteID; //W3Biblioteca1
  }
  //VERIFICA SE O CLIENTEID FOR NULL
  clienteID == null ? session.clEmpresaLogada.clienteID = getClienteID() : session.clEmpresaLogada.clienteID = clienteID;
  
  session.clEmpresaLogada.cpfAluno = cpf ?? '';

  runApp(AppWidget(cpf: cpf));
}
