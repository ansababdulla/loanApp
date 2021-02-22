import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  FAStepperType stepperType = FAStepperType.horizontal;
  int _currentStep = 0;
  List<FAStep> stepper = [
    FAStep(
      title: Text('Name'),
      // Column(
      //   children: <Widget>[
      //     Icon(
      //       Icons.person,
      //       color: Colors.red,
      //       size: 24.0,
      //     ),
      //     Text('Name'),
      //   ],
      // ),
      // subtitle: Text('Full Name'),
      isActive: true,
      state: FAStepstate.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'First Name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Last Name'),
          ),
        ],
      ),
    ),
    FAStep(
      title: Text('Email'),
      // Column(
      //   children: <Widget>[
      //     Icon(
      //       Icons.mail,
      //       color: Colors.red,
      //       size: 24.0,
      //     ),
      //     Text('Email'),
      //   ],
      // ),
      isActive: true,
      state: FAStepstate.disabled,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Recovery Email'),
          ),
        ],
      ),
    ),
    FAStep(
      title: Text('Mobile No.'),
      isActive: true,
      state: FAStepstate.editing,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Mobile No.'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Alternative Mobile No.'),
          ),
        ],
      ),
    ),
    FAStep(
      title: Text('Address'),
      isActive: true,
      state: FAStepstate.error,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Address 1'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Address 2'),
          ),
        ],
      ),
    ),
    FAStep(
      title: Text('Password'),
      isActive: true,
      state: FAStepstate.indexed,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Confirm Password'),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF7F8F9),
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: FAStepper(
                stepNumberColor: Colors.grey,
                steps: stepper,
                type: stepperType,
                currentStep: this._currentStep,
                onStepTapped: (step) {
                  setState(() {
                    this._currentStep = step;
                  });
                  print('onStepTapped :' + step.toString());
                },
                onStepContinue: () {
                  setState(() {
                    if (this._currentStep < this.stepper.length - 1) {
                      this._currentStep = this._currentStep + 1;
                    } else {
                      _currentStep = 0;
                    }
                  });
                  print('onStepContinue :' + _currentStep.toString());
                },
                onStepCancel: () {
                  setState(() {
                    if (this._currentStep > 0) {
                      this._currentStep = this._currentStep - 1;
                    } else {
                      this._currentStep = 0;
                    }
                  });
                  print('onStepCancel :' + _currentStep.toString());
                },
              ),
            ),
          ],
        ),
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

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
