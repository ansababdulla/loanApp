
import 'package:chickly/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Registration/otp_verification.dart';
import '../Dashboard/dashboard.dart';
import '../utils/responsive.dart';

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


  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FadeTransition(
      opacity: animation,
      child: Scaffold( 
        backgroundColor: Color(0xff242A39),
        body: Stack(
          children: [
            ClipPath(
              clipper: HeaderColor(),
              child: Container(
                decoration:BoxDecoration(color: Color(0xffF7F8FA))
              ),
            ),
            new ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(left:Responsive.width(91, context),right:Responsive.width(90, context),top:Responsive.height(78, context),bottom:Responsive.height(28, context)),
                  child:Image.asset('assets/images/Chickly_logo_and_text.png'),
                ),
                new Container(
                  child:Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: size.height * 0.52,
                          width: size.width * 0.79,
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
                                        padding:EdgeInsets.only(left:size.width * 0.11,right: size.width * 0.10,top:size.height * 0.06),
                                        child: Text('Enter your',
                                          style:GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff242A39),fontSize: size.height * 0.03 ,fontWeight: FontWeight.w500))
                                        ),
                                      ),
                                      Padding(
                                        padding:EdgeInsets.only(left:size.width * 0.11,right: size.width * 0.10,bottom: size.height * 0.01),
                                        child: Text('mobile number',
                                          style:GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff242A39),fontSize: size.height * 0.03 ,fontWeight: FontWeight.w700))
                                        ),
                                      ),
                                      Padding(
                                        padding:EdgeInsets.only(left:size.width * 0.11,right: 39,bottom: 22),
                                        child: Text('mobile number linked with\nbank is needed to apply',
                                          style:GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff676C6D),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom:Responsive.height(40, context),left: Responsive.width(40, context),right: Responsive.width(39, context)),
                                        child: Container(
                                          width:Responsive.width(295, context),
                                          height: Responsive.height(62, context),
                                            child :TextField(
                                              decoration: InputDecoration(
                                                enabledBorder: const OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color:Colors.grey,width:0.1
                                                  )
                                                ),
                                                hintText: 'Mobile number',
                                                hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff676C6D),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))
                                              ),
                                            ),
                                          )
                                        ),
                                        Center(
                                          child:Container(
                                          width: Responsive.width(235, context),
                                          height: Responsive.height(46, context),
                                          child: RaisedButton(
                                            color: Color(0xff6478D3),
                                              child:Text('Continue',style:GoogleFonts.montserrat(fontSize: Responsive.height(15, context),color: Colors.white,fontWeight: FontWeight.w500)),
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
                                        ),
                                        Container(
                                          width:Responsive.width(295, context),
                                          height: Responsive.height(46, context),
                                          child: Center(
                                            child:GestureDetector(
                                            child: Text('Skip',style:GoogleFonts.montserrat(fontSize: Responsive.height(14, context),color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
                                            onTap: () {
                                            },
                                          ),
                                          )  
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
                  padding: EdgeInsets.only(left:Responsive.width(124, context),right:Responsive.width(124, context),top: Responsive.height(50, context)),
                  child: GestureDetector(
                    child: Text('TERMS & CONDITIONS',style:GoogleFonts.montserrat(fontSize: Responsive.height(11, context),color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
                    onTap: () {
                    },
                  ),  
                )
              ],
            ),
          ],
        ),
      ),
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
              new Container(
                padding: EdgeInsets.only(left:Responsive.width(91, context),right:Responsive.width(90, context),top:Responsive.height(78, context),bottom:Responsive.height(28, context)),
                child:Image.asset('assets/images/Chickly_logo_and_text.png'),
              ),
              new Container(
                child:Center(
                  child: Column(
                    children: <Widget>[
                      new Container(
                        width:Responsive.width(295, context),
                        height: Responsive.height(380, context),
                        color: Color(0xffF7F8FA),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: new Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(left: Responsive.width(40.77,context),right: Responsive.width(246.57, context),top: Responsive.height(31.85, context),bottom: Responsive.height(5.08, context)),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: Responsive.height(20, context),),
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerfication()))
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(right:Responsive.width(39, context),left:Responsive.width(40, context)),
                              child:Text('Give us your',style: GoogleFonts.montserrat(fontSize:Responsive.height(26, context),color: Colors.black,fontWeight: FontWeight.w400),)),
                              Padding(padding: EdgeInsets.only(left:Responsive.width(40, context),right:Responsive.width(39, context),bottom: Responsive.height(8, context)),
                              child:Text('Full Name',style: GoogleFonts.montserrat(fontSize:Responsive.height(26, context),color: Colors.black,fontWeight: FontWeight.w500),)),
                              Padding(padding:EdgeInsets.only(left:Responsive.width(40, context),right : Responsive.width(39, context),bottom: Responsive.height(15, context)),
                              child: Text('This is necessary to\ncontinue',style:GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff676C6D),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))),),
                              Padding(
                              padding: EdgeInsets.only(bottom:Responsive.height(19, context),left: Responsive.width(40, context),right: Responsive.width(39, context)),
                              child: Container(
                                width:Responsive.width(295, context),
                                height: Responsive.height(62, context),
                                  child:TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color:Colors.grey,width:0.01
                                        )
                                      ),
                                      hintText: ' Full name',
                                      hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff676C6D),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))
                                    ),
                                  ),
                                )
                              ),
                              Padding(
                                padding:EdgeInsets.only(left:Responsive.width(30, context),right:Responsive.width(30, context)),
                                child:                               Container(
                                width: Responsive.width(235, context),
                                height: Responsive.height(46, context),
                                child: RaisedButton(
                                  color: Color(0xff6478D3),
                                    child:Text('Continue',style:GoogleFonts.montserrat(fontSize: Responsive.height(15, context),color: Colors.white,fontWeight: FontWeight.w500)),
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
                              )

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
                    children: <Widget>[
                      new Container(
                        width:Responsive.width(295, context),
                        height: Responsive.height(546, context),
                        color: Color(0xffF7F8FA),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(left: Responsive.width(24.77, context),right: Responsive.width(246.54, context),top: Responsive.height(31.85, context),bottom: Responsive.height(10.08, context)),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: Responsive.height(20, context),),
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerfication()))
                                },
                              ),),
                              Padding(padding: EdgeInsets.only(right:Responsive.width(39, context),left: Responsive.width(40, context)),
                              child:Text('Give us your',style: GoogleFonts.montserrat(fontSize:Responsive.height(26, context),color: Colors.black,fontWeight: FontWeight.w400),)),
                              Padding(padding: EdgeInsets.only(right:Responsive.width(39, context),bottom: Responsive.height(8, context),left: Responsive.width(40, context)),
                              child:Text('Basic Info',style: GoogleFonts.montserrat(fontSize:Responsive.height(26, context),color: Colors.black,fontWeight: FontWeight.w500),)),
                              Padding(padding:EdgeInsets.only(right: Responsive.width(39, context),bottom: Responsive.height(10, context),left:Responsive.width(40, context)),
                              child: Text('This is not mandatory to\ncontinue',style:GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff676C6D),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))),),
                              Padding(
                              padding: EdgeInsets.only(bottom:Responsive.height(19, context),left: Responsive.width(40, context),right: Responsive.width(39, context)),
                              child:Container(
                                width:Responsive.width(295, context),
                                height:Responsive.height(62, context),
                                child :TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.01
                                      )
                                    ),
                                    hintText: 'Enter your email ID',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff8D92A3),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))
                                  ),
                                ),
                              ) 
                              ),
                              Padding(
                              padding: EdgeInsets.only(bottom:Responsive.height(19, context),left: Responsive.width(40, context),right: Responsive.width(39, context)),
                              child: Container(
                                width:Responsive.width(295, context),
                                height:Responsive.height(62, context),
                                child :                               TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.01
                                      )
                                    ),
                                    hintText: 'your location',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff8D92A3),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))
                                  ),
                                ),
                              ) 

                              ),
                              Padding(
                              padding: EdgeInsets.only(bottom:Responsive.height(19, context),left: Responsive.width(40, context),right: Responsive.width(39, context)),
                              child: Container(
                                width:Responsive.width(295, context),
                                height:Responsive.height(62, context),
                                child :                               TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color:Colors.grey,width:0.01
                                      )
                                    ),
                                    hintText: 'Date of birth',
                                    hintStyle: GoogleFonts.montserrat(textStyle:TextStyle(color: Color(0xff8D92A3),fontSize: Responsive.height(14, context) ,fontWeight: FontWeight.w500))
                                  ),
                                ),
                              ) 

                              ),
                              Padding(padding: EdgeInsets.only(),
                              child:Center(
                                child:Container(
                                width: Responsive.width(235, context),
                                height: Responsive.height(46, context),
                                child: RaisedButton(
                                  color: Color(0xff6478D3),
                                    child:Text('Continue',style:GoogleFonts.montserrat(fontSize: Responsive.height(15, context),color: Colors.white,fontWeight: FontWeight.w500)),
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
                              ))
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
                Padding(
                padding: EdgeInsets.only(left:Responsive.width(124, context),right:Responsive.width(123, context),top: Responsive.height(39, context)),
                child: GestureDetector(
                  child: Text('TERMS & CONDITIONS',style:GoogleFonts.montserrat(fontSize: Responsive.height(11, context),color: Color(0xff6478D3),fontWeight: FontWeight.w500)),
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



class HeaderColor extends CustomClipper<Path>{

  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - (0.85 * size.height));
    path.lineTo(size.width, size.height - (size.height * 0.15));
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}



