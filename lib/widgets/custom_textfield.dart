import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtController;
  final String label;
  final bool obscureText;

  const CustomTextfield({
    super.key,
    required this.txtController,
    required this.label,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    final Color mainCol = Color.fromARGB(244, 23, 44, 63);
    return TextField(
      controller: txtController,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: TextStyle(color: Colors.black),
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: mainCol),
        ),
      ),
    );
  }
}
