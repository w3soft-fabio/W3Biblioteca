import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/modules/exemplar/models/class_exemplar_data.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class ExemplarRepository {
  final HttpService http;

  ExemplarRepository(this.http);

  Future<List<ClassExemplarData>> getExemplarDataID() async {
    try {
      var request = await http.getHttp.get(Uri.parse(
          '${HttpService.baseUrl}exemplares/getExemplarDataID/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'));
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassExemplarData.fromMap(e)).toList();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }
}
