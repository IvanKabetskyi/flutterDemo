import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import './src/pages/Home.dart';

import './src/pages/Chat.dart';

import './src/pages/Login.dart';

import './src/pages/Splash.dart';

/// _____REDUX______

import 'package:my_app/src/models/app_state.dart';

import 'package:my_app/src/reducers/appState.dart';

/// ________________________________

void main() async {
  // Redux

  final store = Store<AppState>(reducer,
      initialState: AppState(), middleware: [thunkMiddleware]);

  // _______________________________

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({Key key, this.store}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        routes: {
          '/': (context) => Splash(),
          '/chat': (context) => ChatPage(),
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage()
        },
      ),
    );
  }
}
