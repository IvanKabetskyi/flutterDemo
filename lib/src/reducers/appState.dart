import 'package:my_app/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  switch (action.type) {
    case 'ADD_TOKEN':
      {
        return state.copyWith(
            accessToken: action.value['access_token'],
            refreshToken: action.value['refresh_token']);
      }
    case 'ADD_CARRIER':
      {
        return state.copyWith(carrier: action.value);
      }
    default:
      break;
  }

  return state;
}
