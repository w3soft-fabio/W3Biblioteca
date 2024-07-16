import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import 'package:w3biblioteca/app/modules/relatorios/models/class_data_model_relatorio_response.dart';
import 'package:w3biblioteca/app/services/http_service.dart';

class RelatorioRepository {
  final HttpService http;

  RelatorioRepository(this.http);

    Future<ClassDataModelRelatorioResponse> getRelatorio({
    final String relatorioID = '',
    final String relatorioFormato = 'pdf',
    final String? arg0,
    final String? arg1,
    final String? arg2,
    final String? arg3,
    final String? arg4,
    final String? arg5,
    final String? arg6,
    final String? arg7,
    final String? arg8,
    final String? arg9,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}relatorios/getRelatorio/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            "relatorioID": relatorioID,
            "relatorioFormato": relatorioFormato,
            "arg0": arg0 ?? '',
            "arg1": arg1 ?? '',
            "arg2": arg2 ?? '',
            "arg3": arg3 ?? '',
            "arg4": arg4 ?? '',
            "arg5": arg5 ?? '',
            "arg6": arg6 ?? '',
            "arg7": arg7 ?? '',
            "arg8": arg8 ?? '',
            "arg9": arg9 ?? '',
          }),
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return ClassDataModelRelatorioResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
