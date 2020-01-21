import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_app/src/Modal/modal.dart';

import 'package:my_app/src/block/app/app_state.dart';
import 'package:my_app/src/block/app/app_state_event.dart';
import 'package:my_app/src/data/models/AppState/app_state.dart';
import 'package:my_app/src/data/repositories/app_repositories.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  @override
  AppState fromJson(Map<String, dynamic> json) {
    try {
      final appState = AppState.fromJson(json);

      return appState;
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(AppState state) {
    if (state is AppState) {
      return state.toJson();
    } else {
      return null;
    }
  }

  AppRepository repository;

  AppBloc({@required this.repository});

  @override
  AppState get initialState {
    return super.initialState ?? AppInitialState();
  }

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
        yield AppLoadedState(appState: appState);
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
