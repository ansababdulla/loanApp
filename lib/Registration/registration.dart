
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Registration/otp_verification.dart';
import '../Dashboard/dashboard.dart';

class Registration extends StatefulWidget {
  _Registration createState() => _Registration();
}

class _Registration extends State<Registration> with TickerProviderStateMixin {
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
    padding: EdgeInsets.only(left:91,right:90,top:78,bottom:28),
    child:Image.asset('assets/images/Chickly_logo_and_text.png'),
  );

  final addMobileNumber = new Container(
    color: Colors.white,
    padding: EdgeInsets.only(left:40,right:40,bottom:177),
    child: new Column(
      children: <Widget>[
        Text('Enter your',
          style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 26 ,fontWeight: FontWeight.w500))
        ),
        Text('mobile number',
          style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 26 ,fontWeight: FontWeight.w700))
        ),
        Text('mobile number linked with\nbank is needed to apply',
          style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 26 ,fontWeight: FontWeight.w400))
        ),
      ],
    ),
  );



  Widget build (BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: new Scaffold(
        backgroundColor: Color(0xffF7F8FA),
        body: new Container(
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              chicklyLogo,
              new Container(
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 424.0,
                        width: 295.0,
                        color: Color(0xffF7F8FA),
                        child: Container(
                        decoration:BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            children: <Widget>[
                              new Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:EdgeInsets.only(left:40,right: 39,top:47),
                                      child: Text('Enter your',
                                        style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 26 ,fontWeight: FontWeight.w500))
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(left:40,right: 39,bottom: 8),
                                      child: Text('mobile number',
                                        style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 26 ,fontWeight: FontWeight.w600))
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(left:40,right: 39,bottom: 22),
                                      child: Text('mobile number linked with\nbank is needed to apply',
                                        style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w400))
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom:40,left: 40,right: 39),
                                      child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color:Colors.grey,width:0.1
                                              )
                                            ),
                                            hintText: 'Mobile number',
                                            hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w300))
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 270,
                                        height: 46,
                                        padding: EdgeInsets.only(left:30),
                                        child: RaisedButton(
                                          color: Color(0xff6478D3),
                                            child:Text('Continue',style:GoogleFonts.montserrat(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500)),
                                            onPressed: () => {
                                              Navigator.of(context).pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (context) => OtpVerfication(),
                                                )
                                              )
                                            },
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:new BorderRadius.circular(30.0)
                                            ),
                                          ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:17,bottom:14,left:130,right:130),
                                        child: GestureDetector(
                                          child: Text('Skip',style:GoogleFonts.montserrat(fontSize: 15,color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
                                          onTap: () {
                                          },
                                        ),  
                                      )
                                  ],
                                ),
                              )
                            ],
                          )
                        ),
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:124,right:124,top: 50),
                child: GestureDetector(
                  child: Text('TERMS & CONDITIONS',style:GoogleFonts.montserrat(fontSize: 12,color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
                  onTap: () {
                  },
                ),  
              )
            ],
          ),
        )
      )
    );
  }
}



class RegistrationPage2 extends StatefulWidget {

  _RegistrationPage2 createState() => _RegistrationPage2();
}

