import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_app/src/models/app_state.dart';

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
        child: StoreConnector<AppState, String>(
            converter: (store) => store.state.token,
            builder: (context, token) => Text('Go to chat Screen $token')),
        onPressed: () {
          Navigator.pushNamed(context, '/chat');
        },
      )),
      drawer: DrawerComponent(),
    );
  }
}
