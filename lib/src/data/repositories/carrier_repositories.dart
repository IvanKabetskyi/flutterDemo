import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:my_app/src/Api/index.dart';
import 'package:my_app/src/data/models/app_state.dart';
import 'package:my_app/src/data/models/current_carrier.dart';

dynamic http = new Api();

abstract class AppRepository {
  Future<AppState> login(
      String company, String email, String password, BuildContext context);
}

class AppRepositoryImpl implements AppRepository {
  Future<Carrier> getCarrier(String token) async {
    dynamic response = await http.getCurrentCarrier(token);

    if (response.statusCode == 200) {
      Carrier data = new Carrier.fromJson(json.decode(response.body));
      return data;
    }

    throw Exception();
  }

  Future<Map<String, dynamic>> getToken(company, email, password) async {
    dynamic response = await http.getToken(company, email, password);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      return data;
    }

    throw Exception();
  }

  @override
  Future<AppState> login(String company, String email, String password,
      BuildContext context) async {
    try {
      Map<String, dynamic> tokens = await getToken(company, email, password);

      // Navigator.pushNamed(context, '/home');

      Carrier carrier = await getCarrier(tokens['access_token']);

      return new AppState(
          carrier: carrier,
          accessToken: tokens['access_token'],
          refreshToken: tokens['refresh_token']);
    } catch (e) {
      throw e.toString();
    }
  }

  // AppState changeAccessToken(String accesToken, BuildContext context) {
  //   AppBloc state = BlocProvider.of<AppBloc>(context);

  //   return state.appState;
  // }
}
