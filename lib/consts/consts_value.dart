import 'package:chickly/utils/responsive.dart';
import 'package:flutter/material.dart';

const bgndclr = Color(0xFFF7F8F9);

const textFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
    border: InputBorder.none,
    fillColor: Colors.white,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(const Radius.circular(30.0)),
      borderSide: BorderSide(color: Color(0xffE8E9EA)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(const Radius.circular(30.0)),
      borderSide: BorderSide(color: Color(0xffE8E9EA)),
    ));

var containerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Color(0xffE8E9EA)),
    borderRadius: BorderRadius.all(Radius.circular(30.0)));

var dropDownTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.0,
    color: Color(0xFF242A39),
    fontWeight: FontWeight.w600);

var stepperTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
    color: Color(0xFF242A39));

var tabTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w700,
  fontSize: 14.0,
);
