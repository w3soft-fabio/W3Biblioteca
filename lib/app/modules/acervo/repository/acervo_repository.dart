import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;
import 'package:w3biblioteca/app/modules/acervo/models/acervo_model.dart';
import 'package:w3biblioteca/app/services/http_service.dart';

class AcervoRepository {
  final HttpService http;

  AcervoRepository(this.http);

  Future<List<AcervoModel>> getCodigoAcervo() async {
    try {
      var request = await http.getHttp.get(Uri.parse(
          '${HttpService.baseUrl}acervo/getCodigoAcervo/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'));
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => AcervoModel.fromMap(e)).toList();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }
}
