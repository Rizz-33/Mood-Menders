import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttontext;
  final void Function()? onTap;
  const MyButton({super.key, required this.buttontext, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(colors: <Color>[
                Color(0xFF77CB7E),
                Color(0xFFB4CAE8),
              ]),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (buttontext),
                  style: const TextStyle(
                      color: const Color.fromARGB(255, 70, 66, 68),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )));
  }
}
