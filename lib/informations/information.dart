import 'package:chickly/consts/consts_value.dart';
import 'package:chickly/utils/appcolors.dart';
import 'package:chickly/widgets/circle_widget.dart';
import 'package:chickly/widgets/line.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'personal_info.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  // FAStepperType stepperType = FAStepperType.horizontal;
  // int _currentStep = 0;
  // List<FAStep> stepper = [
  //   FAStep(
  //     title: Text('Name'),
  //     // Column(
  //     //   children: <Widget>[
  //     //     Icon(
  //     //       Icons.person,
  //     //       color: Colors.red,
  //     //       size: 24.0,
  //     //     ),
  //     //     Text('Name'),
  //     //   ],
  //     // ),
  //     // subtitle: Text('Full Name'),
  //     isActive: true,
  //     state: FAStepstate.complete,
  //     content: Column(
  //       children: <Widget>[
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'First Name'),
  //         ),
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Last Name'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   FAStep(
  //     title: Text('Email'),
  //     // Column(
  //     //   children: <Widget>[
  //     //     Icon(
  //     //       Icons.mail,
  //     //       color: Colors.red,
  //     //       size: 24.0,
  //     //     ),
  //     //     Text('Email'),
  //     //   ],
  //     // ),
  //     isActive: true,
  //     state: FAStepstate.disabled,
  //     content: Column(
  //       children: <Widget>[
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Email Address'),
  //         ),
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Recovery Email'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   FAStep(
  //     title: Text('Mobile No.'),
  //     isActive: true,
  //     state: FAStepstate.editing,
  //     content: Column(
  //       children: <Widget>[
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Mobile No.'),
  //         ),
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Alternative Mobile No.'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   FAStep(
  //     title: Text('Address'),
  //     isActive: true,
  //     state: FAStepstate.error,
  //     content: Column(
  //       children: <Widget>[
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Address 1'),
  //         ),
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Address 2'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   FAStep(
  //     title: Text('Password'),
  //     isActive: true,
  //     state: FAStepstate.indexed,
  //     content: Column(
  //       children: <Widget>[
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Password'),
  //         ),
  //         TextFormField(
  //           decoration: InputDecoration(labelText: 'Confirm Password'),
  //         ),
  //       ],
  //     ),
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundClr,
      appBar: AppBar(
        backgroundColor: Color(0xff191B23),
        title: Text('Personal Information',
            style:
                GoogleFonts.montserrat(fontSize: 14, color: Color(0xff8D92A3))),
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
                BoxShadow(
                  color: Color(0xFF00000010).withOpacity(0.05),
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
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 25.0, left: 0, right: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleWidget(Color(0xFFF7B579), '1'),
                        Line(Color(0xFFF7B579)),
                        CircleWidget(Color(0xFF8C9192), '2'),
                        Line(Color(0xFFE8E9EA)),
                        CircleWidget(Color(0xFF8C9192), '3'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 40.0, top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Personal', style: stepperTextStyle),
                          Text('Work', style: stepperTextStyle),
                          Text(
                            'Verify',
                            style: stepperTextStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          PersonalInfo()
        ],
      ),
      // body: Container(
      //   child: Column(
      //     children: [
      //       Expanded(
      //           child: Stepper(
      //         type: stepperType,
      //         physics: ScrollPhysics(),
      //         currentStep: _currentStep,
      //         onStepTapped: (step) => tapped(step),
      //         onStepContinue: continued,
      //         onStepCancel: cancel,
      //         steps: [
      //           Step(
      //             title: Text(''),
      //             content: Column(
      //               children: [
      //                 TextFormField(
      //                   decoration:
      //                       InputDecoration(labelText: 'Email Address'),
      //                 ),
      //                 TextFormField(
      //                   decoration:
      //                       InputDecoration(labelText: 'Password'),
      //                 ),
      //               ],
      //             ),
      //             isActive: _currentStep >= 0,
      //             state: _currentStep >= 0
      //                 ? StepState.complete
      //                 : StepState.disabled,
      //           ),
      //           Step(
      //             title: Text(''),
      //             content: Column(
      //               children: [
      //                 TextFormField(
      //                   decoration:
      //                       InputDecoration(labelText: 'Mobile Number'),
      //                 ),
      //               ],
      //             ),
      //             isActive: _currentStep >= 0,
      //             state: _currentStep >= 1
      //                 ? StepState.complete
      //                 : StepState.disabled,
      //           ),
      //           Step(
      //             title: Text(''),
      //             content: Column(
      //               children: [
      //                 TextFormField(
      //                   decoration:
      //                       InputDecoration(labelText: 'Mobile Number'),
      //                 ),
      //               ],
      //             ),
      //             isActive: _currentStep >= 0,
      //             state: _currentStep >= 2
      //                 ? StepState.complete
      //                 : StepState.disabled,
      //           )
      //         ],
      //       ))
      //     ],
      //   ),
      // )
    ));
  }

  // tapped(int step) {
  //   setState(() => _currentStep = step);
  // }
  //
  // continued() {
  //   _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  // }
  //
  // cancel() {
  //   _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  // }
}
