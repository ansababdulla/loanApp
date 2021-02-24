import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  CircleWidget(this.circleColor, this.text);

  final Color circleColor;
  final String text;

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
              child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
