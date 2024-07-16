import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../../../classes/classes_do_app/class_generic_response.dart';
import '../../../services/http_service.dart';
import '../models/class_reservas_data.dart';

class ReservasRepository {
  final HttpService http;

  ReservasRepository(this.http);

  Future<ClassGenericResponse> setReservarLivro({
    required String exemplarNumero,
    required String livroDataID,
    required String reservaData,
    String reservaExpira = '',
    required String cpf,
    required String nome,
    required String email,
    required String celular,
    String operacaoData = '',
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse(
              '${HttpService.baseUrl}reservas/setReservaLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
            <String, String>{
              "exemplarNumero": exemplarNumero,
              "livroDataID": livroDataID,
              "reservaData": reservaData,
              "reservaExpira": reservaExpira,
              "cpf": cpf,
              "nome": nome,
              "email": email,
              "celular": celular,
              "operacaoData": operacaoData,
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

  Future<List<ClassReservasData>> pesquisarReserva({
    required String exemplarNumero,
    required String cpf,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}reservas/pesquisarReserva/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            "exemplarNumero": exemplarNumero,
            "cpf": cpf,
          }),
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
  
  Future<ClassGenericResponse> cancelarReserva({
    required String exemplarNumero,
    required String reservasDataID,
    required String livroDataID,
    required String cpf,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}reservas/cancelarReserva/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            "reservasDataID": reservasDataID,
            "livroDataID": livroDataID,
            "exemplarNumero": exemplarNumero,
            "cpf": cpf,
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

  Future<ClassGenericResponse> checarReservaIgual({
    required String livroDataID,
    required String cpf,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}reservas/checarReservaIgual/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(<String, String>{
            "livroDataID": livroDataID,
            "cpf": cpf,
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
