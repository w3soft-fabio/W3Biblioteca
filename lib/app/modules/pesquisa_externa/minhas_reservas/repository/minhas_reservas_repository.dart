import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../../services/http_service.dart';
import '../../../reservas/models/class_reservas_data.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class MinhasReservasRepository {
  final HttpService http;

  MinhasReservasRepository(this.http);

  Future<List<ClassReservasData>> getMinhasReservas({required String cpf}) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse(
            '${HttpService.baseUrl}reservas/getMinhasReservas/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$cpf'),
        headers: {"Content-Type": "application/json"},
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return (body as List).map((e) => ClassReservasData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
