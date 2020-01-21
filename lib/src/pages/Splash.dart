import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/block/app/app_state_bloc.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  AppBloc _appBloc;

  @override
  void initState() {
    super.initState();
    _appBloc = BlocProvider.of<AppBloc>(context);

    Timer(Duration(microseconds: 300), () {
      print('Splash');
      String accessToken = _appBloc.state.accessToken;

      if (accessToken is String) {
        Navigator.pushNamed(context, '/home');
      } else {
        Navigator.pushNamed(context, '/login');
      }
    });
  }

  void disponce() {
    _appBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg_pic_login.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
