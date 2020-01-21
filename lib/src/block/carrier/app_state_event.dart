import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppEvent extends Equatable {}

class FetchLogin extends AppEvent {
  final String email;
  final String company;
  final String password;
  final BuildContext context;

  FetchLogin({@required this.email, this.company, this.password, this.context});

  @override
  List<Object> get props => null;
}

class ChangeAccessToken extends AppEvent {
  final String accessToken;
  final BuildContext context;

  ChangeAccessToken({this.accessToken, this.context});

  @override
  List<Object> get props => null;
}
