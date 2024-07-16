import 'dart:convert';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import '../../../classes/classes_do_app/class_generic_response.dart';
import '../models/class_email_contas.dart';

class ConfigurarEmailRepository {
  final HttpService http;

  ConfigurarEmailRepository(this.http);

  Future<List<ClassEmailContas>> getContasEmail() async {
    try {
      var request = await http.getHttp.get(
        Uri.parse(
            "${HttpService.baseUrl}contasEmail/getContasEmail/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}"),
        headers: {"Content-Type": "application/json"},
      );
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassEmailContas.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> setContasEmail({
    required String contaID,
    required String apelido,
    required String endereco,
    required String credenciaisUsuarios,
    required String credenciaisSenha,
    required String smtpHost,
    required String smtpPort,
    required String smtpSSL,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse(
              '${HttpService.baseUrl}contasEmail/setContasEmail/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
            <String, String>{
              "contaID": contaID,
              "apelido": apelido,
              "endereco": endereco,
              "credenciaisUsuarios": credenciaisUsuarios,
              "credenciaisSenha": credenciaisSenha,
              "smtpHost": smtpHost,
              "smtpPort": smtpPort,
              "smtpSSL": smtpSSL,
            },
          ));
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }

  Future sendEmail({
    required String contaID,
    required String assunto,
    required String mensagem,
    required List<String> lstDestinatarios,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse(
              '${HttpService.baseUrl}contasEmail/sendEmail/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
            <String, dynamic>{
              "contaID": contaID,
              "assunto": assunto,
              "mensagem": mensagem,
              "lstDestinatarios": [lstDestinatarios.first],
            },
          ));
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return body;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }
}
