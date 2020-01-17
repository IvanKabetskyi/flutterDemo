import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/src/Api/index.dart';
import 'package:my_app/src/models/app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

import 'package:my_app/src/types/appState.dart';

dynamic http = new Api();

ThunkAction<AppState> setAccessToken(
        String company, String email, String password, BuildContext context) =>
    (Store<AppState> store) async {
      dynamic response = await http.getTocket(company, email, password);
      if (response.statusCode == 200) {
        Map<String, dynamic> decodeResponceData = json.decode(response.body);
        store.dispatch(
            AppStateType(type: 'ADD_TOKEN', value: decodeResponceData));
        Navigator.pushNamed(context, '/home');
        dynamic currentCarrierResponse =
            await http.getCurrentCarrier(decodeResponceData['access_token']);
        if (currentCarrierResponse.statusCode == 200) {
          Map<String, dynamic> currentCarrier =
              json.decode(currentCarrierResponse.body);
          store.dispatch(
              AppStateType(type: 'ADD_CARRIER', value: currentCarrier));
        }
      }
    };
