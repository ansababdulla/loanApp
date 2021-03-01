import 'package:flutter/material.dart';

class CircleWithImge extends StatelessWidget {
  CircleWithImge(this.circleColor);

  final Color circleColor;
  // final String text;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
        onTap: () {},
        child: new Container(
          width: 29,
          height: 29.0,
          decoration: new BoxDecoration(
            //borderRadius: BorderRadius(Radius: 5.0),
            border: Border.all(color: Color(0xFFFFFFFF), width: 2),
            color: circleColor,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Icon(
            Icons.check,
            size: 14,
            color: Colors.white,
          )),
        ));
  }
}
