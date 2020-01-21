import 'current_carrier.dart';

class AppState {
  String accessToken;
  String refreshToken;
  Carrier carrier;

  AppState({this.accessToken, this.refreshToken, this.carrier});

  AppState.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_tocen'];
    refreshToken = json['refersh_token'];
    carrier =
        json['carrier'] != null ? new Carrier.fromJson(json['carrier']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_tocen'] = this.accessToken;
    data['refersh_token'] = this.refreshToken;
    if (this.carrier != null) {
      data['carrier'] = this.carrier.toJson();
    }
    return data;
  }
}
