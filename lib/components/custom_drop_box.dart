import 'package:flutter/material.dart';

class CustomDropBox extends StatefulWidget {
  final List<String> list;
  final String label;
  final String hint;
  const CustomDropBox({Key? key, required this.list, required this.hint, required this.label})
      : super(key: key);

  _DropBox createState() => _DropBox();
}

class _DropBox extends State<CustomDropBox> {
  String? _dropdownValue;

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: widget.label,
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
        elevation: 16,
        style: const TextStyle(color: Colors.grey),
        hint: Text(widget.hint, style: const TextStyle(fontSize: 17)),
        isExpanded: true,
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value, style: const TextStyle(fontSize: 17)));
        }).toList(),
        value: _dropdownValue,
        onChanged: dropdownCallback,
      ),
    );
  }
}
