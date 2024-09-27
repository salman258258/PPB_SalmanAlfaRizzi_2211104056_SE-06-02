import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biodata Diri'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Container baru untuk background berwarna
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Biodata Mahasiswa',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              // Menampilkan Nama
              const Text(
                'Nama: Salman Alfa Rizzi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Menampilkan NIM
              const Text(
                'NIM: 2211104056',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              // Menampilkan Program Studi
              const Text(
                'Program Studi: Software Engineering',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              // Menampilkan Semester
              const Text(
                'Semester: 5',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              // Menampilkan informasi kontak
              const Row(
                children: <Widget>[
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text(
                    'Telepon: +62 812 3456 7890',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: <Widget>[
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Text(
                    'Email: example@email.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Spacer(),
              // Tombol di bagian bawah
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('Button Pressed');
                  },
                  child: const Text('Edit Biodata'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
