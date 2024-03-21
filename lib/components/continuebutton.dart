import 'package:flutter/material.dart';

class MyConButton extends StatelessWidget {
  final String buttontext;
  final void Function()? onTap;
  const MyConButton({super.key, required this.buttontext, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(colors: <Color>[
                Color(0xFF77CB7E),
                Color(0xFFB4CAE8),
              ]),
            ),
            padding: const EdgeInsets.all(20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ('Continue'),
                  style: TextStyle(
                      color: Color.fromARGB(255, 70, 66, 68),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
