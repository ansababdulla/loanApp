import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/label_updateprofile.dart';
import '../consts/consts_value.dart';

class PersonalProfile extends StatefulWidget {
  @override
  _PersonalProfileState createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgndclr,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpdateProfileLabel('First Name'),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE8E9EA)),
                              borderRadius: BorderRadius.circular(28.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE8E9EA)),
                              borderRadius: BorderRadius.circular(28.0))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
