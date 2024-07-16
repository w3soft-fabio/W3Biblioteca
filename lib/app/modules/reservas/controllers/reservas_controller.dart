import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:w3biblioteca/app/modules/reservas/models/class_reservas_data.dart';
import 'package:w3biblioteca/app/modules/reservas/repository/reservas_repository.dart';
import '../../../classes/classes_do_app/class_generic_response.dart';

class ReservasController extends ChangeNotifier {
  final ReservasRepository reservasRepository;

  ReservasController(this.reservasRepository);

  bool isLoading = false;
  final formKey = GlobalKey<FormState>();

  final maskCpf = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  final maskCelular = MaskTextInputFormatter(
      mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});

  void carregando() {
    isLoading = true;
    notifyListeners();
  }

  void carregado() {
    isLoading = false;
    notifyListeners();
  }

  void limparControllers() {
    exemplarNumeroController.clear();
    reservaDataController.clear();
    reservaExpiraController.clear();
    cpfController.clear();
    cpfReservaController.clear();
    nomeController.clear();
    emailController.clear();
    celularController.clear();
    operacaoDataController.clear();
    reservaDataController.clear();
  }

  //CONTROLADORES DE TEXTO
  var exemplarNumeroController = TextEditingController();
  var reservaDataController = TextEditingController();
  final reservaExpiraController = TextEditingController();
  final cpfController = TextEditingController();
  final cpfReservaController = TextEditingController();
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final celularController = TextEditingController();
  final operacaoDataController = TextEditingController();

  Future<ClassGenericResponse> reservarLivro({
    required String exemplarNumero,
    required String livroDataID,
  }) async {
    if (formKey.currentState!.validate()) {
      carregando();
      var reserva = await reservasRepository.setReservarLivro(
        exemplarNumero: exemplarNumero,
        livroDataID: livroDataID,
        reservaData: reservaDataController.text.trim(),
        nome: nomeController.text.trim(),
        cpf: cpfReservaController.text.trim(),
        email: emailController.text.trim(),
        celular: celularController.text.trim(),
        operacaoData: DateTime.now().toString(),
      );
      carregado();
      notifyListeners();
      return reserva;
    } else {
      return ClassGenericResponse();
    }
  }

  var lstReservas = <ClassReservasData>{};

  void limparListaReservas() {
    lstReservas.clear();
    notifyListeners();
  }

  Future<List<ClassReservasData>> pesquisarReserva() async {
    carregando();
    var reserva = await reservasRepository.pesquisarReserva(
      exemplarNumero: exemplarNumeroController.text.trim(),
      cpf: cpfController.text.trim(),
    );
    if (reserva.isNotEmpty) {
      lstReservas.addAll(reserva);
    }
    notifyListeners();
    carregado();
    return reserva;
  }

  Future<ClassGenericResponse> cancelarReserva({
    required String exemplarNumero,
    required String livroDataID,
    required String reservasDataID,
    required String cpf,
  }) async {
    if (formKey.currentState!.validate()) {
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
    } else {
      return ClassGenericResponse();
    }
  }
  
  Future<ClassGenericResponse> checharReservaIgual({
    required String livroDataID,
    required String cpf,
  }) async {
    carregando();
    var reserva = await reservasRepository.checarReservaIgual(
      livroDataID: livroDataID,
      cpf: cpf,
    );
    carregado();
    notifyListeners();
    return reserva;
  }
}
