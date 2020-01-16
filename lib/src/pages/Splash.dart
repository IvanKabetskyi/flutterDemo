import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 300), () {
      Navigator.of(context).pushNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
