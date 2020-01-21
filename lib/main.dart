import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/block/carrier/app_state_bloc.dart';
import 'package:my_app/src/data/repositories/carrier_repositories.dart';

import './src/pages/Home.dart';

import './src/pages/Chat.dart';

import './src/pages/Login.dart';

import './src/pages/Splash.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (BuildContext context) =>
              AppBloc(repository: new AppRepositoryImpl()),
        )
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => Splash(),
          '/chat': (context) => ChatPage(),
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
