import 'package:flutter/material.dart';
import 'package:praktikum_07/UNGUIDED/models/product.dart'; // Pastikan impor ini konsisten

class DetailUnguided extends StatelessWidget {
  final Product product; // Properti untuk menyimpan objek Product

  const DetailUnguided({super.key, required this.product}); // Konstruktor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.gambarUrl.isNotEmpty)
              Image.network(product.gambarUrl),
            SizedBox(height: 10),
            Text('Nama: ${product.nama}'),
            SizedBox(height: 10),
            Text('Harga: Rp${product.harga}'),
            SizedBox(height: 10),
            Text('Deskripsi: ${product.deskripsi}'),
          ],
        ),
      ),
    );
  }
}
