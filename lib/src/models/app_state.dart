class AppState {
  final String accessToken;
  final String refreshToken;

  AppState({this.accessToken, this.refreshToken});

  AppState copyWith({String accessToken, String refreshToken}) => AppState(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken);

  static AppState fromJson(dynamic json) => AppState(
      accessToken: json["accessToken"] as String,
      refreshToken: json["refreshToken"] as String);

  dynamic toJson() =>
      {'accessToken': accessToken, 'refreshToken': refreshToken};
}
