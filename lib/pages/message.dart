import 'package:flutter/material.dart';

class UserMessage extends StatefulWidget {
  @override
  _UserMessageState createState() => _UserMessageState();
}

class _UserMessageState extends State<UserMessage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Message Page',
        style: TextStyle(fontSize: 58),
      ),
    );
  }
}
