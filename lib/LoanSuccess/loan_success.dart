import 'package:flutter/material.dart';
import '../Dashboard/dashboard.dart';

class LoanSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff191B23),
            body: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 100, bottom: 100),
              // const EdgeInset s.symmetric(horizontal: 20, vertical: 100),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff51DC8E),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                          child: Center(
                            child: Image.asset(
                                'assets/images/loan_successful_image.png'),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffF7F8F9),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                    top: 16.0,
                                    bottom: 8.0),
                                child: Center(
                                  child: Text('Congratulations!',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'We are very Proud of you',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      color: Color(0xff8D92A3),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                child: ButtonTheme(
                                  minWidth: 130.0,
                                  height: 28.0,
                                  child: RaisedButton(
                                    color: Color(0xff6478D3),
                                    child: Text('Track Loan Status',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                    onPressed: () => {},
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Center(
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => Dashboard(),
                                    ));
                                  },
                                  child: Text(
                                    'Go  home',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff6478D3),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
