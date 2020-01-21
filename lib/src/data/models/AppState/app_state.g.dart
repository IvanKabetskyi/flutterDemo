// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    carrier: json['carrier'] == null
        ? null
        : Carrier.fromJson(json['carrier'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'carrier': instance.carrier,
    };
