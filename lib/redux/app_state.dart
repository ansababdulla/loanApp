

class AppState {
  final String fadeDash;

  AppState({this.fadeDash
  });

  factory AppState.initial(){
    return AppState(fadeDash:'Dashboard');
  }
}