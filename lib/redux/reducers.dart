import '../redux/app_state.dart';
import '../redux/actions.dart';


AppState mainReducer(state,action) {
  return AppState(fadeDash: fadeReducer(state.fadeDash,action));
}

fadeReducer(fadeDash,action) {
  if (action is UpdateFadeAction) {
    return action.fadeDash;
  }
  return fadeDash;
}