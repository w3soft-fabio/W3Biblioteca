// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class ImportacaoRepository {
  final HttpService http;

  ImportacaoRepository(this.http);
  Future<ClassGenericResponse> setImportacao({
    required String textoImportacao,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse(
          '${HttpService.baseUrl}importacao/setImportacao/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}',
        ),
        body: {
          'textoImportacao' : textoImportacao,
        },
      );
      if (request.statusCode == 200) {
        final body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
