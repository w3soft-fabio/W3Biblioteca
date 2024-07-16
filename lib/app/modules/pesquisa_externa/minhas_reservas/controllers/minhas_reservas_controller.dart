import 'package:flutter/material.dart';
import '../../../../classes/classes_do_app/class_generic_response.dart';
import '../../../reservas/models/class_reservas_data.dart';
import '../../../reservas/repository/reservas_repository.dart';
import '../repository/minhas_reservas_repository.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class MinhasReservasController extends ChangeNotifier {
  final ReservasRepository reservasRepository;
  final MinhasReservasRepository minhasReservasRepository;

  MinhasReservasController(
      this.minhasReservasRepository, this.reservasRepository);

  var lstReservas = <ClassReservasData>{};

  bool isLoading = false;

  void limparListaReservas() {
    lstReservas.clear();
    notifyListeners();
  }

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  Future<List<ClassReservasData>> getMinhasReservas() async {
    carregando();
    var reservas = await minhasReservasRepository.getMinhasReservas(cpf: session.clEmpresaLogada.cpfAluno);
    lstReservas.addAll(reservas);
    notifyListeners();
    carregado();
    return reservas;
  }

  Future<ClassGenericResponse> cancelarReserva({
    required String exemplarNumero,
    required String livroDataID,
    required String reservasDataID,
    required String cpf,
  }) async {
    carregando();
    var reserva = await reservasRepository.cancelarReserva(
      reservasDataID: reservasDataID,
      exemplarNumero: exemplarNumero,
      livroDataID: livroDataID,
      cpf: cpf,
    );
    carregado();
    notifyListeners();
    return reserva;
  }
}
