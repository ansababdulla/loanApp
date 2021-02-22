import 'package:chickly/Common/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Dashboard/dashboard.dart';
import '../../utils/responsive.dart';

class LoanType extends StatefulWidget {
  _LoanType createState () => _LoanType();
}

class _LoanType extends State<LoanType> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;
  String loanType = "";
  var loanButton = false;


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
        backgroundColor: Color(0xff191B23),
        body:new Container(
          color: Color(0xff191B23),
          child: new ListView(
            children:<Widget>
            [
            Padding(
              padding: EdgeInsets.only(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    children:<Widget>[
                      SizedBox(width:Responsive.width(15, context),height:Responsive.height(10, context)),
                      Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                        child: GestureDetector(
                          child: Text('New Loans',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                          onTap: () {
                          },
                        ),  
                      ),
                      SizedBox(width:Responsive.width(10, context),height:Responsive.height(10, context)),
                      Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                          child: GestureDetector(
                            child: Text('My Loans',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                            onTap: () {
                            },
                          ),  
                      ),
                      SizedBox(width:Responsive.width(10, context),height:Responsive.height(10, context)),
                      Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                        child: GestureDetector(
                          child: Text('Pre Approved',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                          onTap: () {
                          },
                        ),  
                      ),
                      SizedBox(width:Responsive.width(10, context),height:Responsive.height(10, context)),
                      Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                        child: GestureDetector(
                          child: Text('Reminders',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                          onTap: () {
                          },
                        ),  
                      ),
                      SizedBox(width:Responsive.width(10, context),height:Responsive.height(10, context)),
                      Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                      child: GestureDetector(
                        child: Text('Activities',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                        onTap: () {
                        },
                      ),  
                    ),
                      SizedBox(width:Responsive.width(10, context),height:Responsive.height(10, context)),
                    Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                      child: GestureDetector(
                        child: Text('Favourite',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                        onTap: () {
                        },
                      ),  
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(width:Responsive.width(51, context),height: Responsive.height(51, context),),
            Padding(padding:EdgeInsets.only(left: Responsive.width(16, context),right: Responsive.width(16, context)),
              child: Container(
                width: Responsive.width(343, context),
                height: Responsive.height(588, context),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children:[
                    Padding(padding:EdgeInsets.only(left:Responsive.width(6, context),right:Responsive.width(132, context),top: Responsive.height(39, context),bottom: Responsive.height(49, context)),
                    child:Text('Choose Your\nLoan Type',style: GoogleFonts.montserrat(fontSize:Responsive.height(24, context),fontWeight:FontWeight.w700,color:Colors.black),),),
                    Row(
                      children: [
                        Padding(padding:EdgeInsets.only(left:44,right:31,bottom:50),
                          child:Container(
                            width: Responsive.width(113, context),
                            height: Responsive.height(143, context),
                            child: new Column(
                              children:[
                                GestureDetector(
                                  child:Container(
                                    width: Responsive.width(113, context),
                                    height: Responsive.height(113, context),
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/001-home.png')),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      loanType  = "home";
                                      loanButton = true;

                                    });
                                  },
                                ),
                                SizedBox(width:Responsive.width(8, context),height:Responsive.height(8, context)),
                                Text('Home Loan',style: GoogleFonts.montserrat(fontSize:Responsive.height(14, context),fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                        Padding(padding:EdgeInsets.only(right:43,bottom:50),
                          child:Container(
                            width: Responsive.width(113, context),
                            height: Responsive.height(143, context),
                            child: new Column(
                              children:[
                                GestureDetector(
                                  child:Container(
                                    width: Responsive.width(113, context),
                                    height: Responsive.height(113, context),
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/002-car.png')),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      loanType  = "car";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(width:Responsive.width(8, context),height:Responsive.height(8, context)),
                                Text('Car Loan',style: GoogleFonts.montserrat(fontSize:Responsive.height(14, context),fontWeight:FontWeight.w600,color:Colors.black))
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
                            width: Responsive.width(113, context),
                            height: Responsive.height(143, context),
                            child: new Column(
                              children:[
                                GestureDetector(
                                  child:Container(
                                    width: Responsive.width(113, context),
                                    height: Responsive.height(113, context),
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/004-man.png')),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      loanType  = "personal";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(width:Responsive.width(8, context),height:Responsive.height(8, context)),
                                Text('Personal Loan',style: GoogleFonts.montserrat(fontSize:Responsive.height(14, context),fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                        Padding(padding:EdgeInsets.only(right:43,bottom:30),
                          child:Container(
                            width: Responsive.width(113, context),
                            height: Responsive.height(143, context),
                            child: new Column(
                              children:[
                                GestureDetector(
                                  child:Container(
                                    width: Responsive.width(113, context),
                                    height: Responsive.height(113, context),
                                    decoration: BoxDecoration(
                                      color: Color(0xff6478D3),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(child:Image.asset('assets/images/003-book.png')),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      loanType  = "education";
                                      loanButton = true;
                                    });
                                  },
                                ),
                                SizedBox(width:Responsive.width(8, context),height:Responsive.height(8, context)),
                                Text('Education Loan',style: GoogleFonts.montserrat(fontSize:Responsive.height(14, context),fontWeight:FontWeight.w600,color:Colors.black))
                              ]
                            ),
                          )
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(),
                    child:Container(
                      width: Responsive.width(120, context),
                      height: Responsive.height(38, context),
                      child: RaisedButton(
                        color: Color(0xff6478D3),
                          child:Text('Continue',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w500)),
                          onPressed: loanButton ? () => {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => LoanType(),
                              )
                            )
                          } : null,
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
        ),
        bottomNavigationBar: navBar(context),
      )
    );
  }
}