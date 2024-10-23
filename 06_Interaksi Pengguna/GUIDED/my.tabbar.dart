import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar:
       AppBar(
        title:Text('menu',style: GoogleFonts.aBeeZee(),),
        bottom: const TabBar(tabs: [
          Tab(
            icon: Icon(Icons.food_bank),
            text: "menu",
          ),
          Tab(
            icon: Icon(Icons.calendar_month),
            text: "History",
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: "Settings",
          ),
        ]),
        backgroundColor: Colors.blueAccent,
      ),
      body: const TabBarView(children: [
        Center(child:  Text('INI MENU'),
        ),
        Center(child: Text('INI CALENDER'),
        ),
        Center(child: Text('INI SETTINGS'),
        )
      ]),
      ),
      );
  }
}