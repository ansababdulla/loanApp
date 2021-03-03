import 'package:chickly/AppyLoan/NewLoan/applyLoanTab.dart';
import 'BasicInfo/basic_information.dart';
import 'file:///E:/aaagit/chickly/chickly-app/lib/informations/step3.dart';
import 'package:chickly/redux/app_state.dart';
import 'package:chickly/redux/reducers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './home/home.dart';
import 'package:redux/redux.dart';
import 'Dashboard/dashboardTabs.dart';
import 'informations/personal_info.dart';
import 'informations/step1.dart';
import 'informations/work_info.dart';
import 'profile/profile.dart';
import 'profile/profile_personal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Store<AppState> _store = Store<AppState>(
    updateDrinksReducer,
    initialState: AppState(fadeDash: 'Dashboard'),
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: _store,
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
  }
}
