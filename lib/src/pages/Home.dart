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
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        key: _homeKey,
        body: Center(
            child: RaisedButton(
          child: StoreConnector<AppState, dynamic>(
              converter: (store) => {
                    'accessToken': store.state.accessToken.toString(),
                    'refreshToken': store.state.accessToken.toString()
                  },
              builder: (context, tokens) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('accessToken: ${tokens["accessToken"]}'),
                        Text('refreshToken: ${tokens["refreshToken"]}')
                      ])),
          onPressed: () {
            Navigator.pushNamed(context, '/chat');
          },
        )),
        drawer: DrawerComponent(),
      ),
    );
  }
}
