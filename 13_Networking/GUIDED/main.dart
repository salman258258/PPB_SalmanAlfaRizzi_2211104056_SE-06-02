import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view/detail_page.dart';
import 'package:praktikum_13/view/my_home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/', 
          page: ()=> MyHomePage(title: 'Salman')),
         GetPage(
          name: '/detail', 
          page: ()=> const DetailPage())
      ],
    );
  }
}
