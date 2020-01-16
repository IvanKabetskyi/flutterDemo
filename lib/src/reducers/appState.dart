import 'package:my_app/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  print(action);
  switch (action.type) {
    case 'ADD_TOKEN':
      {
        print('AppState reducer ${action.token}');
        return state.copyWith(token: action.token);
      }
    default:
      break;
  }

  return state;
}
