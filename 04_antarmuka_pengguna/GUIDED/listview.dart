import 'package:flutter/material.dart';

class ListviewScrenn extends StatelessWidget {
  const ListviewScrenn ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan List View'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
            child: Center(child: 
            Text('Type A')),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(child: Text('Type A')),
          ),
           Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text('Type A')),
          ),
        ],
      ),
    );
  }
}