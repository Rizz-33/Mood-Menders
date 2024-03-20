import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({Key? key, required this.message, required this.isCurrentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final bubbleColor = isCurrentUser
        ? (isDarkMode ? Color.fromARGB(99, 80, 123, 232) : Color.fromARGB(200, 0, 47, 167))
        : (isDarkMode ? Colors.grey[900] : Colors.grey[300]);
    final textColor = isCurrentUser
        ? Colors.white
        : (isDarkMode ? Colors.white : Colors.black);

    return Container(
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Text(
        message,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
