

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled_1/History.dart';
import 'package:untitled_1/drawer_item.dart';
import 'package:untitled_1/fav%20places.dart';
import 'package:untitled_1/how%20it%20works.dart';
import 'package:untitled_1/profile_person.dart';
import 'package:untitled_1/settings.dart';

import 'about  us.dart';

class SideBar extends StatelessWidget {
  const SideBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0,80,24,0),
          child: Column(
            children: [


              DrawerItem(name: 'Fav places', icon: Icons.star, onPressed:()=>onItemPressed(context,index:0),),
              DrawerItem(name: 'History', icon: Icons.book, onPressed:()=>onItemPressed(context,index:1),),
              DrawerItem(name: 'About Us', icon: Icons.people, onPressed:()=>onItemPressed(context,index:2),),
              DrawerItem(name: 'How it works', icon: Icons.question_mark, onPressed:()=>onItemPressed(context,index:3),),
              SizedBox(height: 30.0,),
              DrawerItem(name: 'Settings', icon: Icons.settings, onPressed:()=>onItemPressed(context,index:4),),
              DrawerItem(name: 'Logout', icon: Icons.logout, onPressed:()=>onItemPressed(context,index:5),),
            ],

          ),
        ),
      ) ,
    );

  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavPlaces()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const History()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutUs()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HowitWorks()));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
        break;



    }
  }




  }



