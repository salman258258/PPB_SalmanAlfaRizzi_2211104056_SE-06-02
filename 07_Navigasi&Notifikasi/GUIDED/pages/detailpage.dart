// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  const Detailpage({super.key, required this.data});

  final Widget data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("Salman|DetailPage"),
    backgroundColor: Colors.cyanAccent,
    actions: const [],
    ),
    body: Center(
      child: data
    )
    );();
  }
}