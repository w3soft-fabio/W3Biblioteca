import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class CustomAppBarWidget extends PreferredSize {
  final String titulo;
  final VoidCallback? logout, configuracao;
  CustomAppBarWidget({
    super.key,
    required this.titulo,
    this.logout,
    this.configuracao,
  }) : super(
          preferredSize: const Size.fromHeight(90.0),
          child: AppBar(
            title: Text(
              titulo,
              style: ClassAppEstilosTexto.azul28w600Montserrat,
            ),
            centerTitle: true,
            toolbarHeight: 90.0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    tileMode: TileMode.clamp,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      ClassAppColors.azul,
                      Colors.white,
                      Colors.white,
                      ClassAppColors.azul,
                    ]),
              ),
            ),
            actions: [
              Visibility(
                visible: logout != null ? true : false,
                child: IconButton(
                  padding: const EdgeInsets.only(right: 20.0),
                  onPressed: logout,
                  icon: const Icon(
                    Icons.logout_rounded,
                  ),
                  tooltip: 'Sair',
                ),
              ),
            ],
          ),
        );
}
