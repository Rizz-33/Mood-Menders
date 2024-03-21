import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromARGB(255, 70, 66, 68),
          )),
          focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(251, 241, 234, 219))),
          fillColor: const Color.fromARGB(251, 241, 255, 252),
          filled: true,
          hintText: hintText,
          hintStyle:
              const TextStyle(color: Color.fromARGB(255, 103, 100, 101))),
    );
  }
}
