import 'package:json_annotation/json_annotation.dart';
import 'package:my_app/src/data/models/Carrier/current_carrier.dart';

part 'app_state.g.dart';

@JsonSerializable()
class AppState {
  String accessToken;
  String refreshToken;
  Carrier carrier;

  AppState({this.accessToken, this.refreshToken, this.carrier});

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
