import 'package:flutter/material.dart';
import 'package:praktikum_6/GUIDED/my.tabbar.dart';
import 'package:praktikum_6/GUIDED/my_package.dart';


class MyNavbar extends StatefulWidget {
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  int _selectedIndex = 0;



  void _onTappedItem( int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    MyTabbar(),
    MyPackage(),
    MyPackage(),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavBar'),
        backgroundColor: Colors.blueGrey,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar( 
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Tabbar',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Tabbar',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Tabbar',
          ),
        ],
        selectedItemColor: Colors.amber,
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
      ),
    );
  }
}