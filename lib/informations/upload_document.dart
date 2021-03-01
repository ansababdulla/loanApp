import 'package:chickly/consts/consts_value.dart';
import 'package:chickly/informations/step3.dart';
import 'package:chickly/utils/appcolors.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:chickly/widgets/circle_widget.dart';
import 'package:chickly/widgets/circle_withimage.dart';
import 'package:chickly/widgets/line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadDoc extends StatefulWidget {
  @override
  _UploadDocState createState() => _UploadDocState();
}

class _UploadDocState extends State<UploadDoc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundClr,
      appBar: AppBar(
        backgroundColor: Color(0xff191B23),
        title: Text('Upload Documents',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff8D92A3))),
        leading: Transform.scale(
          scale: 0.5,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 0, bottom: 4),
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(color: Color(0xFF00000010)
                    // spreadRadius: 1,
                    // blurRadius: 1,
                    // offset: Offset(0, 3),
                    )
                // BoxShadow(color: Color(0xFF00000010), blurRadius: 20.0),
              ],
            ),
            child: Card(
              color: Color(0xFFF7F8F9),
              // shadowColor: Color(0xFF00000010),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 25.0,
                    bottom: 25.0,
                    left: Responsive.width(20, context),
                    right: Responsive.width(20, context)),
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
                                CircleWithImge(Color(0xFF51DC8E)),
                                Line(Color(0xFF51DC8E)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Personal', style: stepperTextStyle),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleWithImge(Color(0xFF51DC8E)),
                                Line(Color(0xFF51DC8E)),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text('Work', style: stepperTextStyle),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleWidget(Color(0xFFF7B579), '3'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Verify',
                                style: stepperTextStyle,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          StepThreeVerify()
        ],
      ),
    ));
  }
}
