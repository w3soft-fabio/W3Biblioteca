import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String texto;
  final void Function() onTap;
  const CardWidget({super.key, required this.texto, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 480) {
        return InkWell(
          onTap: onTap,
          child: Ink(
            width: MediaQuery.of(context).size.height * 0.3,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(child: Text(texto, textAlign: TextAlign.center)),
          ),
        );
      } else {
        return InkWell(
          onTap: onTap,
          child: Ink(
            width: MediaQuery.of(context).size.height * 0.2,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(child: Text(texto, textAlign: TextAlign.center)),
          ),
        );
      }
    });
  }
}
