import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/modules/pesquisa_externa/historico/models/class_historico_data.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../../../../services/http_service.dart';

class HistoricoRepository {
  final HttpService http;

  HistoricoRepository(this.http);

  Future<List<ClassHistoricoData>> getHistorico({
    required String cpf,
  }) async {
    try {
      var request = await http.getHttp.get(
          Uri.parse('${HttpService.baseUrl}historico/getHistorico/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$cpf'),
          headers: {"Content-Type": "application/json"},
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return (body as List).map((e) =>  ClassHistoricoData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
