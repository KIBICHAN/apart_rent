import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final String label;
  const CustomTextField({Key? key, required this.hint, required this.label, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      keyboardType: type,
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
