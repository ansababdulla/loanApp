import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../Registration/registration.dart';
class AppIntro extends StatefulWidget {
  _AppIntro createState() => _AppIntro();
}

class _AppIntro extends State<AppIntro> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  final _totalDots= 3;
  double _currentPosition = 0.0;

  initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
        vsync: this);

    animation = Tween(
      begin: 0.0,
      end: 1.0,
      ).animate(controller);

    controller.forward();

  }

  Widget build(BuildContext build) {
    if(_currentPosition == 0) {
      return FadeTransition(
        opacity: animation,
        child: new Scaffold(
          body: new Container(
            child:new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                padding: EdgeInsets.only(top:28.53,left:57,right: 57.36,bottom: 46.57),
                child:new Column (
                  children: <Widget>[
                    Image.asset('assets/images/Group 823.png')
                  ],
                )
              ),
                new Container(
                  padding: EdgeInsets.only(left: 59.5,right: 99.5,bottom: 30),
                  child: new Column(
                    children: <Widget>[
                      Text('Manage all\nyour\nloans',
                      style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 36 ,fontWeight: FontWeight.w800))
                      )
                    ],
                  ),
                ),
                new Container(
                  padding:EdgeInsets.only(left: 59,right: 59,bottom: 40),
                  child: new Column(
                    children: <Widget>[
                      Text('Track your all existing\nloan and new status',
                      style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left:55,right: 60),
                  child:new Row (
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new DotsIndicator(
                        dotsCount: _totalDots,
                        position: _currentPosition,
                        decorator: DotsDecorator(
                          activeColor: Color(0xff6478D3)),
                        onTap: (pos) {
                          setState(() => _currentPosition = pos);
                          log(_currentPosition.toString());
                        } ,
                          ),
                        Container(
                          width: 132,
                          height: 46,
                          child: RaisedButton(
                            color: Color(0xff6478D3),
                              child:Text('Start',style:GoogleFonts.montserrat(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),
                              onPressed: () => {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Registration(),
                                  )
                                )
                              },
                              shape: new RoundedRectangleBorder(
                                borderRadius:new BorderRadius.circular(30.0)
                              ),
                            ),
                        )
                    ],
                    )
                )
              ],
            ),
          ),
        )
      );
    }
    else if(_currentPosition == 1) {
      return FadeTransition(
        opacity: animation,
        child: new Scaffold(
          body: new Container(
            child:new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                padding: EdgeInsets.only(top:73.69,left:76,right: 66.36,bottom: 32.44),
                child:new Column (
                  children: <Widget>[
                    Image.asset('assets/images/Group 1588.png')
                  ],
                )
              ),
                new Container(
                  padding: EdgeInsets.only(left: 59.5,right: 123.5,bottom: 30),
                  child: new Column(
                    children: <Widget>[
                      Text('Apply For\nNew\nLoan',
                      style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 36 ,fontWeight: FontWeight.w800))
                      )
                    ],
                  ),
                ),
                new Container(
                  padding:EdgeInsets.only(left: 59,right: 59,bottom: 40),
                  child: new Column(
                    children: <Widget>[
                      Text('Apply for new loan easy &\naffordable',
                      style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left:55,right: 60),
                  child:new Row (
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new DotsIndicator(
                        dotsCount: _totalDots,
                        position: _currentPosition,
                        decorator: DotsDecorator(
                          activeColor: Color(0xff6478D3)),
                        onTap: (pos) {
                          setState(() => _currentPosition = pos);
                          log(_currentPosition.toString());
                        } ,
                          ),
                        Container(
                          width: 132,
                          height: 46,
                          child: RaisedButton(
                            color: Color(0xff6478D3),
                              child:Text('Start',style:GoogleFonts.montserrat(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),
                              onPressed: () => {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Registration(),
                                  )
                                )
                              },
                              shape: new RoundedRectangleBorder(
                                borderRadius:new BorderRadius.circular(30.0)
                              ),
                            ),
                        )
                    ],
                    )
                )
              ],
            ),
          ),
        ),
      );
    }
    else if(_currentPosition == 2) {
      return FadeTransition(opacity: animation,
        child:  new Scaffold(
          body: new Container(
            child:new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                padding: EdgeInsets.only(top:64.72,left:47,right: 55.76,bottom: 40.31),
                child:new Column (
                  children: <Widget>[
                    Image.asset('assets/images/Group 3208.png')
                  ],
                )
              ),
                new Container(
                  padding: EdgeInsets.only(left: 59.5,right: 209.5,bottom: 30),
                  child: new Column(
                    children: <Widget>[
                      Text('Get\nNew\noffers',
                      style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 36 ,fontWeight: FontWeight.w800))
                      )
                    ],
                  ),
                ),
                new Container(
                  padding:EdgeInsets.only(left: 59,right: 59,bottom: 57),
                  child: new Column(
                    children: <Widget>[
                      Text('Get rewards and offers',
                      style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(left:55,right: 60),
                  child:new Row (
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new DotsIndicator(
                        dotsCount: _totalDots,
                        position: _currentPosition,
                        decorator: DotsDecorator(
                          activeColor: Color(0xff6478D3)),
                        onTap: (pos) {
                          setState(() => _currentPosition = pos);
                          log(_currentPosition.toString());
                        } ,
                          ),
                        Container(
                          width: 132,
                          height: 46,
                          child: RaisedButton(
                            color: Color(0xff6478D3),
                              child:Text('Start',style:GoogleFonts.montserrat(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),
                              onPressed: () => {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Registration(),
                                  )
                                )
                              },
                              shape: new RoundedRectangleBorder(
                                borderRadius:new BorderRadius.circular(30.0)
                              ),
                            ),
                        )
                    ],
                    )
                )
              ],
            ),
          ),
        ),
      );
    }
    else  {
      return Scaffold(
        body:new Container(
          child: Text('data'),
        )
      );
    }
  }
}




