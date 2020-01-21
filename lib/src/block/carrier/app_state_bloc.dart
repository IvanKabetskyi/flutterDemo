import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/Modal/modal.dart';

import 'package:my_app/src/block/carrier/app_state.dart';
import 'package:my_app/src/block/carrier/app_state_event.dart';
import 'package:my_app/src/data/models/app_state.dart';
import 'package:my_app/src/data/repositories/carrier_repositories.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppRepository repository;

  AppBloc({@required this.repository});

  @override
  AppState get initialState => AppInitialState();

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if (event is FetchLogin) {
      yield AppLoadingState();
      showDialog(
          context: event.context, builder: (BuildContext context) => Modal());
      try {
        AppState appState =
            await Future.delayed(Duration(seconds: 5), () async {
          AppState appState = await repository.login(
              event.company, event.email, event.password, event.context);
          return appState;
        });

        print(appState.accessToken);
        yield appState;
        Navigator.of(event.context).pushNamed('/home');
      } catch (e) {
        yield AppErrorState(message: e.toString());
      }
    } else if (event is ChangeAccessToken) {
      AppState appState = state;

      yield AppLoadingState();

      appState.accessToken = event.accessToken;

      yield appState;
    }
  }
}
