import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/modules/etiquetas/models/class_etiquetas_data.dart';
import 'package:w3biblioteca/app/services/http_service.dart';

class EtiquetasRepository {
  final HttpService http;

  EtiquetasRepository(this.http);

  Future<List<ClassEtiquetasData>> getEtiquetas(
    {
      required String nome
    }
  ) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse(
            '${HttpService.baseUrl}etiqueta/getEtiquetas/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$nome'),
        headers: {"Content-Type": "application/json"},
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return (body as List).map((e) => ClassEtiquetasData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
