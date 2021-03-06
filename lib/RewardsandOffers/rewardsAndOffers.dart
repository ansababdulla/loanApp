import 'dart:developer';

import 'package:chickly/redux/actions.dart';
import 'package:chickly/redux/app_state.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../Dashboard/dashboard.dart';

class RewardsAndOffers extends StatefulWidget {
  _RewardsAndOffers createState() => _RewardsAndOffers();
}

class _RewardsAndOffers extends State<RewardsAndOffers>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

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
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff191B23),
          ),
          backgroundColor: Color(0xff191B23),
          body: new Container(
            child: StoreConnector<AppState, String>(
              converter: (store) => store.state.fadeDash,
              builder: (context, String fadeDash) => ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      width: 335,
                      height: 151,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff1B2338), Color(0xff394664)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Row(children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 33, top: 33, bottom: 33, right: 31),
                                child:
                                    Image.asset('assets/images/03-Award.png'))
                          ],
                        ),
                        Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 28),
                                  child: Text('2,430',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 16),
                                  child: Text(
                                    'Earned points',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Text('2,430',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 29),
                                  child: Text('2,430',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ]),
                          SizedBox(width: Responsive.width(30, context)),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                              color: Colors.white70,
                              iconSize: 18,
                            ),
                          )
                        ])
                      ]),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 20, right: 250, bottom: 15),
                      child: Text(
                        'Refer and win',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Color(0xff8D92A3),
                            fontWeight: FontWeight.w700),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      width: 335,
                      height: 152,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff263B9F), Color(0xff6478D3)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Row(children: [
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 37, top: 47, bottom: 48, right: 28),
                              child: Text(
                                'you and your\nfriend win\n1000 each',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )),
                          Padding(
                              padding: EdgeInsets.only(),
                              child: Image.asset('assets/images/g10.png'))
                        ]),
                      ]),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 20, right: 250, bottom: 15),
                      child: Text('Shop and win',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Color(0xff8D92A3),
                              fontWeight: FontWeight.w700))),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 87),
                    child: Container(
                      width: 335,
                      height: 442,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Airpods are coming\nwith your next order',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                            Image.asset('assets/images/Image 1.png'),
                            Text(
                                'Shop with chickly store by 3rd december\nto be one of the 10 members to win',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            Container(
                              width: 120,
                              height: 38,
                              child: RaisedButton(
                                color: Color(0xff6478D3),
                                child: Text('Shop now',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                onPressed: () => {},
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                              ),
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
