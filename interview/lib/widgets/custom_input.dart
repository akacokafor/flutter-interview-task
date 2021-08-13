import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);
  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontFamily: 'Poppins'),
      cursorColor: Color(0XFFFB724C),
      decoration: InputDecoration(
          filled: true,
          hintText: hint,
          labelText: label,
          fillColor: Color(0xFFF0F0F0),
          hintStyle: TextStyle(
            fontFamily: 'Poppins',
          ),
          labelStyle: TextStyle(
            color: Color(0xFFAEAEB2),
            fontFamily: 'Poppins',
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          )),
    );
  }
}
