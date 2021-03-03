import 'package:chickly/AppyLoan/NewLoan/applyLoanTab.dart';
import 'package:chickly/Common/piechart.dart';
import 'package:chickly/profile/profile.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../Common/timeline.dart';

class Dashboard extends StatefulWidget {
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  dynamic dash;
  final ScrollController _scrollController = ScrollController();
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
      child: Scaffold(
        backgroundColor: Color(0xff191B23),
        body: Container(
          child: StoreConnector<AppState, String>(
            converter: (store) => store.state.fadeDash,
            builder: (context, String fadeDash) => ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: Responsive.height(21, context),
                      left: Responsive.width(20, context),
                      right: Responsive.width(20, context),
                      bottom: Responsive.height(15, context)),
                  child: Container(
                    width: Responsive.width(335, context),
                    height: Responsive.height(170, context),
                    decoration: BoxDecoration(
                        color: Color(0xffF7F8FA),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: new Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    top: Responsive.height(31, context),
                                    left: Responsive.width(37, context),
                                    bottom: Responsive.height(25, context),
                                    right: Responsive.width(22.44, context)),
                                child: Container(
                                  width: Responsive.width(180, context),
                                  height: Responsive.height(110, context),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(),
                                          child: Text(
                                            'Looking for a loan',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    18, context),
                                                fontWeight: FontWeight.bold),
                                          )),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom:
                                                Responsive.width(26, context)),
                                        child: Text('Easy & Afforfable',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    13, context),
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff676C6D))),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(),
                                        child: Container(
                                          width: Responsive.width(130, context),
                                          height:
                                              Responsive.height(34, context),
                                          child: RaisedButton(
                                            color: Color(0xff6478D3),
                                            child: Text('Apply now',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: Responsive.height(
                                                        13, context),
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            onPressed: () => {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(
                                                builder: (context) =>
                                                    ApplyLoanTab(),
                                              ))
                                            },
                                            shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        30.0)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: Responsive.height(49, context),
                              bottom: Responsive.height(42, context),
                              right: Responsive.width(35, context)),
                          child: Container(
                            width: Responsive.width(60, context),
                            height: Responsive.height(69, context),
                            child: Image.asset(
                                'assets/images/001-save-money.png',
                                width: Responsive.width(60, context),
                                height: Responsive.height(68, context)),
                          ),
                        )
                      ],
                    ), //childone
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.width(21, context),
                      right: Responsive.width(21, context),
                      bottom: Responsive.height(15, context)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Profile(),
                      ));
                    },
                    child: Container(
                      width: Responsive.width(333, context),
                      height: Responsive.height(113, context),
                      color: Color(0xff191B23),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff323C6A),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(
                                    top: Responsive.height(27, context),
                                    bottom: Responsive.height(20, context),
                                    left: Responsive.width(36, context),
                                    right: Responsive.width(10, context)),
                                child: Container(
                                  width: Responsive.width(220, context),
                                  height: Responsive.height(89, context),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Hello, Smith',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: Responsive.height(
                                                  18, context),
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          child: Text(
                                            'Complete your profile',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    13, context),
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffB5BABB)),
                                          ),
                                          padding: EdgeInsets.only(bottom: 13),
                                        ),
                                        LinearPercentIndicator(
                                          width: Responsive.width(200, context),
                                          lineHeight:
                                              Responsive.height(7, context),
                                          percent: 0.5,
                                          backgroundColor: Colors.white,
                                          progressColor: Colors.blue,
                                        ),
                                      ]),
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: Responsive.height(39.5, context),
                                    bottom: Responsive.height(64.5, context),
                                    right: Responsive.width(5, context),
                                    left: Responsive.width(3, context)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => Profile(),
                                    ));
                                  },
                                  child: Container(
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xff6478D3),
                                        size: Responsive.height(24, context),
                                      ),
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(
                                          builder: (context) => Profile(),
                                        ));
                                      },
                                      // iconSize: Responsive.height(24, context),
                                    ),
                                  ),
                                ))
                          ],
                        ), //childtwo
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.width(21, context),
                      right: Responsive.width(21, context),
                      bottom: Responsive.height(15, context)),
                  child: Container(
                    width: Responsive.width(335, context),
                    height: Responsive.height(410, context),
                    color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2D3233),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: Responsive.height(27, context)),
                                      child: Text(
                                        'Check your credit score',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize:
                                                Responsive.height(16, context),
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      )),
                                  Padding(
                                    child: Text(
                                      'Get free credit report',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              Responsive.height(12, context),
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffB5BABB)),
                                    ),
                                    padding: EdgeInsets.only(
                                        bottom:
                                            Responsive.height(16.39, context)),
                                  ),
                                  CircularPercentIndicator(
                                    radius: Responsive.width(170, context),
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.75,
                                    center: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '820',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              fontSize: Responsive.height(
                                                  22, context),
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text('Excellent',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xffB5BABB),
                                                fontSize: Responsive.height(
                                                    11, context),
                                                fontWeight: FontWeight.w600))
                                      ],
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.white,
                                    progressColor: Color(0xff6478D3),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: Responsive.height(15, context)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text(
                                        'Score range from  ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xffB5BABB),
                                            fontSize:
                                                Responsive.height(13, context),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        '300 - 900',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.yellow[600],
                                            fontSize:
                                                Responsive.height(14, context),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: Responsive.height(22, context)),
                                      child: Container(
                                          width: Responsive.width(108, context),
                                          height:
                                              Responsive.height(34, context),
                                          child: RaisedButton(
                                            onPressed: () {},
                                            color: Color(0xff191B23),
                                            child: Text('View now',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: Responsive.height(
                                                        11, context),
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        30.0)),
                                          )))
                                ],
                              ))
                        ],
                      ), //childthree
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.width(21, context),
                      right: Responsive.width(21, context),
                      bottom: Responsive.height(15, context)),
                  child: Container(
                    width: Responsive.width(333, context),
                    height: Responsive.height(162, context),
                    color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff6478D3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Container(
                        child: new Column(children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Responsive.width(26, context),
                                          top: Responsive.height(26, context),
                                          right: Responsive.width(37, context)),
                                      child: Text(
                                        'Congratulations for your',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize:
                                                Responsive.height(12, context),
                                            color: Color(0xffE8E9EA),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Responsive.width(26, context),
                                          right: Responsive.width(37, context),
                                          bottom:
                                              Responsive.height(25, context)),
                                      child: Text(
                                        'Pre-approved loan',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize:
                                                Responsive.height(15, context),
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ]),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: Responsive.height(15, context),
                                      right: Responsive.width(27, context),
                                      bottom: Responsive.height(17, context)),
                                  child: Image.asset(
                                    'assets/images/Group 3571.png',
                                    width: Responsive.width(67, context),
                                    height: Responsive.height(67, context),
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: Responsive.width(25, context),
                                      right: Responsive.width(53, context)),
                                  child: Text(
                                    '125000',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize:
                                            Responsive.height(26, context),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: Responsive.width(25, context),
                                        right: Responsive.width(54, context)),
                                    child: Text(
                                      '12% interest rate',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              Responsive.height(12, context),
                                          color: Color(0xffF7F8F9),
                                          fontWeight: FontWeight.w700),
                                    ))
                              ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: Responsive.width(27, context)),
                                child: Container(
                                  width: Responsive.width(120, context),
                                  height: Responsive.height(38, context),
                                  child: RaisedButton(
                                    color: Colors.white,
                                    child: Text('Apply now',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize:
                                                Responsive.height(13, context),
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700)),
                                    onPressed: () => {
                                      Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(
                                        builder: (context) => Dashboard(),
                                      ))
                                    },
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                      ), //childfour
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21, right: 21, bottom: 15),
                  child: Container(
                    width: Responsive.width(333, context),
                    height: Responsive.height(234, context),
                    color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF7F8F9),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Column(
                        children: [
                          Column(children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(25, context),
                                            right:
                                                Responsive.width(110, context),
                                            top:
                                                Responsive.height(22, context)),
                                        child: Text('Auto Loan',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    16, context),
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  Responsive.width(25, context),
                                              right:
                                                  Responsive.width(76, context),
                                              bottom: Responsive.height(
                                                  38, context)),
                                          child: Text('State bank of india',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: Responsive.height(
                                                      12, context),
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w700)))
                                    ]),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              right:
                                                  Responsive.width(25, context),
                                              top: Responsive.height(
                                                  22, context)),
                                          child: Text(
                                            'Application ID',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    12, context),
                                                color: Color(0xff676C6D),
                                                fontWeight: FontWeight.w500),
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              right:
                                                  Responsive.width(25, context),
                                              bottom: Responsive.height(
                                                  38, context)),
                                          child: Text('1234567',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: Responsive.height(
                                                      12, context),
                                                  color: Color(0xff2D3233),
                                                  fontWeight: FontWeight.w600)))
                                    ]),
                              ],
                            )
                          ]),
                          Column(children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: Responsive.width(10, context), right: Responsive.width(10, context), bottom: Responsive.height(20, context)),
                                child:timeLine(context)
                            ),
                          ]),
                          Column(children: [
                            Container(
                              width: Responsive.width(120, context),
                              height: Responsive.height(38, context),
                              child: RaisedButton(
                                color: Color(0xff6478D3),
                                child: Text('View Details',
                                    style: TextStyle(
                                        fontSize:
                                            Responsive.height(13, context),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                                onPressed: () => {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ))
                                },
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                              ),
                            ),
                          ])
                        ],
                      ), //childfive
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.width(21, context),
                      right: Responsive.width(21, context),
                      bottom: Responsive.height(15, context)),
                  child: Container(
                    width: Responsive.width(335, context),
                    height: Responsive.height(270, context),
                    color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff242A39),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: Responsive.height(19, context),
                                            left:
                                                Responsive.width(26, context)),
                                        child: Text(
                                          'Auto loan',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Color(0xff51DC8E),
                                              fontSize: Responsive.height(
                                                  16, context),
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(26, context),
                                            bottom:Responsive.height(37, context)),
                                        child: Text('State bank of india',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xff8C9192),
                                                fontSize: Responsive.height(
                                                    12, context),
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: Responsive.height(33, context),
                                          right: Responsive.width(33, context),
                                          bottom:
                                              Responsive.height(68, context)),
                                      child: Container(
                                        width: Responsive.width(121, context),
                                        height: Responsive.height(15, context),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: Center(
                                            child: Text('Due on 15 Nov 2021',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xff8C9192),
                                                    fontSize: Responsive.height(
                                                        12, context),
                                                    fontWeight:
                                                        FontWeight.w600))),
                                      ))
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: Responsive.width(25.5, context),
                                      top: Responsive.height(28.41, context),
                                      right: Responsive.width(62.41, context),
                                      bottom:Responsive.height(28.5, context)),
                                    child: PieChart(
                                      PieChartData(
                                        borderData: FlBorderData(
                                          show: false,
                                        ),
                                        sectionsSpace: 0,
                                        centerSpaceRadius: Responsive.width(30, context),
                                        sections: [
                                          PieChartSectionData(
                                            color: const Color(0xffF7F8F9),
                                            value: 60,
                                            title: '',
                                            radius: Responsive.width(8, context),
                                            titleStyle: TextStyle(
                                              fontSize: 11, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
                                          ),
                                          PieChartSectionData(
                                            color: const Color(0xff6478D3),
                                            value: 30,
                                            title: '',
                                            radius: Responsive.width(15, context),
                                            titleStyle: TextStyle(
                                              fontSize: 11, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
                                          ),
                                          PieChartSectionData(
                                            color: Color(0xffF7B579),
                                            value: 10,
                                            title: '',
                                            radius: Responsive.width(12, context),
                                            titleStyle: TextStyle(
                                              fontSize: 11, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
                                          ),
                                        ]
                                      )
                                    )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                              Responsive.height(72, context)),
                                      child: Container(
                                        width: Responsive.width(120, context),
                                        height: Responsive.height(38, context),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          child: Text('View Details',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: Responsive.height(
                                                      13, context),
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700)),
                                          onPressed: () => {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                              builder: (context) => Dashboard(),
                                            ))
                                          },
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0)),
                                        ),
                                      ))
                                ],
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(width: 5, height: 5),
                                          Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text('Paid',
                                                  style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xff8D92A3),
                                                      fontSize:
                                                          Responsive.height(
                                                              11, context),
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ]),
                                        Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text('3,55,000',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xffF7F8F9),
                                                    fontSize: Responsive.height(
                                                        14, context),
                                                    fontWeight:
                                                        FontWeight.w700)))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(width: 5, height: 5),
                                          Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text('Balance',
                                                  style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xff8D92A3),
                                                      fontSize:
                                                          Responsive.height(
                                                              11, context),
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ]),
                                        Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text('3,55,000',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xffF7F8F9),
                                                    fontSize: Responsive.height(
                                                        14, context),
                                                    fontWeight:
                                                        FontWeight.w700)))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                                color: Colors.orange,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(width: 5, height: 5),
                                          Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text('Interest',
                                                  style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xff8D92A3),
                                                      fontSize:
                                                          Responsive.height(
                                                              11, context),
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ]),
                                        Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text('3,55,000',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xffF7F8F9),
                                                    fontSize: Responsive.height(
                                                        14, context),
                                                    fontWeight:
                                                        FontWeight.w700)))
                                      ],
                                    ),
                                  ])
                            ],
                          )
                        ],
                      ), //childsix
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.width(21, context),
                      right: Responsive.width(21, context)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: Responsive.width(317, context),
                          height: Responsive.height(152, context),
                          padding: EdgeInsets.only(
                              right: Responsive.width(10, context)),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xffBC3EFF), Color(0xff8737FF)],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(children: [
                            Column(
                              children: [
                                Row(children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(25, context),
                                            top: Responsive.height(18, context),
                                            right:
                                                Responsive.width(60, context)),
                                        child: Text(
                                          'Auto Loan',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: Responsive.height(
                                                  16, context),
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(25, context),
                                            right:
                                                Responsive.width(36, context),
                                            bottom:
                                                Responsive.height(34, context)),
                                        child: Text('State Bank of India',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    12, context),
                                                color: Color(0xffE8E9EA),
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: Responsive.height(30, context),
                                          bottom:
                                              Responsive.height(35, context)),
                                      child: Container(
                                        width: Responsive.width(130, context),
                                        height: Responsive.height(24, context),
                                        decoration: BoxDecoration(
                                          color: Colors.white30,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: Center(
                                            child: Text('7 Days Remaining',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xffE8E9EA),
                                                    fontSize: Responsive.height(
                                                        11, context),
                                                    fontWeight:
                                                        FontWeight.w600))),
                                      ))
                                ])
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  Responsive.width(25, context),
                                              right: Responsive.width(
                                                  65, context)),
                                          child: Text('11000',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.white,
                                                  fontSize: Responsive.height(
                                                      26, context),
                                                  fontWeight: FontWeight.w700)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  Responsive.width(25, context),
                                              right: Responsive.width(
                                                  36, context)),
                                          child: Text('Due on 5 Nov 2021',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.white54,
                                                  fontSize: Responsive.height(
                                                      12, context),
                                                  fontWeight: FontWeight.w700)),
                                        )
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(),
                                        child: Container(
                                          width: Responsive.width(120, context),
                                          height:
                                              Responsive.height(38, context),
                                          child: RaisedButton(
                                            color: Colors.white,
                                            child: Center(
                                                child: Text('Pay Now',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.black,
                                                        fontSize:
                                                            Responsive.height(
                                                                13, context),
                                                        fontWeight:
                                                            FontWeight.w700))),
                                            onPressed: () => {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(
                                                builder: (context) =>
                                                    Dashboard(),
                                              ))
                                            },
                                            shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        30.0)),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            )
                          ]),
                        ),
                        SizedBox(
                            width: Responsive.width(10, context),
                            height: Responsive.height(10, context)),
                        Container(
                          width: Responsive.width(327, context),
                          height: Responsive.height(152, context),
                          padding: EdgeInsets.only(
                              right: Responsive.width(10, context)),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff323C6A),
                                  Color(0xff6478D3),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(children: [
                            Column(
                              children: [
                                Row(children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(25, context),
                                            top: Responsive.height(18, context),
                                            right:
                                                Responsive.width(60, context)),
                                        child: Text(
                                          'Home Loan',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: Responsive.height(
                                                  16, context),
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(25, context),
                                            right:
                                                Responsive.width(36, context),
                                            bottom:
                                                Responsive.height(34, context)),
                                        child: Text('State Bank of India',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: Responsive.height(
                                                    12, context),
                                                color: Colors.white54,
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: Responsive.height(30, context),
                                          bottom:
                                              Responsive.height(35, context)),
                                      child: Container(
                                        width: Responsive.width(132, context),
                                        height: Responsive.height(24, context),
                                        decoration: BoxDecoration(
                                          color: Colors.white30,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: Center(
                                            child: Text('5 Days Remaining',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white70,
                                                    fontSize: Responsive.height(
                                                        12, context),
                                                    fontWeight:
                                                        FontWeight.w600))),
                                      ))
                                ])
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  Responsive.width(25, context),
                                              right: Responsive.width(
                                                  65, context)),
                                          child: Text('24000',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.white,
                                                  fontSize: Responsive.height(
                                                      26, context),
                                                  fontWeight: FontWeight.w700)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  Responsive.width(25, context),
                                              right: Responsive.width(
                                                  36, context)),
                                          child: Text('Due on 15 Nov 2021',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  color: Colors.white54,
                                                  fontSize: Responsive.height(
                                                      12, context),
                                                  fontWeight: FontWeight.w600)),
                                        )
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(),
                                        child: Container(
                                          width: Responsive.width(120, context),
                                          height:
                                              Responsive.height(38, context),
                                          child: RaisedButton(
                                            color: Colors.white,
                                            child: Center(
                                                child: Text('Pay Now',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize:
                                                            Responsive.height(
                                                                13, context),
                                                        fontWeight:
                                                            FontWeight.w700))),
                                            onPressed: () => {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(
                                                builder: (context) =>
                                                    Dashboard(),
                                              ))
                                            },
                                            shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        30.0)),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            )
                          ]),
                        ),
                        SizedBox(
                            width: Responsive.width(10, context),
                            height: Responsive.height(10, context)),
                        Container(
                          width: Responsive.width(150, context),
                          height: Responsive.height(152, context),
                          padding: EdgeInsets.only(
                              right: Responsive.width(10, context)),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white70,
                                  Colors.white70,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: Responsive.height(30, context),
                                        left: Responsive.width(10, context),
                                        right: Responsive.width(34, context),
                                        bottom: Responsive.height(7, context)),
                                    child: Text(
                                      'Link your\nloans',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              Responsive.height(18, context),
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: Responsive.width(50, context)),
                                  child: Container(
                                    width: Responsive.width(60, context),
                                    height: Responsive.height(60, context),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Center(
                                        child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Color(0xff6478D3),
                                      onPressed: () {},
                                      iconSize: Responsive.width(25, context),
                                    )),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.width(21, context),
                      right: Responsive.width(21, context),
                      bottom: Responsive.height(84, context),
                      top: Responsive.height(15, context)),
                  child: Container(
                    width: Responsive.width(335, context),
                    height: Responsive.height(145, context),
                    color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2D3233),
                          gradient: LinearGradient(
                            colors: [Color(0xff323C6A), Color(0xff6478D3)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Row(
                        children: [
                          Row(children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: Responsive.height(28, context),
                                          left: Responsive.width(28, context),
                                          right: Responsive.width(34, context),
                                          bottom:
                                              Responsive.height(7, context)),
                                      child: Text(
                                          'Invite a friend,\nYou and your\nfriend win',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: Responsive.height(
                                                  16, context),
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w700))),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 28, right: 17, bottom: 15),
                                    child: Text('1000 each',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize:
                                                Responsive.height(26, context),
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                  )
                                ]),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: Responsive.height(7, context),
                                  left: Responsive.width(10, context)),
                              child: Image.asset('assets/images/g10.png'),
                            )
                          ])
                        ],
                      ), //childone
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
