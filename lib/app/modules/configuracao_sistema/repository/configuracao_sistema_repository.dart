import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/modules/configuracao_sistema/models/class_configuracao_sistema_data.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/services/http_service.dart';

class ConfiguracaoSistemaRepository {
  final HttpService http;

  ConfiguracaoSistemaRepository(this.http);

  Future<List<ClassConfiguracaoSistemaData>> getConfiguracaoSistema() async {
    try {
      var request = await http.getHttp.get(
        Uri.parse(
            '${HttpService.baseUrl}configuracao/getConfiguracaoDoSistema/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
        headers: {"Content-Type": "application/json"},
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return (body as List).map((e) => ClassConfiguracaoSistemaData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<ClassGenericResponse> updateConfiguracaoDoSistema(
    {required ClassConfiguracaoSistemaData configuracao}
  ) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse(
            '${HttpService.baseUrl}configuracao/updateConfiguracaoDoSistema/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(<String, dynamic>{
            "multaValorDiario": configuracao.multaValorDiario,
          }),
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
