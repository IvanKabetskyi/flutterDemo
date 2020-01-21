import 'package:flutter/material.dart';
import 'package:my_app/src/data/models/app_state.dart';

class AppInitialState extends AppState {}

class AppLoadingState extends AppState {}

class AppLoadedState extends AppState {}

class AppErrorState extends AppState {
  final String message;

  AppErrorState({@required this.message});
}
