import 'package:flutter/material.dart';
import 'package:praktikum_07/GUIDED/models/product.dart';
import 'package:praktikum_07/GUIDED/notification_service.dart';
import 'package:praktikum_07/GUIDED/pages/detailpage.dart';
// Impor file notifikasi

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final NotificationService notificationService = NotificationService(); // Buat instance dari NotificationService

  final List<Product> products = [
    Product(
      id: 1,
      nama: 'Mouse Gaming',
      harga: 300000,
      gambarUrl:
          'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
      deskripsi: 'Mouse Gaming Keren',
    ),
    Product(
      id: 2,
      nama: 'Mechanical Keyboard',
      harga: 300000,
      gambarUrl:
          'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1',
      deskripsi: 'Keyboard mekanik yang nyaman',
    ),
    Product(
      id: 3,
      nama: 'headset geminx ',
      harga: 300000,
      gambarUrl:
          'https://m.media-amazon.com/images/I/61CGHv6kmWL._AC_UF894,1000_QL80_.jpg',
      deskripsi: 'hedset dengan kualitas TOP',
    ),
  ];

  void _showNotification() {
    notificationService.showNotification(
      0,
      'Notifikasi Baru!',
      'Anda telah melihat produk baru.',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salman | MyPage"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ListTile(
            leading: Image.network(
              product.gambarUrl,
              width: 70,
              height: 70,
            ),
            title: Text(product.nama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rp${product.harga}'),
                Text(product.deskripsi),
              ],
            ),
            onTap: () {
              _showNotification(); // Panggil fungsi untuk menampilkan notifikasi saat item ditekan
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Detailpage(data: Text('halo')), // Mengirim data produk
                ),
              );
            },
          );
        },
      ),
    );
  }
}
