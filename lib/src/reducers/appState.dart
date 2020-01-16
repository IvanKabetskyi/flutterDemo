import 'package:my_app/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  print(action);
  switch (action.type) {
    case 'ADD_TOKEN':
      {
        print('AppState reducer ${action.value}');
        return state.copyWith(
            accessToken: action.value['access_token'],
            refreshToken: action.value['refresh_token']);
      }
    default:
      break;
  }

  return state;
}
