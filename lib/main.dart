import 'package:app/chat/chat.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        //home: loading_page()
        home: ChatPage(receiverEmail: 'aarruwanthie@gmail.com', receiverID: 'tDsSD8nQySbmUwL7nNjuKL3GRp22')
        );
  }
}
