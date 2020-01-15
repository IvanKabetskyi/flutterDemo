import 'package:flutter/material.dart';

import './../components/Drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _homeKey =
        GlobalKey<FormState>(debugLabel: '_homeScreenkey');
    // Navigator.pushNamed(context, '/login');
    return Scaffold(
      key: _homeKey,
      body: Center(
          child: RaisedButton(
        child: Text('Go to chat Screen'),
        onPressed: () {
          Navigator.pushNamed(context, '/chat');
        },
      )),
      drawer: DrawerComponent(),
    );
  }
}
