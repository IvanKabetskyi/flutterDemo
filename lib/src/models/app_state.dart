class AppState {
  final String accessToken;
  final String refreshToken;
  final Map<String, dynamic> carrier;

  AppState({this.accessToken, this.refreshToken, this.carrier});

  AppState copyWith(
          {String accessToken,
          String refreshToken,
          Map<String, dynamic> carrier}) =>
      AppState(
          accessToken: accessToken ?? this.accessToken,
          refreshToken: refreshToken ?? this.refreshToken,
          carrier: carrier ?? this.carrier);

  static AppState fromJson(dynamic json) => AppState(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      carrier: json['carrier'] as Map<String, dynamic>);

  dynamic toJson() => {
        'accessToken': accessToken,
        'refreshToken': refreshToken,
        'carrier': carrier
      };
}
