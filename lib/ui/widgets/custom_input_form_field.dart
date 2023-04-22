import 'package:flutter/material.dart';

class CustomInputFormField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String?)? validator;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final String labelText;
  final int maxLines;
  final bool isObscure;
  const CustomInputFormField({
    super.key,
    required this.controller,
    required this.validator,
    this.suffixIcon,
    this.prefixIcon,
    required this.labelText,
    this.maxLines = 1,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      obscureText: isObscure,
      validator: (value) => validator!(value),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.blue[700],
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
