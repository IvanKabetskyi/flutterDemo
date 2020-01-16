import 'package:flutter/material.dart';
import 'package:my_app/src/Api/index.dart';
import 'package:my_app/src/models/app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

import 'package:my_app/src/types/appState.dart';

ThunkAction<AppState> setAccessToken(
    String company, String email, String password, BuildContext context) {
  return (Store<AppState> store) async {
    dynamic token = await login(company, email, password);
    print('ThunkAction $token');
    if (token is String) {
      store.dispatch(AppStateType(type: 'ADD_TOKEN', token: token));
      Navigator.pushNamed(context, '/home');
    }
  };
}
