import 'package:flutter/material.dart';
import 'my_db_view.dart'; // Sesuaikan dengan lokasi file MyDatabaseUnguidedView

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<Map<String, dynamic>> _dataList = [];

  void _navigateAndAddData(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyDatabaseUnguidedView(),
      ),
    );

    if (result != null && result is Map<String, dynamic>) {
      setState(() {
        _dataList.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biodata Mahasiswa"),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _dataList.length,
          itemBuilder: (context, index) {
            final item = _dataList[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.grey[200],
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['nama'],
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text("NIM: ${item['nim']}"),
                    Text("Alamat: ${item['alamat']}"),
                    Text("Hobi: ${item['hobi']}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateAndAddData(context),
        backgroundColor: Colors.cyanAccent,
        tooltip: 'Add Data',
        child: const Icon(Icons.add),
      ),
    );
  }
}
