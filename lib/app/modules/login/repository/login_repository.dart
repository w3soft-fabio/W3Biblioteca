import 'dart:convert';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;
import 'package:flutter/foundation.dart';
import 'package:w3biblioteca/app/modules/login/models/class_login_data.dart';
import 'package:w3biblioteca/app/services/http_service.dart';

class LoginRepository {
  final HttpService http;

  LoginRepository(this.http);

  Future<ClassLoginData> fazerLogin({
    required cpf,
    required senha,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse(
            "${HttpService.baseUrl}usuarios/validarLogin/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          <String, String>{
            "cpf": cpf,
            "senha": senha,
          },
        ),
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        if (body["erro"] == "") {
          session.clEmpresaLogada.usuarioID = body["usuarioID"];
          session.clEmpresaLogada.cpf = body["cpf"];
          session.clEmpresaLogada.nome = body["nome"];
          return ClassLoginData.fromMap(body);
        } else {
          session.clEmpresaLogada.usuarioID = "0";
          session.clEmpresaLogada.cpf = "";
          session.clEmpresaLogada.nome = "";
          return ClassLoginData.fromMap(body);
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }
}
