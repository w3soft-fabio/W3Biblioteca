import 'package:flutter/material.dart';

class CustomIconButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color? cor;
  final Color? corIcon;
  final void Function()? onPressed;
  final String? tooltip;
  const CustomIconButtonWidget({super.key, required this.icon, this.onPressed, this.cor, this.corIcon, this.tooltip});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: cor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: corIcon,
        tooltip: tooltip,
      ),
    );
  }
}
