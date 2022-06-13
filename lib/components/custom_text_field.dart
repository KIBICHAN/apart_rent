import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String label;
  const CustomTextField({Key? key, required this.hint, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        hintText: hint,
        labelText: label,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
    );
  }
}
