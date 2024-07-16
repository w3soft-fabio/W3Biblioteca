import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/services/http_service.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../../../classes/classes_do_app/class_generic_response.dart';
import '../models/class_devolucao_data.dart';

class DevolucaoRepository {
  final HttpService http;

  DevolucaoRepository(this.http);

  Future<List<ClassDevolucaoData>> pesquisarLivroEmprestado({
    required String exemplarNumero,
    required String cpf,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}devolucao/pesquisarLivroEmprestado/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            "exemplarNumero": exemplarNumero,
            "cpf": cpf,
          }),
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = json.decode(request.body);
        return (body as List).map((e) => ClassDevolucaoData.fromMap(e)).toList();
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<ClassGenericResponse> fazerDevolucao({
    required String livroDataID,
    required String emprestimoDataID,
    required String exemplarNumero,
    required String cpf,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}devolucao/fazerDevolucao/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            "livroDataID": livroDataID,
            "emprestimoDataID": emprestimoDataID,
            "exemplarNumero": exemplarNumero,
            "cpf": cpf,
          }),
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
}
