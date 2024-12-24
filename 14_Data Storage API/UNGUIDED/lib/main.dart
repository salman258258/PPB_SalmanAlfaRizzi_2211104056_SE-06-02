import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_14/screen/homepage_screen.dart';

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
           page: ()=>  HomepageScreen()),
      ],
    );
  }
}
