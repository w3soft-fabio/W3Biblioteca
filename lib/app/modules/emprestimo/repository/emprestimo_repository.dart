import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart' as session;
import '../../../classes/classes_do_app/class_generic_response.dart';
import '../../../services/http_service.dart';
import '../models/class_pessoa_dados.dart';
import '../models/class_reserva_emprestimo_data.dart';

class EmprestimoRepository {
  final HttpService http;

  EmprestimoRepository(this.http);

  Future<ClassPessoaDados> getEmprestimoLivro({ required String cpf }) async {
    try {
      var request = await http.getHttp.post(Uri.parse("${HttpService.baseUrl}integracao/getW3UnitecAluno/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String> {
        "cpf": cpf,
      }));
      if (request.statusCode == 200 ) {
        var body = jsonDecode(request.body);
        return ClassPessoaDados.fromMap(body);
      } 
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<ClassReservaEmprestimoData> getReservaEmprestimoLivro({ required String cpf, required String livroDataID }) async {
    try {
      var request = await http.getHttp.post(Uri.parse("${HttpService.baseUrl}reservas/getReservaEmprestimoLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String> {
        "livroDataID": livroDataID,
        "cpf": cpf,
      }));
      if (request.statusCode == 200 ) {
        var body = jsonDecode(request.body);
        return ClassReservaEmprestimoData.fromMap(body);
      } 
    } catch (error) {
      debugPrint(error.toString());
    }
    throw Exception();
  }
  
  Future<ClassGenericResponse> setEmprestimoLivro({
    required String livroDataID,
    required String exemplarNumero,
    required String emprestimoSituacao,
    required String emprestimoCPF,
    required String emprestoUltimoCPF,
    required String nome,
    required String email,
    required String telefone,
    required String celular,
    required String dataEmprestimo,
    required String dataEntregaPrevista,
    required String observacoesEmprestimo,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse(
              '${HttpService.baseUrl}emprestimo/setEmprestimoLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
            <String, String>{
              "livroDataID": livroDataID,
              "emprestimoSituacao": emprestimoSituacao,
              "emprestimoCPF": emprestimoCPF,
              "emprestimoUltimoCPF": emprestoUltimoCPF,
              "nome": nome,
              "email": email,
              "telefone": telefone,
              "celular": celular,
              "dataEmprestimo": dataEmprestimo,
              "dataEntregaPrevista": dataEntregaPrevista,
              "observacoesEmprestimo": observacoesEmprestimo,
              "exemplarNumero": exemplarNumero,
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
  
  Future<ClassGenericResponse> reservarLivro({
    required String livroDataID,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}emprestimo/reservarLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$livroDataID'),
          headers: {"Content-Type": "application/json"},
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
  
  Future<ClassGenericResponse> devolverLivro({
    required String livroDataID,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse('${HttpService.baseUrl}emprestimo/devolverLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$livroDataID'),
          headers: {"Content-Type": "application/json"},
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
  
  Future<ClassGenericResponse> updateEmprestimoLivro({
    required String emprestimoDataID,
    required String livroDataID,
  }) async {
    try {
      var request = await http.getHttp.post(
          Uri.parse(
              '${HttpService.baseUrl}emprestimo/updateEmprestimoLivro/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
            <String, String>{
              "emprestimoDataID": emprestimoDataID,
              "livroDataID": livroDataID,
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
}
