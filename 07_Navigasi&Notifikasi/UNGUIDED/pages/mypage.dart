import 'package:flutter/material.dart';
import 'package:praktikum_07/UNGUIDED/models/product.dart';
import 'package:praktikum_07/UNGUIDED/notification_service.dart';
import 'package:praktikum_07/UNGUIDED/pages/detailpage.dart';
// Impor file notifikasi

class MyPageUnguided extends StatelessWidget {
  MyPageUnguided({super.key});

  final NotificationService notificationService = NotificationService(); // Buat instance dari NotificationService

  final List<Product> products = [
  Product(
    id: 1,
    nama: 'KAWASAKI D-Tracker',
    harga: 35000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/2020/eaa9c6e8-1768-41be-a176-cf3e674c721c.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Motor Trail Berbasis Aspal karena Ban nya di desain untuk aspal dan dibekali tenaga 150cc',
  ),
  Product(
    id: 2,
    nama: 'KAWASAKI Ninja 250',
    harga: 68000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/2007/6616e8ca-ff48-4631-bdb6-4a09c1c2630d.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Sportbike yang menawarkan performa tinggi dan desain aerodinamis.',
  ),
  Product(
    id: 3,
    nama: 'KAWASAKI Z900',
    harga: 270000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/74/2863a45f-f060-4272-8f3d-78821d361e82.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Motor naked dengan mesin 948cc, ideal untuk pengendara yang menyukai kecepatan.',
  ),
  Product(
    id: 4,
    nama: 'KAWASAKI Versys 650',
    harga: 165000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/34/33d4e683-be1e-4217-aaa1-0754dfcc8f6d.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Touring bike yang nyaman untuk perjalanan jauh dan berkendara di berbagai medan.',
  ),
  Product(
    id: 5,
    nama: 'KAWASAKI W175',
    harga: 30000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/2009/76903c4c-1d25-45d6-8bf1-0aa6d4c3b3a3.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Motor klasik dengan desain retro, cocok untuk berkendara santai di kota.',
  ),
  Product(
    id: 6,
    nama: 'KAWASAKI KLX 150',
    harga: 38000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/2019/9dcd6dc7-eaba-4586-8736-d5c6c96f6416.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Motor off-road yang ringan dan lincah, ideal untuk petualangan di alam terbuka.',
  ),
  Product(
    id: 7,
    nama: 'KAWASAKI Ninja H2',
    harga: 920000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/2030/6278de43-fbd0-4242-bf3a-9d4c0cba72fb.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Motor super sport dengan teknologi supercharged untuk performa maksimal.',
  ),
  Product(
    id: 8,
    nama: 'KAWASAKI Z125 Pro',
    harga: 40000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/71/303a68e2-b7f0-43f3-b147-eb90f4926a3e.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Mini bike yang menyenangkan untuk berkendara di dalam kota.',
  ),
  Product(
    id: 9,
    nama: 'KAWASAKI KLR 650',
    harga: 130000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMC/ProductTrimGroup/51/b9f7b4db-44bf-4c2f-913f-33216d454abe.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Dual-purpose bike yang siap menjelajahi jalan raya dan off-road.',
  ),
  Product(
    id: 10,
    nama: 'KAWASAKI Ninja 400',
    harga: 70000000,
    gambarUrl: 'https://content2.kawasaki.com/ContentStorage/KMI/ProductTrimGroup/2058/934269dc-4cb2-4840-9a10-d04a7482ebec.jpg?w=750', // Isi dengan URL gambar sesuai kebutuhan
    deskripsi: 'Motor sport ringan dengan performa tinggi untuk pengendara pemula.',
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
      builder: (_) => DetailUnguided(product: product), // Mengirim objek produk
    ),
  );
},

          );
        },
      ),
    );
  }
}
