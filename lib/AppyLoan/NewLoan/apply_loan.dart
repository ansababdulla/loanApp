import 'package:chickly/PersonalLoan/basicInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../utils/responsive.dart';
import '../../BasicInfo/basic_information.dart';

class LoanType extends StatefulWidget {
  _LoanType createState() => _LoanType();
}

class _LoanType extends State<LoanType> with TickerProviderStateMixin {
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
        child: Scaffold(
          backgroundColor: Color(0xff191B23),
          body: new Container(
            color: Color(0xff191B23),
            child: new ListView(children: <Widget>[
              SizedBox(
                width: Responsive.width(51, context),
                height: Responsive.height(51, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Responsive.width(16, context),
                    right: Responsive.width(16, context)),
                child: Container(
                  width: Responsive.width(343, context),
                  height: Responsive.height(588, context),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.width(6, context),
                          right: Responsive.width(132, context),
                          top: Responsive.height(39, context),
                          bottom: Responsive.height(49, context)),
                      child: Text(
                        'Choose Your\nLoan Type',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: Responsive.height(24, context),
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 44, right: 31, bottom: 50),
                            child: Container(
                              width: Responsive.width(113, context),
                              height: Responsive.height(143, context),
                              child: new Column(children: [
                                GestureDetector(
                                  child: Container(
                                      width: Responsive.width(113, context),
                                      height: Responsive.height(113, context),
                                      decoration: BoxDecoration(
                                          color: Color(0xff6478D3),
                                          shape: BoxShape.circle),
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                                  'assets/images/001-home.png')),
                                          if (loanType == "home")
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: Responsive.width(
                                                        70, context)),
                                                child: Image.asset(
                                                  'assets/images/Group 83.png',
                                                  width: Responsive.width(
                                                      31, context),
                                                  height: Responsive.height(
                                                      31, context),
                                                ))
                                        ],
                                      )),
                                  onTap: () {
                                    setState(() {
                                      loanType = "home";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(
                                    width: Responsive.width(8, context),
                                    height: Responsive.height(8, context)),
                                Text('Home Loan',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize:
                                            Responsive.height(14, context),
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))
                              ]),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 43, bottom: 50),
                            child: Container(
                              width: Responsive.width(113, context),
                              height: Responsive.height(143, context),
                              child: new Column(children: [
                                GestureDetector(
                                  child: Container(
                                      width: Responsive.width(113, context),
                                      height: Responsive.height(113, context),
                                      decoration: BoxDecoration(
                                          color: Color(0xff6478D3),
                                          shape: BoxShape.circle),
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                                  'assets/images/002-car.png')),
                                          if (loanType == "car")
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: Responsive.width(
                                                        70, context)),
                                                child: Image.asset(
                                                  'assets/images/Group 83.png',
                                                  width: Responsive.width(
                                                      31, context),
                                                  height: Responsive.height(
                                                      31, context),
                                                ))
                                        ],
                                      )),
                                  onTap: () {
                                    setState(() {
                                      loanType = "car";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(
                                    width: Responsive.width(8, context),
                                    height: Responsive.height(8, context)),
                                Text('Car Loan',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize:
                                            Responsive.height(14, context),
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))
                              ]),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 44, right: 31, bottom: 30),
                            child: Container(
                              width: Responsive.width(113, context),
                              height: Responsive.height(143, context),
                              child: new Column(children: [
                                GestureDetector(
                                  child: Container(
                                      width: Responsive.width(113, context),
                                      height: Responsive.height(113, context),
                                      decoration: BoxDecoration(
                                          color: Color(0xff6478D3),
                                          shape: BoxShape.circle),
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                                  'assets/images/004-man.png')),
                                          if (loanType == "personal")
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: Responsive.width(
                                                        70, context)),
                                                child: Image.asset(
                                                  'assets/images/Group 83.png',
                                                  width: Responsive.width(
                                                      31, context),
                                                  height: Responsive.height(
                                                      31, context),
                                                ))
                                        ],
                                      )),
                                  onTap: () {
                                    setState(() {
                                      loanType = "personal";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(
                                    width: Responsive.width(8, context),
                                    height: Responsive.height(8, context)),
                                Text('Personal Loan',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize:
                                            Responsive.height(14, context),
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))
                              ]),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 43, bottom: 30),
                            child: Container(
                              width: Responsive.width(116, context),
                              height: Responsive.height(143, context),
                              child: new Column(children: [
                                GestureDetector(
                                  child: Container(
                                      width: Responsive.width(113, context),
                                      height: Responsive.height(113, context),
                                      decoration: BoxDecoration(
                                          color: Color(0xff6478D3),
                                          shape: BoxShape.circle),
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                                  'assets/images/003-book.png')),
                                          if (loanType == "education")
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: Responsive.width(
                                                        70, context)),
                                                child: Image.asset(
                                                  'assets/images/Group 83.png',
                                                  width: Responsive.width(
                                                      31, context),
                                                  height: Responsive.height(
                                                      31, context),
                                                ))
                                        ],
                                      )),
                                  onTap: () {
                                    setState(() {
                                      loanType = "education";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(
                                    width: Responsive.width(8, context),
                                    height: Responsive.height(8, context)),
                                Text('Education Loan',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize:
                                            Responsive.height(14, context),
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))
                              ]),
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Container(
                        width: Responsive.width(120, context),
                        height: Responsive.height(38, context),
                        child: RaisedButton(
                          color: Color(0xff6478D3),
                          child: Text('Continue',
                              style: TextStyle(
                                  fontSize: Responsive.height(13, context),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          onPressed: loanButton
                              ? () => {
                                    if (loanType == "home")
                                      {
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(
                                          builder: (context) =>
                                              BasicInformations(),
                                        ))
                                      }
                                      else if(loanType == "personal") {
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(
                                          builder: (context) =>
                                              BasicInformationsPersonal(),
                                        ))

                                      }
                                  }
                              : null,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: Responsive.width(51, context),
                height: Responsive.height(51, context),
              ),
            ]),
          ),
        ));
  }
}
