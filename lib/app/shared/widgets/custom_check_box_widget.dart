import 'package:flutter/material.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  final bool? value;
  final void Function(bool?)? onChanged;
  
  const CustomCheckBoxWidget({
    super.key,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      value: value,
      onChanged:onChanged
    );
  }
}
