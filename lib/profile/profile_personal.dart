import 'package:flutter/material.dart';
import '../widgets/label_updateprofile.dart';
import '../consts/consts_value.dart';

class PersonalProfile extends StatefulWidget {
  @override
  _PersonalProfileState createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  String dropDownGenderValue = "Male";
  List dropDownGenderList = ["Male", "Female"];
  String dropDownResidenceValue = "Owned Self / Spouse";
  List dropDownResidenceList = ["Owned Self / Spouse", "Owned Self"];
  String stateValue;
  List dropDownStateList = ["Kerala", "Tamil Nadu", "Karnataka", "Goa"];
  String dropDownCityValue;
  List dropDownCityList = ["Kollam", "Pathanamthitta", "Trivandrum"];
  final formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();

  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState.validate()) {
            return 'Saved';
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => WorkInfo()))
          }
        },
        child: const Icon(Icons.check),
        backgroundColor: Color(0xFF6478D3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: bgndclr,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: SingleChildScrollView(
          child: Container(
            color: bgndclr,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 16.0),
                  child: UpdateProfileLabel('First Name'),
                ),
                Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 42.0, top: 12.0, right: 32.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: formTextFieldStyle,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter your First Name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          UpdateProfileLabel('Last Name'),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                            decoration: formTextFieldStyle,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter your Last Name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          UpdateProfileLabel('Date of Birth'),
                          SizedBox(
                            height: 12.0,
                          ),
                          GestureDetector(
                            onTap: () => _selectDate(context),
                            child: AbsorbPointer(
                              child: TextFormField(
                                  decoration: formTextFieldStyle,
                                  controller: _dateController,
                                  validator: (value) {
                                    if (value.isEmpty)
                                      return "Please select your Date of birth";
                                    return null;
                                  }),
                            ),
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
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
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
                            decoration: formTextFieldStyle,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter your Pan number';
                              }
                              return null;
                            },
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
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
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
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
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
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
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
                            decoration: formTextFieldStyle,
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
                            decoration: formTextFieldStyle,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Enter your Pin Code';
                              }
                              return null;
                            },
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 8),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        var date =
            "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
        _dateController.text = date;
      });
  }
}
