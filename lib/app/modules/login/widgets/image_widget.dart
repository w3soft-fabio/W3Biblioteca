import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_session.dart'
    as session;

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: session.clEmpresaLogada.clienteID == '1' ?
      SizedBox(
        width: double.maxFinite, 
        height: 250,
        child: Image.asset('assets/images/logo1.png'),
      ) : session.clEmpresaLogada.clienteID == '2' ?
      SizedBox(
        width: double.maxFinite, 
        height: 250,
        child: Image.asset('assets/images/logo2.png'),
      ) : Container(),
    );
  }
}