class _RegistrationPage2 extends State<RegistrationPage2> with TickerProviderStateMixin {

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
    padding: EdgeInsets.only(left:91,right:90,top:78,bottom:28),
    child:Image.asset('assets/images/Chickly_logo_and_text.png'),
  );


  Widget build(BuildContext context) {
    return FadeTransition(opacity:animation,
      child: Scaffold(
        backgroundColor: Color(0xffF7F8FA),
        body: new Container(
          child: new ListView(
            shrinkWrap: true,
            children:<Widget>[
              chicklyLogo,
              new Container(
                child:Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width:295,
                        height: 355,
                        color: Color(0xffF7F8FA),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: new Column(
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(left: 40.77,right: 246.54,top: 31.85,bottom: 10.08),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerfication()))
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(right:45),
                              child:Text('Give us your',style: GoogleFonts.montserrat(fontSize:26,color: Colors.black,fontWeight: FontWeight.w400),)),
                              Padding(padding: EdgeInsets.only(right:65,bottom: 8),
                              child:Text('Full Name',style: GoogleFonts.montserrat(fontSize:26,color: Colors.black,fontWeight: FontWeight.w500),)),
                              Padding(padding:EdgeInsets.only(right: 65,bottom: 15),
                              child: Text('This is necessary to\ncontinue',style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w400))),),
                              Padding(
                              padding: EdgeInsets.only(bottom:19,left: 35,right: 74),
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.1
                                      )
                                    ),
                                    hintText: ' Full name',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w300))
                                  ),
                                ),
                              ),
                              Container(
                                width: 270,
                                height: 46,
                                padding: EdgeInsets.only(left:25,right: 20),
                                child: RaisedButton(
                                  color: Color(0xff6478D3),
                                    child:Text('Continue',style:GoogleFonts.montserrat(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500)),
                                    onPressed: () => {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => RegistrationPage3(),
                                        )
                                      )
                                    },
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:new BorderRadius.circular(30.0)
                                    ),
                                  ),
                              ),
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}


class RegistrationPage3 extends StatefulWidget {

  _RegistrationPage3 createState() => _RegistrationPage3();
}

class _RegistrationPage3 extends State<RegistrationPage3> with TickerProviderStateMixin {

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
    padding: EdgeInsets.only(left:91,right:90,top:20,bottom:10),
    child:Image.asset('assets/images/Chickly_logo_and_text.png'),
  );


  Widget build(BuildContext context) {
    return FadeTransition(opacity:animation,
      child: Scaffold( 
        backgroundColor: Color(0xffF7F8FA),
        body: new Container(
          child: new ListView(
            shrinkWrap: true,
            children:<Widget>[
              chicklyLogo,
              new Container(
                child:Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width:295,
                        height: 500,
                        color: Color(0xffF7F8FA),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: new Column(
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(left: 24.77,right: 246.54,top: 31.85,bottom: 10.08),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerfication()))
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(right:75),
                              child:Text('Give us your',style: GoogleFonts.montserrat(fontSize:26,color: Colors.black,fontWeight: FontWeight.w400),)),
                              Padding(padding: EdgeInsets.only(right:105,bottom: 8),
                              child:Text('Basic Info',style: GoogleFonts.montserrat(fontSize:26,color: Colors.black,fontWeight: FontWeight.w500),)),
                              Padding(padding:EdgeInsets.only(right: 65,bottom: 10),
                              child: Text('This is not mandatory to\ncontinue',style:GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w400))),),
                              Padding(
                              padding: EdgeInsets.only(bottom:19,left: 35,right: 74),
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.1
                                      )
                                    ),
                                    hintText: 'Enter your email ID',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w300))
                                  ),
                                ),
                              ),
                              Padding(
                              padding: EdgeInsets.only(bottom:19,left: 35,right: 74),
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.1
                                      )
                                    ),
                                    hintText: 'your location',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w300))
                                  ),
                                ),
                              ),
                              Padding(
                              padding: EdgeInsets.only(bottom:19,left: 35,right: 74),
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.1
                                      )
                                    ),
                                    hintText: 'Date of birth',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.black,fontSize: 14 ,fontWeight: FontWeight.w300))
                                  ),
                                ),
                              ),
                              Container(
                                width: 270,
                                height: 46,
                                padding: EdgeInsets.only(left:25,right: 20),
                                child: RaisedButton(
                                  color: Color(0xff6478D3),
                                    child:Text('Continue',style:GoogleFonts.montserrat(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500)),
                                    onPressed: () => {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => Dashboard(),
                                        )
                                      )
                                    },
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:new BorderRadius.circular(30.0)
                                    ),
                                  ),
                              ),
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
                Padding(
                padding: EdgeInsets.only(left:144,right:110,top: 15),
                child: GestureDetector(
                  child: Text('TERMS & CONDITIONS',style:GoogleFonts.montserrat(fontSize: 12,color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
                  onTap: () {
                  },
                ),  
              )
            ]
          ),
        ),
      ),
    );
  }
}



