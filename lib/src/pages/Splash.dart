import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Navigator.pushNamed(context, '/login');
    return Scaffold();
  }
}
