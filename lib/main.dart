import 'package:chickly/AppyLoan/NewLoan/applyLoanTab.dart';
import 'package:chickly/Upload%20Documents/upload_documents.dart';
import 'package:chickly/redux/app_state.dart';
import 'package:chickly/redux/reducers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './home/home.dart';
import 'package:redux/redux.dart';
import 'Dashboard/dashboardTabs.dart';
import 'informations/information.dart';
import 'informations/infromations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Store<AppState> _store = Store<AppState>(
    updateDrinksReducer,
    initialState: AppState(fadeDash: 'Dashboard'),
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: _store, child: MaterialApp(home: Information()));
  }
}
