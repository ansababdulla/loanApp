import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/responsive.dart';

  Widget navBar(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return  Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Color(0xff000710),
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white38,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: Container(                                             
                decoration: BoxDecoration(                                                   
                  borderRadius: BorderRadius.only(                                           
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
                  boxShadow: [                                                               
                    BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
                  ],                                                                         
                ),                                                                           
              child: ClipRRect(                                                            
                borderRadius: BorderRadius.only(                                           
                topLeft: Radius.circular(30.0),                                            
                topRight: Radius.circular(30.0),                                           
                ),                                                                         
                child: BottomNavigationBar(                                                
                  items: <BottomNavigationBarItem>[                                        
                    BottomNavigationBarItem(                                               
                      icon: Image.asset('assets/images/003-home.png',
                        width: Responsive.width(22, context),height: Responsive.height(22, context)),
                        label: ''),               
                    BottomNavigationBarItem(                                               
                      icon: Image.asset('assets/images/004-money-bag.png',
                        width: Responsive.width(22, context),height: Responsive.height(22, context)),
                        label: '') ,
                                            BottomNavigationBarItem(                                               
                      icon: Image.asset('assets/images/005-layers.png',
                        width: Responsive.width(22, context),height: Responsive.height(22, context)),
                        label: '')  ,
                                            BottomNavigationBarItem(                                               
                      icon: Image.asset('assets/images/006-newspaper.png',
                        width: Responsive.width(22, context),height: Responsive.height(22, context)),
                        label: '')                
                  ],                                                                       
                ),                                                                         
              )                                                                            
            )
        );
      },
    );
  }
