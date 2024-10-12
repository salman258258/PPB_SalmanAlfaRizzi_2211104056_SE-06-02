import 'package:flutter/material.dart';

class componentListView extends StatelessWidget {
  const componentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: ListView(
      padding: EdgeInsets.all(30.0),
      children: [
        Text('Menara Pandang Purwokerto',
        style: TextStyle(fontWeight: FontWeight.bold,),
        ),
        SizedBox(height: 20,),
        Image.network('https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/29/2024/04/23/IMG_20240423_110554-3423871270.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.fill,
        ),
        SizedBox(height: 10,),
        Center(
            child:  Text('Menara Teratai Purwokerto merupakan ikon baru dari kota Purwokerto yang terletak di kawasan Alun-Alun Purwokerto. Menara ini memiliki bentuk menyerupai bunga teratai yang mekar dengan ketinggian mencapai 50 meter. Menara ini menawarkan pemandangan indah dari ketinggian dan menjadi tempat yang populer untuk wisatawan yang ingin melihat keindahan kota Purwokerto dari atas. Terdapat dek observasi yang memungkinkan pengunjung untuk menikmati panorama 360 derajat. Selain sebagai destinasi wisata, Menara Teratai juga sering menjadi tempat acara budaya dan kegiatan masyarakat.Harga Tiket Masuk (HTM):Dewasa: Rp 10.000,-Anak-anak: Rp 5.000,-Buka setiap hari mulai pukul 09.00 hingga 21.00 WIB.',
        style: TextStyle(fontSize: 10),),
        ),
        SizedBox(height: 20,),
      Text('The Village Purwokerto',
      style: TextStyle(fontWeight:FontWeight.bold, ),
      ),
      SizedBox(height: 20,),
      Image.network('https://ik.imagekit.io/tvlk/blog/2023/03/The-Village-Baturaden-Purwokerto-Adien-Akhmad-1024x640.jpg?tr=dpr-2,w-675'),
      SizedBox(height: 10,),
      Center(
        child: Text('The Village Purwokerto adalah destinasi wisata keluarga yang mengusung konsep taman rekreasi dan edukasi di Purwokerto. Tempat ini memiliki suasana ala Eropa dengan bangunan-bangunan bergaya klasik, taman yang indah, dan danau buatan yang menambah keasriannya. The Village menawarkan berbagai wahana dan atraksi seperti perahu kayuh, kebun binatang mini, taman bermain anak, dan spot foto menarik. Tempat ini sangat cocok untuk wisata bersama keluarga maupun sebagai tempat berburu foto-foto Instagramable.Harga Tiket Masuk (HTM):Weekday (Senin-Jumat): Rp 20.000,-Weekend (Sabtu-Minggu dan Hari Libur): Rp 25.000,-Jam operasional: 10.00 - 18.00 WIB (Weekday) dan 09.00 - 19.00 WIB (Weekend).',
        style: TextStyle(fontSize: 10),),
      ),
      SizedBox(height: 20,),
      Text('Curug Jenggala',
      style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20,),
      Image.network('https://radarbanyumas.disway.id/upload/7f3ef44cd3ca970aa0c0718f836336b1.jpg'),
      SizedBox(height: 10,),
      Text('Curug Jenggala adalah salah satu  air terjun yang terletak di kawasan Baturraden, Kabupaten Banyumas, Jawa Tengah. Air terjun ini memiliki ketinggian sekitar 30 meter dan terdiri dari tiga tingkat. Air terjun yang terletak di tengah memiliki arus yang paling deras.Curug Jenggala terletak di Jalan Limboro, Dusun III Kalipagu, Ketenger, Kecamatan Baturraden. Dari pusat kota Purwokerto, jaraknya sekitar 15 kilometer. Pengunjung dapat menggunakan kendaraan pribadi atau kendaraan umum untuk menuju ke lokasi curug ini.Untuk masuk ke kawasan curug, pengunjung dikenakan biaya tiket masuk sebesar Rp15.000 per orang. Harga tiket ini sudah termasuk biaya parkir kendaraan.',
      style: TextStyle(fontSize: 10),)
      ],
     ),
    );
  }
}