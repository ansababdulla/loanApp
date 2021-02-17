import 'dart:developer';
import 'package:chickly/models/dashboard.dart';
import 'package:chickly/redux/actions.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../RewardsandOffers/rewardsAndOffers.dart';
import '../redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:chickly/AppyLoan/NewLoan/apply_loan.dart';

class Dashboard extends StatefulWidget{
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> with TickerProviderStateMixin{
    
  AnimationController controller;
  Animation<double> animation;
  dynamic dash;
  final ScrollController _scrollController = ScrollController();
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
    final nav = new Container(                                        
          child: ClipRRect(                                                            
            borderRadius: BorderRadius.all(      
              Radius.circular(30.0)                                                                               
            ),
            child: BottomNavigationBar(      
              backgroundColor: Colors.amber, 
              unselectedItemColor: Colors.grey,  
              selectedItemColor: Colors.black87,
              items: <BottomNavigationBarItem>[                                        
                BottomNavigationBarItem(                                               
                  icon: Icon(Icons.home),label: 'Hom'),
                BottomNavigationBarItem(                                               
                  icon: Icon(Icons.attach_money),label: 'Home'),
                BottomNavigationBarItem(                                               
                  icon: Icon(Icons.library_books),label: 'Home'),
                BottomNavigationBarItem(                                               
                  icon: Icon(Icons.school),label: 'Home')
              ],
            ),
          )
        );
  Widget build(BuildContext context) {
    return FadeTransition(opacity: animation,
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Color(0xff191B23),
          actions: <Widget>[

            IconButton(
              icon: Image.asset('assets/images/Group 15.png',),
              onPressed: () => {},
            ),
            IconButton(
              icon: Image.asset('assets/images/Avatar Selected.png'),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
                size:28
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size:28
              ),
              onPressed: () {
                // do something
              },
            )

          ],
        ),
        backgroundColor: Color(0xff191B23),
        body: Container(
          child: StoreConnector<AppState,String>(
            converter: (store) => store.state.fadeDash,
            builder: (context,String fadeDash) =>  ListView(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                child:Container(
                  width: Responsive.width(315, context),
                  height: Responsive.height(60,context)
                  ,
                  color: Color(0xff191B23),
                  child: Column(
                    children:[
                      Column(
                        children:[
                          Row(
                            children:[]
                          )
                        ]
                      ),
                      Column(
                        children:[

                          if (fadeDash == "Dashboard") ...[
                            Row(
                              children:[
                                Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                                    child: GestureDetector(
                                      child: Text('Dashboard',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                                      onTap: () {
                                      },
                                    ),  
                                ),
                                Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(115, context)),
                                    child: GestureDetector(
                                      child: Text('Rewards & Offers',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white12,fontWeight: FontWeight.w600)),
                                      onTap: () {
                                        StoreProvider.of<AppState>(context).dispatch(UpdateDrinkAction('Rewards'));
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => RewardsAndOffers()));
                                      },
                                    ),  
                                ),
                              ]
                            )
                          ],
                          if (fadeDash == "Rewards") ...[
                            Row(
                              children:[
                                Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(36, context)),
                                    child: GestureDetector(
                                      child: Text('Dashboard',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white70,fontWeight: FontWeight.w600)),
                                      onTap: () {
                                      },
                                    ),  
                                ),
                                Padding(padding:EdgeInsets.only(top:Responsive.height(28, context),bottom: Responsive.height(15, context),right: Responsive.width(115, context)),
                                    child: GestureDetector(
                                      child: Text('Rewards & Offers',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w600)),
                                      onTap: () {
                                        StoreProvider.of<AppState>(context).dispatch(UpdateDrinkAction('Rewards'));
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => RewardsAndOffers()));
                                      },
                                    ),  
                                ),
                              ]
                            )
                          ]
                        ]
                      )
                    ]
                  ),
                )),
                Padding(padding: EdgeInsets.only(top:Responsive.height(21, context),left:Responsive.width(20, context),right: Responsive.width(20, context),bottom:Responsive.height(15, context)),
                child: Container(
                  width: Responsive.width(335, context),
                  height: Responsive.height(160, context),
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffF7F8FA),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: new Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(),
                            child: Column(
                              children: <Widget>[
                              Padding(padding: EdgeInsets.only(top:Responsive.height(31, context),left:Responsive.width(37, context),bottom:Responsive.height(35, context),right:Responsive.width(22.44, context)),
                                    child:Container(
                                      width: Responsive.width(180, context),
                                      height: Responsive.height(94, context),
                                      child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(),
                                        child:Text('Looking for a loan',style: GoogleFonts.montserrat(fontSize:Responsive.height(18, context),fontWeight:FontWeight.w700),)
                                        ),
                                        Padding(padding: EdgeInsets.only(bottom: Responsive.width(15, context)),
                                        child: Text('Easy & Afforfable',style:GoogleFonts.montserrat(fontSize:Responsive.height(13, context),fontWeight:FontWeight.w600,color: Color(0xff676C6D))),
                                        ),
                                        Padding(padding: EdgeInsets.only(),
                                        child:Container(
                                          width: Responsive.width(130, context),
                                          height: Responsive.height(38, context),
                                          child: RaisedButton(
                                            color: Color(0xff6478D3),
                                              child:Text('Apply now',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.white,fontWeight: FontWeight.w500)),
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),   
                          Padding(padding: EdgeInsets.only(top:Responsive.height(49, context),bottom:Responsive.height(42, context),right:Responsive.width(35, context)),
                          child:Container(
                            width: Responsive.width(60, context),
                            height: Responsive.height(69, context),
                            child: Image.asset('assets/images/001-save-money.png'),
                            ),
                          )
                        ],
                      ), //childone
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:Responsive.width(21, context),right: Responsive.width(21, context),bottom:Responsive.height(15, context)),
                child: Container(
                  width: Responsive.width(333, context),
                  height: Responsive.height(113, context),
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff323C6A),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top:Responsive.height(27, context),bottom: Responsive.height(20, context),left: Responsive.width(36, context),right: Responsive.width(10, context)),
                          child:Container(
                            width: Responsive.width(230, context),
                            height: Responsive.height(89, context),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[
                                Text('Hello, Smith',style: GoogleFonts.montserrat(fontSize:Responsive.height(18, context),fontWeight:FontWeight.w700,color: Colors.white),),
                                Padding(child: Text('Complete your profile',style: GoogleFonts.montserrat(fontSize:Responsive.height(13, context),fontWeight:FontWeight.w700,color: Color(0xffB5BABB)),),padding: EdgeInsets.only(bottom:13),),
                                LinearPercentIndicator(
                                  width: Responsive.width(200, context),
                                  lineHeight: Responsive.height(7, context),
                                  percent: 0.5,
                                  backgroundColor: Colors.white,
                                  progressColor: Colors.blue,
                                ),
                              ]
                            ),
                          )
                          ),
                          Padding(padding: EdgeInsets.only(top:Responsive.height(39.5, context),bottom: Responsive.height(64.5, context),right: Responsive.width(5, context),left: Responsive.width(3, context)),
                          child: Container(
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios,color: Color(0xff6478D3),),
                              onPressed: () { log('message');},
                              )
                            )
                          )
                        ],
                      ) , //childtwo
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:Responsive.width(21, context),right: Responsive.width(21, context),bottom:Responsive.height(15, context)),
                child: Container(
                  width: Responsive.width(335, context),
                  height: Responsive.height(374, context),
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff2D3233),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(),
                          child:Column(children: <Widget>[
                            Padding(padding:EdgeInsets.only(top:Responsive.height(27, context)),child:Text('Check your credit score',style: GoogleFonts.montserrat(fontSize:Responsive.height(16, context),fontWeight:FontWeight.w700,color: Colors.white),)),
                            Padding(child: Text('Get free credit report',style: GoogleFonts.montserrat(fontSize:Responsive.height(12, context),fontWeight:FontWeight.w600,color: Color(0xffB5BABB)),),padding: EdgeInsets.only(bottom:Responsive.width(13, context)),),
                            CircularPercentIndicator(
                            radius: Responsive.width(180, context),
                            animation: true,
                            animationDuration: 1200,
                            lineWidth: 15.0,
                            percent: 0.75,
                            center: new Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('820',style: GoogleFonts.montserrat(color: Colors.white,fontSize:Responsive.height(22, context),fontWeight: FontWeight.w700),),
                                Text('Excellent',style:GoogleFonts.montserrat(color:Color(0xffB5BABB),fontSize:Responsive.height(11, context),fontWeight: FontWeight.w600))
                              ],
                            ),
                            circularStrokeCap: CircularStrokeCap.butt,
                            backgroundColor: Colors.white,
                            progressColor: Color(0xff6478D3),
                          ),
                          Padding(padding: EdgeInsets.only(top: Responsive.height(31, context)),
                          child:Container(
                            width: Responsive.width(108, context),
                            height: Responsive.height(34, context),
                            child:RaisedButton(onPressed: (){ },
                            color: Color(0xff191B23),
                            child:Text('View now',style:GoogleFonts.montserrat(fontSize: Responsive.height(11, context),color: Colors.white,fontWeight: FontWeight.w700)),
                            shape: new RoundedRectangleBorder(
                            borderRadius:new BorderRadius.circular(30.0)
                            ),
                          )))
                          ],))
                        ],
                      ) , //childthree
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:Responsive.width(21, context),right: Responsive.width(21, context),bottom:Responsive.height(15, context)),
                child: Container(
                  width: Responsive.width(333, context),
                  height: Responsive.height(162, context),
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff6478D3),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:new Container(
                        child: new Column(
                          children:<Widget>[
                            Row(children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget>[
                                  Padding(padding: EdgeInsets.only(left:Responsive.width(26, context),top:Responsive.height(26, context),right:Responsive.width(37, context)),
                                  child: Text('Congratulations for your',style: GoogleFonts.montserrat(fontSize:Responsive.height(12, context),color:Color(0xffE8E9EA),fontWeight:FontWeight.w400),),),
                                  Padding(padding: EdgeInsets.only(left:Responsive.width(26, context),right:Responsive.width(37, context),bottom:Responsive.height(25, context)),
                                  child: Text('Pre-approved loan',style: GoogleFonts.montserrat(fontSize:Responsive.height(15 , context),color:Colors.white,fontWeight:FontWeight.w700),),)
                                ]
                              ),
                              Padding(padding:EdgeInsets.only(top:Responsive.height(15, context),right: Responsive.width(27, context),bottom: Responsive.height(17, context)),
                              child:Image.asset('assets/images/Group 3571.png'))
                            ],),
                            Row(
                              children: <Widget>[
                              Column(
                                children:<Widget>[
                                  Padding(padding: EdgeInsets.only(left:Responsive.width(25, context),right: Responsive.width(53, context)),
                                  child:Text('125000',style: GoogleFonts.montserrat(fontSize:Responsive.height(26, context),color:Colors.white,fontWeight:FontWeight.w700),) ,),
                                  Padding(padding: EdgeInsets.only(left:Responsive.width(25, context),right: Responsive.width(54, context)),
                                  child:Text('12% interest rate',style: GoogleFonts.montserrat(fontSize:Responsive.height(12, context),color:Color(0xffF7F8F9),fontWeight:FontWeight.w400),))
                                ]
                              ),
                                Container(
                                  width: Responsive.width(120, context),
                                  height: Responsive.height(38, context),
                                  child: RaisedButton(
                                    color: Colors.white,
                                      child:Text('Apply now',style:GoogleFonts.montserrat(fontSize: Responsive.height(13, context),color: Colors.black,fontWeight: FontWeight.w700)),
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
                            ],)
                          ]
                        ),
                      ) , //childfour
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:21,right: 21,bottom:15),
                child: Container(
                  width: 333,
                  height: 234,
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffF7F8F9),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:new Column(
                        children: [
                          Column(
                            children:[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(padding:EdgeInsets.only(left: 25,right: 110,top: 22),
                                  child: Text('Auto Loan',style: GoogleFonts.montserrat(fontSize:16,color:Colors.black,fontWeight:FontWeight.w500)),),
                                  Padding(padding:EdgeInsets.only(left: 25,right: 76,bottom: 38),
                                  child:Text('State bank of india',style: GoogleFonts.montserrat(fontSize:12,color:Colors.black,fontWeight:FontWeight.w400)))
                                ]
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(padding:EdgeInsets.only(right: 25,top: 22),
                                  child:Text('Application ID',style: GoogleFonts.montserrat(fontSize:12,color:Colors.black,fontWeight:FontWeight.w300),)),
                                  Padding(padding:EdgeInsets.only(right: 25,bottom: 38),
                                  child:Text('1234567',style: GoogleFonts.montserrat(fontSize:12,color:Colors.black,fontWeight:FontWeight.w500)))
                                ]
                              ),
                            ],)
                            ]
                          ),
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 46,right: 45,bottom: 65),
                              child:Text('a'))
                            ],
                          ),
                          Column(
                            children:[
                              Container(
                                width: 120,
                                height: 38,
                                child: RaisedButton(
                                  color: Color(0xff6478D3),
                                    child:Text('View Details',style:GoogleFonts.montserrat(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w500)),
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
                          )

                        ],
                      ) , //childfive
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:21,right: 21,bottom:15),
                child: Container(
                  width: 335,
                  height: 270,
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff242A39),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:new Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: EdgeInsets.only(top:19,left: 26 ),
                                      child: Text('Auto loan',style: GoogleFonts.montserrat(color:Color(0xff51DC8E),fontSize:16,fontWeight:FontWeight.w500),),),
                                      Padding(padding: EdgeInsets.only(left: 26,bottom: 37),
                                      child: Text('State bank of india',style: GoogleFonts.montserrat(color:Color(0xff8C9192),fontSize:12,fontWeight:FontWeight.w500)),)
                                    ],),
                                    Padding(padding: EdgeInsets.only(top: 32,right: 33,bottom: 68),
                                    child:Container(
                                      width:121,
                                      height: 15,
                                      decoration: BoxDecoration(color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      ),
                                      child:Center(child:Text('Due on 15 Nov 2021',style: GoogleFonts.montserrat(color:Color(0xff8C9192),fontSize:12,fontWeight:FontWeight.w400))) ,
                                    )
                                    )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 25.5,top: 22.41,right:62.41,bottom: 28.5),
                                  child: Text('data',style: GoogleFonts.montserrat(color:Color(0xff8C9192),fontSize:12,fontWeight:FontWeight.w300)),),
                                  Padding(padding: EdgeInsets.only(bottom:72),
                                  child: Container(
                                    width: 120,
                                    height: 38,
                                      child: RaisedButton(
                                      color: Colors.white,
                                      child:Text('View Details',style:GoogleFonts.montserrat(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w500)),
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
                                    )
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children:[
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle
                                            ),
                                          ),
                                          SizedBox(width:5,height:5),
                                          Padding(padding:EdgeInsets.only(),
                                          child:Text('Paid',style: GoogleFonts.montserrat(color:Color(0xff8D92A3),fontSize:11,fontWeight:FontWeight.w400)))
                                        ]
                                      ),
                                      Padding(padding: EdgeInsets.only(),
                                      child:Text('3,55,000',style: GoogleFonts.montserrat(color:Color(0xffF7F8F9),fontSize:14,fontWeight:FontWeight.w500)))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children:[
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle
                                            ),
                                          ),
                                          SizedBox(width:5,height:5),
                                          Padding(padding:EdgeInsets.only(),
                                          child:Text('Balance',style: GoogleFonts.montserrat(color:Color(0xff8D92A3),fontSize:11,fontWeight:FontWeight.w400)))
                                        ]
                                      ),
                                      Padding(padding: EdgeInsets.only(),
                                      child:Text('3,55,000',style: GoogleFonts.montserrat(color:Color(0xffF7F8F9),fontSize:14,fontWeight:FontWeight.w500)))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children:[
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              shape: BoxShape.circle
                                            ),
                                          ),
                                          SizedBox(width:5,height:5),
                                          Padding(padding:EdgeInsets.only(),
                                          child:Text('Interest',style: GoogleFonts.montserrat(color:Color(0xff8D92A3),fontSize:11,fontWeight:FontWeight.w400)))
                                        ]
                                      ),
                                      Padding(padding: EdgeInsets.only(),
                                      child:Text('3,55,000',style: GoogleFonts.montserrat(color:Color(0xffF7F8F9),fontSize:14,fontWeight:FontWeight.w500)))
                                    ],
                                  ),
                                ]
                              )
                            ],
                          )
                        ],
                      ) , //childsix
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 21,right: 21),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: <Widget>[
                    Container(
                    width: 327,
                    height: 152,
                    padding: EdgeInsets.only(right:10),
                    decoration: BoxDecoration(
                      gradient:LinearGradient(
                        colors: [
                          Color(0xffBC3EFF),
                          Color(0xff8737FF)
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)) 
                      ),
                      child: Column(
                        children:[
                          Column(
                            children: [
                              Row(
                                children:[
                                  Column(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 25,top: 18,right: 60),
                                      child: Text('Auto Loan',style: GoogleFonts.montserrat(fontSize:16,color:Colors.white,fontWeight:FontWeight.w700),),),
                                      Padding(padding: EdgeInsets.only(left: 25,right: 36,bottom: 34),
                                      child: Text('State Bank of India',style: GoogleFonts.montserrat(fontSize:12,color:Colors.white,fontWeight:FontWeight.w400)),)
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 30,bottom:35),
                                    child:Container(
                                      width:132,
                                      height: 24,
                                      decoration: BoxDecoration(color: Colors.white30,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      ),
                                      child:Center(child:Text('7 Days Remaining',style: GoogleFonts.montserrat(color:Colors.white70,fontSize:12,fontWeight:FontWeight.w500))) ,
                                    )
                                  )
                                ]
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 25,right: 65),
                                      child: Text('11000',style: GoogleFonts.montserrat(color:Colors.white,fontSize:26,fontWeight:FontWeight.w700)),),
                                      Padding(padding: EdgeInsets.only(left: 25,right:36),
                                      child: Text('Due on 5 Nov 2021',style: GoogleFonts.montserrat(color:Colors.white54,fontSize:12,fontWeight:FontWeight.w500)),)
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(),
                                  child: Container(
                                    width: 120,
                                    height: 38,
                                      child: RaisedButton(
                                      color: Colors.white,
                                    child:Center(child:Text('Pay Now',style: GoogleFonts.montserrat(color:Colors.black,fontSize:13,fontWeight:FontWeight.w500))),
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
                                    )
                                  )
                                ],
                              )
                            ],
                          )
                        ]
                      ),
                    ),
                    SizedBox(width: 10,height: 10),
                    Container(
                      width: 327,
                      height: 152,
                      padding: EdgeInsets.only(right:10),
                      decoration: BoxDecoration(
                        gradient:LinearGradient(
                          colors: [
                            Color(0xff323C6A),
                            Color(0xff6478D3),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)) 
                        ),
                        child: Column(
                          children:[
                            Column(
                              children: [
                                Row(
                                  children:[
                                    Column(
                                      children: [
                                        Padding(padding: EdgeInsets.only(left: 25,top: 18,right: 60),
                                        child: Text('Home Loan',style: GoogleFonts.montserrat(fontSize:16,color:Colors.white,fontWeight:FontWeight.w700),),),
                                        Padding(padding: EdgeInsets.only(left: 25,right: 36,bottom: 34),
                                        child: Text('State Bank of India',style: GoogleFonts.montserrat(fontSize:12,color:Colors.white,fontWeight:FontWeight.w400)),)
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 30,bottom:35),
                                      child:Container(
                                        width:132,
                                        height: 24,
                                        decoration: BoxDecoration(color: Colors.white30,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                        child:Center(child:Text('5 Days Remaining',style: GoogleFonts.montserrat(color:Colors.white70,fontSize:12,fontWeight:FontWeight.w500))) ,
                                      )
                                    )
                                  ]
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(padding: EdgeInsets.only(left: 25,right: 65),
                                        child: Text('24000',style: GoogleFonts.montserrat(color:Colors.white,fontSize:26,fontWeight:FontWeight.w700)),),
                                        Padding(padding: EdgeInsets.only(left: 25,right:36),
                                        child: Text('Due on 15 Nov 2021',style: GoogleFonts.montserrat(color:Colors.white54,fontSize:12,fontWeight:FontWeight.w500)),)
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.only(),
                                    child: Container(
                                      width: 120,
                                      height: 38,
                                        child: RaisedButton(
                                        color: Colors.white,
                                      child:Center(child:Text('Pay Now',style: GoogleFonts.montserrat(color:Colors.black,fontSize:13,fontWeight:FontWeight.w500))),
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
                                      )
                                    )
                                  ],
                                )
                              ],
                            )
                          ]
                        ),
                      ),
                      SizedBox(width: 10,height: 10),
                      Container(
                      width: 150,
                      height: 152,
                      padding: EdgeInsets.only(right:10),
                      decoration: BoxDecoration(
                        gradient:LinearGradient(
                          colors: [
                            Colors.white70,
                            Colors.white70,
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)) 
                        ),
                        child: Column(
                          children:[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(padding: EdgeInsets.only(top:30,left: 10,right: 34,bottom: 7),
                              child:Text('Link your\nloans',style: GoogleFonts.montserrat(fontSize:18,color:Colors.black,fontWeight:FontWeight.w600),))
                            ],),
                            Column(
                              children: [
                              Padding(padding: EdgeInsets.only(left: 50),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                child: Center(child:IconButton(icon: Icon(Icons.add),color: Color(0xff6478D3),onPressed: (){},iconSize: 40,)),
                              ),)
                            ],)
                          ]
                        ),
                      ),
                  ],
                ),
              ),
                ),
                Padding(padding: EdgeInsets.only(left:21,right: 21,bottom:84,top: 15),
                child: Container(
                  width: 335,
                  height: 145,
                  color: Color(0xff191B23),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xff2D3233),
                        gradient:LinearGradient(
                          colors: [
                            Color(0xff323C6A),
                            Color(0xff6478D3)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child:new Row(
                        children: [
                          Row(
                            children:[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(padding:EdgeInsets.only(top: 28,left: 28,right: 34,bottom: 7),
                                  child:Text('Invite a friend,\nYou and your\nfriend win',style: GoogleFonts.montserrat(fontSize:16,color:Colors.white70,fontWeight:FontWeight.w600))),
                                  Padding(padding: EdgeInsets.only(left: 28,right: 17,bottom: 15),
                                  child: Text('1000 each',style: GoogleFonts.montserrat(fontSize:26,color:Colors.white,fontWeight:FontWeight.w700)),)
                                ]
                              ),
                              Padding(padding: EdgeInsets.only(top: 7,left: 10),
                              child: Image.asset('assets/images/g10.png'),)
                            ]
                          )
                        ],
                      ) , //childone
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: nav
      ),
    );
  }
}
 






                                                   










