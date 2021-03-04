import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../Registration/registration.dart';
import '../utils/responsive.dart';

class AppIntro extends StatefulWidget {
  _AppIntro createState() => _AppIntro();
}

class _AppIntro extends State<AppIntro> with TickerProviderStateMixin {
  int _current = 0;
  var slider;

  static final slides = [
    {
      "image": "assets/images/Group 823.png",
      "text": "Manage all\nyour\nloans",
      "subText": "Track your all existing loan \nand new status",
    },
    {
      "image": "assets/images/Group 1588.png",
      "text": "Apply For\nNew\nLoan",
      "subText": "Apply for new loan Easy & \nAffordable",
    },
    {
      "image": "assets/images/Group 3208.png",
      "text": "Get\nNew\noffers",
      "subText": "Get Rewards & Offers",
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  Widget basicSlider(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    slider = new CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          autoPlayAnimationDuration: Duration(milliseconds: 300),
          enableInfiniteScroll: false,
          viewportFraction: 1.0,
          height: size.height * 0.69,
          onPageChanged: (index, caro) => {
                setState(() {
                  _current = index;
                })
              }),
      items: slides.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.04),
                    child: Container(
                        child: Image.asset(
                      i['image'],
                      width: size.width * 0.7,
                      height: size.height * 0.36,
                    )),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: size.height * 0.04),
                      child: Text(i['text'],
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: size.height * 0.044,
                              fontWeight: FontWeight.bold))),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.04),
                    child: Text(i['subText'],
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: size.height * 0.017,
                            fontWeight: FontWeight.w600)),
                  ),
                ]);
          },
        );
      }).toList(),
    );
    return slider;
  }

  isLastSlide() {
    return slides.length - 1 == _current;
  }

  Widget build(BuildContext build) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      primary: false,
      body: Column(children: <Widget>[
        Container(
          height: Responsive.height(600, context),
          child: basicSlider(context),
        ),
        SizedBox(height: Responsive.height(30, context)),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.152,
                  right: size.width * 0.152,
                  top: size.height * 0.05),
              child: new DotsIndicator(
                dotsCount: 3,
                position: _current.toDouble(),
                decorator: DotsDecorator(activeColor: Color(0xff6478D3)),
                onTap: (pos) {},
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: size.height * 0.05),
                child: Container(
                  width: size.width * 0.352,
                  height: size.height * 0.056,
                  child: Padding(
                    padding: EdgeInsets.only(),
                    child: RaisedButton(
                      color: Color(0xff6478D3),
                      child: Text('Start',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: size.height * 0.025,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      onPressed: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Registration(),
                        ))
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                    ),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
