import 'package:chickly/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../RewardsandOffers/rewardsAndOffers.dart';
import '../Common/navbar.dart';
import '../Dashboard/dashboard.dart';

class DashboardTabs extends StatefulWidget{
  _DashboardTabs createState() => _DashboardTabs();
}

class _DashboardTabs extends State<DashboardTabs> with TickerProviderStateMixin{
    
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



  Widget build(BuildContext context) {
    return FadeTransition(opacity: animation,
      child: DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar:AppBar(
            automaticallyImplyLeading : false,
            backgroundColor: Color(0xff191B23),
            actions: <Widget>[
              Container(),
              IconButton(
                icon: Image.asset('assets/images/Group 15.png',
                width: Responsive.width(36.74, context),height: Responsive.height(36.74, context),),
                onPressed: () => {},
              ),
              SizedBox(width: Responsive.width(110.44, context),height: Responsive.height(5, context),),
              IconButton(
                icon: Image.asset('assets/images/Avatar Selected.png',
                width: Responsive.width(36.74, context),height: Responsive.height(36.74, context)),
                onPressed: () => {},
              ),
              IconButton(
                icon: Image.asset('assets/images/search.png',
                width: Responsive.width(22, context),height: Responsive.height(22, context)),
                onPressed: () => {},
              ),
              IconButton(
                icon: Image.asset('assets/images/chat_icon.png',
                width: Responsive.width(22, context),height: Responsive.height(22, context)),
                onPressed: () => {},
              ),
              IconButton(
                icon: Image.asset('assets/images/not_icon.png',
                width: Responsive.width(22, context),height: Responsive.height(22, context)),
                onPressed: () => {},
              ),
            ],
            bottom: TabBar(
              indicatorColor: Color(0xFF6478D3),
              indicatorWeight: 2.0,
              unselectedLabelColor: Color(0xff8D92A3),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.only(right:Responsive.width(60, context)),
              labelStyle: GoogleFonts.montserrat(fontSize:Responsive.height(13, context),color: Color(0xffF7F8F9),fontWeight:FontWeight.bold),
              tabs: [
                Tab(
                  text: 'Dashboard'
                ),
                Tab(
                  text: 'Rewards and Offers'
                ),

              ],
            ),
          ),
          backgroundColor: Color(0xff191B23),
          body: TabBarView(
            children:[
              Dashboard(),
              RewardsAndOffers()
            ]
          ),
          bottomNavigationBar: navBar(context),
        ),
      )
    );
  }
}
 






                                                   










