import 'package:flutter/material.dart';

class UserDiary extends StatefulWidget {
  @override
  _UserDiaryState createState() => _UserDiaryState();
}

class _UserDiaryState extends State<UserDiary> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Diary Page',
        style: TextStyle(fontSize: 58),
      ),
    );
  }
}
