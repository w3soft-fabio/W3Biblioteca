// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_generic_response.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;
import 'package:w3biblioteca/app/modules/abertura_de_demandas/models/class_abertura_de_demandas_data.dart';
import 'package:w3biblioteca/app/services/http_service.dart';

class AberturaDeDemandaRepository {
  final HttpService http;

  AberturaDeDemandaRepository(this.http);

  Future<ClassGenericResponse> setDemanda({
    required String nome,
    required String email,
    required String solicitacao,
    required String instituicao,
    required String telefoneInstituicao,
    required String tipoSolicitacao,
  }) async {
    try {
      var request = await http.getHttp.post(
        Uri.parse(
            "${HttpService.baseUrl}demandas/setDemanda/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          <String, dynamic>{
            "nome": nome,
            "login": session.clEmpresaLogada.cpf,
            "email": email,
            "solicitacao": solicitacao,
            "status": "Aberto",
            "instituicao": instituicao,
            "usuarioID": session.clEmpresaLogada.usuarioID,
            "escolaID": session.clEmpresaLogada.clienteID,
            "instituicaoTipo": "biblioteca",
            "telefoneInstituicao": telefoneInstituicao,
            "data_previsao_conclusao": DateFormat('yyyy-MM-dd')
                .format(DateTime.now().add(const Duration(days: 5))),
            "data": DateTime.now().toString(),
            "tipoSolicitacao": tipoSolicitacao,
            "demanda_contato": "",
          },
        ),
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

  Future<List<ClassAberturaDeDemandasData>> getDemandas() async {
    try {
      var request = await http.getHttp.get(Uri.parse(
          '${HttpService.baseUrl}demandas/getDemandas/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}'));
      if (request.statusCode == 200) {
        var body = jsonDecode(request.body);
        return (body as List).map((e) => ClassAberturaDeDemandasData.fromMap(e)).toList();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

  Future<ClassGenericResponse> updateDemanda({
    required int id,
  }) async {
    try {
      var request = await http.getHttp.get(
        Uri.parse(
            "${HttpService.baseUrl}demandas/updateDemanda/${session.clEmpresaLogada.clienteID}/${session.clEmpresaLogada.usuarioID}/$id"),
        headers: {"Content-Type": "application/json"},
      );
      if (request.statusCode == 200 || request.statusCode == 201) {
        var body = jsonDecode(request.body);
        return ClassGenericResponse.fromMap(body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    throw Exception();
  }

}
