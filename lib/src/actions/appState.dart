import 'package:flutter/material.dart';
import 'package:my_app/src/Api/index.dart';
import 'package:my_app/src/models/app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

import 'package:my_app/src/types/appState.dart';

dynamic http = new Api();

ThunkAction<AppState> setAccessToken(
    String company, String email, String password, BuildContext context) {
  return (Store<AppState> store) async {
    dynamic tokens = await http.login(company, email, password);
    if (tokens) {
      dynamic currentCarrier =
          await http.getCurrentCarrier(accessToken: tokens.access_token);
      print('ThunkAction $currentCarrier');
      store.dispatch(AppStateType(type: 'ADD_TOKEN', value: tokens));
      Navigator.pushNamed(context, '/home');
    }
  };
}
