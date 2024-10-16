import 'package:flutter/material.dart';
import 'package:praktikum_5/jenis_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Hapus kata kunci 'const' dari sini
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        useMaterial3: true,
      ),
      home: JenisListView(title: 'My Custom Title'), // Kirim nilai title
    );
  }
}
