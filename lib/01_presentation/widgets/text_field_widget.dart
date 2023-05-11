import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function()? onTap;
  final String hint, label;
  final TextEditingController controller;
  const TextFieldWidget({
    super.key,
    this.onTap,
    required this.hint,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.greenAccent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.greenAccent),
        ),
      ),
    );
  }
}
