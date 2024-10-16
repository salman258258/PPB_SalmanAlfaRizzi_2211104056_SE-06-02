import 'package:flutter/material.dart';

class JenisListView extends StatelessWidget {
  final String title; // Menyimpan nilai title sebagai properti

  // Konstruktor yang menerima 'title' sebagai parameter
  const JenisListView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D'];
    final List<int> colorCodes = <int>[600, 500, 400, 300];

    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Menampilkan title di AppBar
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 170,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('entry ${entries[index]}'),
            ),
          );
        },
        // itemCount: entries.length,
        // separatorBuilder: (BuildContext context, int index) {
        //   return Container(
        //     height: 10,
        //     color: Colors.blueAccent,
        //   );
        // },
      ),
    );
  }
}
