import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/appcolors.dart';
import '../widgets/label_updateprofile.dart';
import '../consts/consts_value.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  String dropDownGenderValue = "Male";
  List dropDownGenderList = ["Male", "Female"];
  String dropDownResidenceValue = "Owned Self / Spouse";
  List dropDownResidenceList = ["Owned Self / Spouse", "Owned Self"];
  String stateValue;
  List dropDownStateList = ["Kerala", "Tamil Nadu", "Karnataka", "Goa"];
  String dropDownCityValue;
  List dropDownCityList = ["Kollam", "Pathanamthitta", "Trivandrum"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 20.0),
          color: AppColors.backgroundClr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 16.0),
                child: UpdateProfileLabel('Date Of Birth'),
              ),
              Form(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 42.0, top: 12.0, right: 32.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: textFieldDecoration,
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
                              style: GoogleFonts.montserrat(
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
                        UpdateProfileLabel('Pan Number'),
                        SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          decoration: textFieldDecoration,
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
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              value: dropDownResidenceValue,
                              items: dropDownResidenceList.map((valuesitem) {
                                return DropdownMenuItem(
                                  value: valuesitem,
                                  child: Text(valuesitem,
                                      style: dropDownTextStyle),
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
                              style: GoogleFonts.montserrat(
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
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              value: dropDownCityValue,
                              items: dropDownCityList.map((valuesitem) {
                                return DropdownMenuItem(
                                  value: valuesitem,
                                  child: Text(valuesitem,
                                      style: dropDownTextStyle),
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
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () => {},
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
