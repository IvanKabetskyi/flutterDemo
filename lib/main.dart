import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

import './src/pages/Home.dart';

import './src/pages/Chat.dart';

import './src/pages/Login.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/chat': (context) => ChatPage(),
        '/login': (context) => LoginPage()
      },
      // home: DrawerComponent(),
    );
  }
}
