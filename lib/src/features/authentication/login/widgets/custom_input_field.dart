import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    required this.label,
    required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(32.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
        ),
        hintText: label,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      obscureText: obscureText,
    );
  }
}
