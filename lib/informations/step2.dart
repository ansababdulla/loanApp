import 'package:chickly/informations/upload_document.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:flutter/material.dart';
import '../utils/appcolors.dart';
import '../widgets/label_updateprofile.dart';
import '../consts/consts_value.dart';

class StepTwoWork extends StatefulWidget {
  @override
  _StepTwoWorkState createState() => _StepTwoWorkState();
}

class _StepTwoWorkState extends State<StepTwoWork> {
  String dropDownOccupationValue = "Salaried";
  List dropDownOccupationList = ["Salaried", "Business Owner"];
  String dropDownGenderValue = "Male";
  List dropDownGenderList = ["Male", "Female"];
  String dropDownResidenceValue = "Owned Self / Spouse";
  List dropDownResidenceList = ["Owned Self / Spouse", "Owned Self"];
  String stateValue;
  List dropDownStateList = ["Kerala", "Tamil Nadu", "Karnataka", "Goa"];
  String dropDownCityValue;
  List dropDownCityList = ["Kollam", "Pathanamthitta", "Trivandrum"];
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: AppColors.backgroundClr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(40.0, context),
                  right: Responsive.width(41, context)),
              child: UpdateProfileLabel('Occupation Type'),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 42.0, top: 12.0, right: 32.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: containerDecoration,
                        child: DropdownButton(
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            value: dropDownOccupationValue,
                            items: dropDownOccupationList.map((valueitem) {
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child: Text(valueitem,
                                      style: dropDownTextStyle));
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                dropDownOccupationValue = newvalue;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Employer Name'),
                      SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        decoration: textFieldDecoration,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Total Work Experience'),
                      SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        decoration: textFieldDecoration,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Work Email ID'),
                      SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        decoration: textFieldDecoration,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter your email id';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Gender'),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: containerDecoration,
                        child: DropdownButton(
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            value: dropDownGenderValue,
                            items: dropDownGenderList.map((valueitem) {
                              return DropdownMenuItem(
                                  value: valueitem,
                                  child: Text(valueitem,
                                      style: dropDownTextStyle));
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                dropDownGenderValue = newvalue;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Residence Type'),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: containerDecoration,
                        child: DropdownButton(
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            value: dropDownResidenceValue,
                            items: dropDownResidenceList.map((valuesitem) {
                              return DropdownMenuItem(
                                value: valuesitem,
                                child:
                                    Text(valuesitem, style: dropDownTextStyle),
                              );
                            }).toList(),
                            onChanged: (newvalues) {
                              setState(() {
                                dropDownResidenceValue = newvalues;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('State'),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: containerDecoration,
                        child: DropdownButton(
                            hint: Text('Select', style: dropDownTextStyle),
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            value: stateValue,
                            items: dropDownStateList.map((valuesitem) {
                              return DropdownMenuItem(
                                value: valuesitem,
                                child: Text(
                                  valuesitem,
                                  style: dropDownTextStyle,
                                ),
                              );
                            }).toList(),
                            onChanged: (newvalues) {
                              setState(() {
                                stateValue = newvalues;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('City'),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        decoration: containerDecoration,
                        child: DropdownButton(
                            hint: Text('Select', style: dropDownTextStyle),
                            icon: Icon(Icons.keyboard_arrow_down_sharp),
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            value: dropDownCityValue,
                            items: dropDownCityList.map((valuesitem) {
                              return DropdownMenuItem(
                                value: valuesitem,
                                child:
                                    Text(valuesitem, style: dropDownTextStyle),
                              );
                            }).toList(),
                            onChanged: (newvalues) {
                              setState(() {
                                dropDownCityValue = newvalues;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Address'),
                      SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        decoration: textFieldDecoration,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter your address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      UpdateProfileLabel('Pin Code'),
                      SizedBox(
                        height: 12.0,
                      ),
                      TextFormField(
                        decoration: textFieldDecoration,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter your pincode';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      Center(
                        child: ButtonTheme(
                          minWidth: 130.0,
                          height: 40.0,
                          child: RaisedButton(
                            color: Color(0xff6478D3),
                            child: Text('Continue',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            onPressed: () => {
                              if (formKey.currentState.validate())
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UploadDoc()))
                                }
                            },
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
