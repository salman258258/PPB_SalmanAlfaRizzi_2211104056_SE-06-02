import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view/notes_page.dart';
import 'view/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home',
           page: ()=> HomePage()),
         GetPage(
          name: '/note', 
          page: ()=> AddNotePage()),
          
      ],
    );
  }
}
