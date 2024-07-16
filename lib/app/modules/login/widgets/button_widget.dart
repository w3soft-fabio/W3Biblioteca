import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final bool isLoading;
  const ButtonWidget({super.key, required this.onTap, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: ClassAppColors.azul,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            'Entrar',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .merge(const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
