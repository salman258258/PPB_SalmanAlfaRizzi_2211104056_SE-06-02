import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPackage extends StatelessWidget {
  const MyPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.person),
                hintText: "Masukan Username",
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.lock),
                hintText: "Masukan Password",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){},
              child: Text('Login', style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}