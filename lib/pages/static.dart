import 'package:flutter/material.dart';

class UserStatic extends StatefulWidget {
  @override
  _UserStaticState createState() => _UserStaticState();
}

class _UserStaticState extends State<UserStatic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Statics Page',
        style: TextStyle(fontSize: 58),
      ),
    );
  }
}
