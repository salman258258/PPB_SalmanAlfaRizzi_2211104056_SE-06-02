import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible vs Expanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Text(
            "Flexible",
            style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 100,color: Colors.blueAccent,
                ),
                Flexible(
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 255, 0, 0),
                    child: Text('hallo namaku sipatugelang yang gagah perkasa melawan hog rider'),
                  ),
                ),
                Icon(Icons.android)
              ],
            ),
            SizedBox(height: 10,),
            Text('Expanded',style: TextStyle(fontSize: 18),),
            SizedBox(height: 8,),
            
                Row(
              children: [
                Container(
                  width: 50,
                  height: 100,color: Colors.blueAccent,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 255, 0, 0),
                    child: Text('hallo namaku sipatugelang yang gagah perkasa melawan hog rider'),
                  ),
                ),
                Icon(Icons.android)
              ],
            ),
        ],
      ),
    );
  }
}