
import 'package:flutter/material.dart';
import './home/home.dart';
import './redux/reducers.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:chickly/redux/app_state.dart';


void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  final Store<AppState> _store = Store<AppState>(
    mainReducer,
    initialState:AppState.initial()
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoreProvider<AppState>(
        store: _store,
        child: Home(),
      ),
    );
  }
}







