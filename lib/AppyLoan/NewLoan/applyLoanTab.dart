import 'package:chickly/Common/navbar.dart';
import 'package:chickly/Dashboard/dashboardTabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../utils/responsive.dart';
import './apply_loan.dart';

class ApplyLoanTab extends StatefulWidget {
  _ApplyLoanTab createState() => _ApplyLoanTab();
}

class _ApplyLoanTab extends State<ApplyLoanTab> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  String loanType = "";
  var loanButton = false;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);

    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);

    controller.forward();
  }

  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: animation,
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            backgroundColor: Color(0xff191B23),
            appBar: AppBar(
                backgroundColor: Color(0xff191B23),
                // backwardsCompatibility: true,
                leading: Transform.scale(
                  scale: 0.5,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => DashboardTabs(),
                      ));
                    },
                    iconSize: Responsive.width(32, context),
                  ),
                ),
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Color(0xFF6478D3),
                  indicatorWeight: 0.4,
                  unselectedLabelColor: Color(0xff8D92A3),
                  labelStyle: TextStyle(
                      fontSize: Responsive.height(13, context),
                      color: Color(0xffF7F8F9),
                      fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: 'New Loans',
                    ),
                    Tab(
                      text: 'My Loans',
                    ),
                    Tab(
                      text: 'Pre Approved',
                    ),
                    Tab(
                      text: 'Reminders',
                    ),
                    Tab(
                      text: 'Activities',
                    ),
                  ],
                )),
            body: TabBarView(
              children: [
                LoanType(),
                LoanType(),
                LoanType(),
                LoanType(),
                LoanType(),
              ],
            ),
            bottomNavigationBar: navBar(context),
          ),
        ));
  }
}
