import 'package:chickly/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Scaffold(
        backgroundColor: Color(0xffF7F8FA),
        body: new Container(
          child:new ListView(
            shrinkWrap: true,
            children: <Widget>[
            Container(
              padding: EdgeInsets.only(left:Responsive.width(91, context),right:Responsive.width(90, context),top:Responsive.height(47, context),bottom:Responsive.height(21, context)),
              child:Image.asset('assets/images/Chickly_logo_and_text.png'),
              ),
              new Container(
                child:Center(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                        width: Responsive.width(295, context),
                        height: Responsive.height(355, context),
                        color: Color(0xffF7F8FA),
                        child: new Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: new Column(
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(left: Responsive.width(40.77, context),right: Responsive.width(246.57, context),top: Responsive.height(21.85, context),bottom: Responsive.height(10.08, context)),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()))
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(left: Responsive.width(40, context),right: Responsive.width(39, context)),
                              child: Text('We have send',style:GoogleFonts.montserrat(fontSize:Responsive.height(26, context),fontWeight: FontWeight.w500,color: Colors.black),),),
                              Padding(padding: EdgeInsets.only(left:Responsive.width(60, context),right:Responsive.width(39, context),bottom: Responsive.height(8, context)),
                                  child:Container(
                                  width: Responsive.width(216, context),
                                  height: Responsive.height(33, context),
                                  child: Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(right: Responsive.width(5, context)),
                                        child: Text('you an',style:GoogleFonts.montserrat(fontSize:Responsive.height(26, context),fontWeight: FontWeight.w500,color: Colors.black),),),
                                      Padding(padding: EdgeInsets.only(right: Responsive.width(39, context)),
                                        child: Text('OTP',style:GoogleFonts.montserrat(fontSize:Responsive.height(26, context),fontWeight: FontWeight.w700,color: Colors.black),),),
                                    ]
                                  ),
                                )
                              ),
                              Padding(padding: EdgeInsets.only(left: Responsive.width(40, context),right: Responsive.height(39, context),bottom: Responsive.height(28, context)),
                              child: Text('OTP is necessary for us to\nascertain your number -\n889232120',style:GoogleFonts.montserrat(fontSize:Responsive.height(14, context),fontWeight: FontWeight.w500,color: Color(0xff676C6D)),),),
                              Padding(padding: EdgeInsets.only(left:Responsive.width(60, context),right: Responsive.width(60, context)),
                                child: PinCodeTextField(appContext: context,
                                  length: 4,
                                  onChanged: null,
                                  onCompleted: (pin) {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => RegistrationPage2(),
                                      )
                                    );
                                  },
                                  cursorColor:Color(0xffB5BABB),
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.circle,
                                    fieldHeight: Responsive.height(37, context),
                                    fieldWidth: Responsive.width(20, context),
                                    borderWidth: 3,
                                    activeColor: Color(0xffB5BABB),
                                    activeFillColor: Color(0xffB5BABB),
                                    inactiveColor: Color(0xffB5BABB),
                                    inactiveFillColor: Color(0xffB5BABB),
                                    selectedFillColor: Color(0xffB5BABB),
                                    selectedColor: Color(0xffB5BABB),
                                    disabledColor: Color(0xffB5BABB)
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: Responsive.width(62, context),right: Responsive.width(61, context)),
                              child: Text('Didnt recieve OTP?',style:GoogleFonts.montserrat(fontSize:Responsive.height(12, context),fontWeight: FontWeight.w600,color: Color(0xff676C6D)),),),
                              Padding(
                                padding: EdgeInsets.only(left:62,right:61),
                                child: GestureDetector(
                                  child: Text('Resend',style:GoogleFonts.montserrat(fontSize: Responsive.height(12, context),color: Color(0xff6478D3),fontWeight: FontWeight.w600)),
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