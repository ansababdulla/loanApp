import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanType extends StatefulWidget {
  _LoanType createState () => _LoanType();
}

class _LoanType extends State<LoanType> with TickerProviderStateMixin {

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
      opacity:animation,
      child: Scaffold(
        backgroundColor: Colors.black,
        body:new Container(
          color: Colors.black,
          child: new ListView(
            children:<Widget>[
            Padding(padding:EdgeInsets.only(left: 16,right: 16),
              child: Container(
                width: 343,
                height: 588,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children:[
                    Padding(padding:EdgeInsets.only(left:6,right:132,top: 39,bottom: 45),
                    child:Text('Choose Your\nLoan Type',style: GoogleFonts.montserrat(fontSize:24,fontWeight:FontWeight.w700,color:Colors.black),),),
                    Row(
                      children: [
                        Padding(padding:EdgeInsets.only(left:44,right:31,bottom:50),
                          child:Container(
                            width: 113,
                            height: 143,
                            child: new Column(
                              children:[
                                  Container(
                                    width: 113,
                                    height: 113,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/001-home.png')),
                                  ),
                                  SizedBox(width:9,height:9),
                                  Text('Home Loan',style: GoogleFonts.montserrat(fontSize:14,fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                        Padding(padding:EdgeInsets.only(right:43,bottom:50),
                          child:Container(
                            width: 113,
                            height: 143,
                            child: new Column(
                              children:[
                                  Container(
                                    width: 113,
                                    height: 113,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/002-car.png')),
                                  ),
                                  SizedBox(width:9,height:9),
                                  Text('Car Loan',style: GoogleFonts.montserrat(fontSize:14,fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding:EdgeInsets.only(left:44,right:31,bottom:30),
                          child:Container(
                            width: 113,
                            height: 143,
                            child: new Column(
                              children:[
                                  Container(
                                    width: 113,
                                    height: 113,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/004-man.png')),
                                  ),
                                  SizedBox(width:9,height:9),
                                  Text('Personal Loan',style: GoogleFonts.montserrat(fontSize:14,fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                        Padding(padding:EdgeInsets.only(right:43,bottom:30),
                          child:Container(
                            width: 113,
                            height: 143,
                            child: new Column(
                              children:[
                                  Container(
                                    width: 113,
                                    height: 113,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/003-book.png')),
                                  ),
                                  SizedBox(width:9,height:9),
                                  Text('Education Loan',style: GoogleFonts.montserrat(fontSize:14,fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(),
                    child:Container(
                      width: 120,
                      height: 38,
                      child: RaisedButton(
                        color: Color(0xff6478D3),
                          child:Text('Continue',style:GoogleFonts.montserrat(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w500)),
                          onPressed: () => {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => LoanType(),
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
            ]
          ),
        )
      )
    );
  }
}