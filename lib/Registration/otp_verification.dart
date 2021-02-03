import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../Registration/registration.dart';

class OtpVerfication extends StatefulWidget {
  _OtpVerificaion createState() => _OtpVerificaion();
}


class _OtpVerificaion extends State<OtpVerfication> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  initState() {
  super.initState();
  controller = AnimationController(
    duration: const Duration(milliseconds: 300),
      vsync: this);

  animation = Tween(
    begin: 0.0,
    end: 1.0,
    ).animate(controller);

  controller.forward();

  }

  final chicklyLogo = new Container(
    padding: EdgeInsets.only(left:91,right:90,top:47,bottom:21),
    child:Image.asset('assets/images/Chickly_logo_and_text.png'),
  );

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Scaffold(
        backgroundColor: Color(0xffF7F8FA),
        body: new Container(
          child:new ListView(
            shrinkWrap: true,
            children: <Widget>[
              chicklyLogo,
              new Container(
                child:Center(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                        width: 295,
                        height: 365,
                        color: Color(0xffF7F8FA),
                        child: new Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: new Column(
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(left: 40.77,right: 246.54,top: 21.85,bottom: 10.08),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()))
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(left: 40,right: 39,bottom: 8),
                              child: Text('We have send\nyou an OTP',style:GoogleFonts.montserrat(fontSize:26,fontWeight: FontWeight.w500,color: Colors.black),),),
                              Padding(padding: EdgeInsets.only(left: 40,right: 50,bottom: 28),
                              child: Text('OTP is necessary for us to\nascertain your number -\n889232120',style:GoogleFonts.montserrat(fontSize:14,fontWeight: FontWeight.w400,color: Colors.black),),),
                              Padding(padding: EdgeInsets.only(left: 53,right: 35,bottom: 30),
                              child: OTPTextField(
                                length:4,
                                width:MediaQuery.of(context).size.width,
                                fieldWidth: 50,
                                style: TextStyle(fontSize: 12),
                                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                                fieldStyle: FieldStyle.box,
                                onCompleted: (pin) {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => RegistrationPage2(),
                                    )
                                  );
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(left: 62,right: 61),
                              child: Text('Didnt recieve OTP?',style:GoogleFonts.montserrat(fontSize:12,fontWeight: FontWeight.w400,color: Colors.black),),),
                              Padding(
                                padding: EdgeInsets.only(left:62,right:61),
                                child: GestureDetector(
                                  child: Text('Resend',style:GoogleFonts.montserrat(fontSize: 12,color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
                                  onTap: () {
                                  },
                                ),  
                              )
                            ]
                          ),
                        )
                      )
                    ],
                  )
                )
              )
            ],
          )
        )
      ),
    );
  }
}