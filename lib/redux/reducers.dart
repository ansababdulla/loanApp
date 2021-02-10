


import 'package:chickly/redux/actions.dart';
import 'package:chickly/redux/app_state.dart';

AppState updateDrinksReducer(AppState state, dynamic action) {
  if (action is UpdateDrinkAction) {
    return AppState(
        fadeDash: action.updateDash
    );
  }

  return state;
}