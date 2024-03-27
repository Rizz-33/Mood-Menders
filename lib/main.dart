import 'dart:async';

import 'package:app/activeUser/model/playlist_provider.dart';
import 'package:app/chat/service/auth/auth_gate.dart';
import 'package:app/firebase_options.dart'; // Make sure to import necessary files
import 'package:app/loading_page.dart';
import 'package:app/loading_page2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var primary = Color.fromARGB(255, 39, 142, 135);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => PlaylistProvider()), // Provide PlaylistProvider
        // Add other providers if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return loading_page();
          } else {
            return FutureBuilder(
              future: Future.delayed(Duration(seconds: 2)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return loading_page2();
                } else if (snapshot.connectionState ==
                    ConnectionState.done) {
                  return AuthGate();
                } else {
                  return loading_page();
                }
              },
            );
          }
        },
      ),
      theme: ThemeData(
        primaryColor: primary,
        cardColor: primary,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: primary,
          selectionColor: primary.withOpacity(0.3),
          selectionHandleColor: primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: primary),
        labelStyle: TextStyle(color: primary),
      ),
      ),
    );
  }
}
