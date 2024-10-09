import 'package:flutter/material.dart';

class GridviewAppState extends StatefulWidget {
  const GridviewAppState({super.key});

  @override
  State<GridviewAppState> createState() => _GridviewAppStateState();
}

class _GridviewAppStateState extends State<GridviewAppState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Praktikum 4'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView1'),
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView1'),
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView1'),
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('GridView1'),
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}