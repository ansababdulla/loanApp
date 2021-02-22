import 'package:chickly/Dashboard/dashboardTabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../profile/profile_personal.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: WillPopScope(
          child:Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff191B23),
              title: Text('Update Profile',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, color: Color(0xff8D92A3))),
              leading: Transform.scale(
                scale: 0.5,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                ),
              ),
              bottom: TabBar(
                indicatorColor: Color(0xFF6478D3),
                indicatorWeight: 2.0,
                tabs: [
                  Tab(
                    text: "Personal",
                  ),
                  Tab(text: "Work"),
                  Tab(text: "Family & Friends"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                PersonalProfile(),
                PersonalProfile(),
                PersonalProfile(),
              ],
            ),
          ),
          onWillPop: () async {
            Navigator.pop(context,DashboardTabs());
            return false;
          },
        ),
      ),
    );
  }
}
