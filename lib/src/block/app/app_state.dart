import 'package:flutter/material.dart';
import 'package:my_app/src/data/models/AppState/app_state.dart';

class AppInitialState extends AppState {}

class AppLoadingState extends AppState {}

class AppLoadedState extends AppState {
  final AppState appState;

  AppLoadedState({this.appState}) : super();
}

class AppErrorState extends AppState {
  final String message;

  AppErrorState({@required this.message});
}
