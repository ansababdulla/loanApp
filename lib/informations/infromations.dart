import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Informations extends StatefulWidget {
  @override
  _InformationsState createState() => _InformationsState();
}

class _InformationsState extends State<Informations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkResponse(
              onTap: () {},
              child: new Container(
                  width: 29,
                  height: 29.0,
                  decoration: new BoxDecoration(
                    color: Color(0xFFF7B579),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                height: 6.0,
                width: 130.0,
                color: Color(0xFFF7B579),
              ),
            ),
            InkResponse(
              onTap: () {},
              child: new Container(
                width: 29.0,
                height: 29.0,
                decoration: new BoxDecoration(
                  color: Color(0xFF8C9192),
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(
                  '2',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                height: 6.0,
                width: 130.0,
                color: Color(0xFFE8E9EA),
              ),
            ),
            InkResponse(
              onTap: () {},
              child: new Container(
                  width: 29.0,
                  height: 29.0,
                  decoration: new BoxDecoration(
                    color: Color(0XFF8C9192),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(50, 50);
    final p2 = Offset(150, 50);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
