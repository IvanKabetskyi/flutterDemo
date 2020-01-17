class AppState {
  final String accessToken;
  final String refreshToken;
  final Map<String, dynamic> carrier;

  final int driverId;
  final String driverNote;
  final String firstName;
  final String lastName;
  final bool isOwner;
  final Map<String, dynamic> truck;

  AppState(
      {this.accessToken,
      this.refreshToken,
      this.carrier,
      this.driverId,
      this.driverNote,
      this.firstName,
      this.lastName,
      this.isOwner,
      this.truck});

  AppState copyWith(
          {String accessToken,
          String refreshToken,
          Map<String, dynamic> carrier,
          int driverId,
          String driverNote,
          String firstName,
          String lastName,
          bool isOwner,
          Map<String, dynamic> truck}) =>
      AppState(
          accessToken: accessToken ?? this.accessToken,
          refreshToken: refreshToken ?? this.refreshToken,
          carrier: carrier ?? this.carrier,
          driverId: driverId ?? this.driverId,
          driverNote: driverNote ?? this.driverNote,
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          isOwner: isOwner ?? this.isOwner,
          truck: truck ?? this.truck);

  static AppState fromJson(dynamic json) => AppState(
        accessToken: json['accessToken'] as String,
        refreshToken: json['refreshToken'] as String,
        carrier: json['carrier'] as Map<String, dynamic>,
        driverId: json['driverId'] as int,
        driverNote: json['driverNote'] as String,
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        isOwner: json['isOwner'] as bool,
        truck: json['truck'] as Map<String, dynamic>,
      );

  dynamic toJson() => {
        'accessToken': accessToken,
        'refreshToken': refreshToken,
        'carrier': carrier,
        'driverId': driverId,
        'driverNote': driverNote,
        'firstName': firstName,
        'lastName': lastName,
        'isOwner': isOwner,
        'truck': truck
      };
}
