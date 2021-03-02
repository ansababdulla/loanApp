import 'package:chickly/consts/consts_value.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:chickly/widgets/circle_widget.dart';
import 'package:chickly/widgets/line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget timeLine (BuildContext context) {
  return Builder(
    builder: (BuildContext context) {
      return Column(
        children:[
          Container(
            child:Padding(
            padding: EdgeInsets.only(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleWidget(Color(0xff51DC8E), '1'),
                                Line(Color(0xff51DC8E)),
                              ],
                            ),
                          ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleWidget(Color(0xffEBA05C), '2'),
                              Line(Color(0xffE8E9EA)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleWidget(Color(0xFF8C9192), '3'),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:Responsive.height(10, context)),
          Padding(padding: EdgeInsets.only(),
            child:Container(
              child:Row(
                children:[
                  SizedBox(width:Responsive.width(15, context)),
                  Text('Application',style:stepperTextStyleDashboard),
                  SizedBox(width:Responsive.width(55, context)),
                  Text('Evaluation',style:stepperTextStyleDashboard),
                  SizedBox(width:Responsive.width(60, context)),
                  Text('Agreement',style:stepperTextStyleDashboard),
                ]
              )
            )
          )
        ]
      );
    },
  );
}
