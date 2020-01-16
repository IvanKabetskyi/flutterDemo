class AppState {
  final String token;

  AppState({this.token});

  AppState copyWith({String token}) => AppState(token: token ?? this.token);

  static AppState fromJson(dynamic json) =>
      AppState(token: json["token"] as String);

  dynamic toJson() => {'token': token};
}
