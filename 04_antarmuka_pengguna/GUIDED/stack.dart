import 'package:flutter/material.dart';

class StackScrenn extends StatelessWidget {
  const StackScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StackScrenn'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
                children: <Widget>[
            Container(
                width: 200,
                height: 200,
                color: Colors.red,
            ),
            Container(
                width: 120,
                height: 120,
                color: Colors.green,
            ),
            Container(
                width: 80,
                height: 80,
                color: Colors.blue,
            ),
            ],
            ),
   );
  }
}