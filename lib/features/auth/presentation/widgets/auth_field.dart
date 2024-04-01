import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText enter some text';
        }
        return null;
      },
    );
  }
}
