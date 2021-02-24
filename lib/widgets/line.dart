import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  Line(this.lineClr);
  Color lineClr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        height: 6.0,
        width: 109.0,
        color: lineClr,
      ),
    );
  }
}
