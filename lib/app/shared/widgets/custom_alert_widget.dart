import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';

class CustomAlertWidget {
  static final CustomAlertWidget _instance = CustomAlertWidget.internal();

  CustomAlertWidget.internal();

  factory CustomAlertWidget() => _instance;

  static void showAlertSucesso(
    BuildContext context, {
    required String titulo,
    required String content,
  }) {
    
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          title: Text(titulo,
              style: ClassAppEstilosTexto.pretoNegrito16w600Montserrat),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(content, style: ClassAppEstilosTexto.verde16w400Montserrat),
            ],
          ),
        );
      },
    );
  }
  
  static void showAlertConfirmarExcluir(
    BuildContext context, {
    required String titulo,
    String? content,
    required Function() btnSim,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          title: Text(titulo,
              style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(content ?? '', style: ClassAppEstilosTexto.preto16w400Montserrat),
            ],
          ),
          actions: [
            CustomElevatedButtonWidget(
            titulo: 'Sim', 
            icone: Icons.check_circle_outline_rounded, 
            cor: ClassAppColors.vermelho,
            onPressed: () {
              btnSim();
              },
            ),
            CustomElevatedButtonWidget(
            titulo: 'Não', 
            icone: Icons.cancel_rounded,
            cor: ClassAppColors.verde,
            onPressed: () {
              Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  static void showAlertError(
    BuildContext context, {
    required String titulo,
    required String content,
    bool secondPop = false,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          title: Text(titulo,
              style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(content, style: ClassAppEstilosTexto.preto16w400Montserrat),
            ],
          ),
          actions: [
            CustomElevatedButtonWidget(
              titulo: 'Ok', 
              icone: Icons.check_circle_outline_rounded, 
              onPressed: () => Navigator.pop(context),
            )
          ],
        );
      },
    );
  }
}
