import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
    void incrementCounter() {
      counter++;
    }
    void decrementCounter(){
      counter--;
    }
    void GetSnackBar(){
      Get.snackbar('Sayangku🥰😘',
      'Jangan Salah pasangan😍',
      colorText: Colors.white,
      backgroundColor: Colors.green[400],
      );
    }
    void getdialog(){
      Get.defaultDialog(
        title: 'GetX Dialog',
        middleText: 'Ini dialog',
      );
    }
    void getbottomsheet(){
      Get.bottomSheet(Container(height: 70,color: Colors.white,width: double.infinity,
        child: Text('ini adalah dialog bottom sheet'),
      )
      );
  }
}