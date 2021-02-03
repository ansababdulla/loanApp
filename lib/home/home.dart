import 'package:flutter/material.dart';
import '../AppIntro/appIntro.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AppIntro(),
            )
        );
      },
      child: Scaffold(
      backgroundColor: Color(0xff6478D3),
      body: Center(
        child:Image.asset('assets/images/Chickly_logo_white.png'),
    )),
    );
  }
}