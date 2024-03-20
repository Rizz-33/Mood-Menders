import 'package:app/chat/chat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        //home: loading_page()
        home: Chat(receiverEmail: 'aarruwanthie@gmail.com', receiverID: 'woweo3',),
        );
  }
}
