import 'package:flutter/material.dart';
import '../AppIntro/appIntro.dart';

class Home extends StatefulWidget {
  _Home createState() => _Home();

}

class _Home extends State<Home> {

  void initState() {
    super.initState();
      Future.delayed(const Duration(milliseconds: 2000), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AppIntro(),
            )
        );
      });
  }

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

