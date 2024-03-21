import 'package:app/chat/chat.dart'; // Make sure this import is correct
import 'package:app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatPage(
        receiverEmail: 'aarruwanthie@gmail.com',
        receiverID: 'tDsSD8nQySbmUwL7nNjuKL3GRp22',
      ),
    );
  }
}
