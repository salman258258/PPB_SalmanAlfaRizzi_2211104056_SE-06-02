import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar Demo',
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: const BiodataPage(), // Mengganti dengan halaman biodata
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const YourSecondScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.help),
              title: "Help",
            ),
          ),
          PersistentTabConfig(
            screen: const YourThirdScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.settings),
              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.grey[300], // Background abu-abu untuk layer paling luar
        child: Column(
          children: [
            // Container untuk bagian atas (profile)
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(vertical: 16.0), // Menambah jarak vertikal
              decoration: BoxDecoration(
                color: Colors.white, // Background putih untuk bagian atas
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Efek bayangan agar terlihat lebih terpisah
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Posisi bayangan
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://yt3.googleusercontent.com/ytc/AIdro_kj2UN0hFSfq1uQysiU5iBPycFbOpERdRWDGpQ6aYN37eI=s900-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Salman Alfa Rizzi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text('2211104056'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.person),
                          Text('Follow'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.chat),
                          Text('Message'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.more_horiz),
                          Text('More'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'I am a Software Engineer from Telkom University Purwokerto',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Center(
                    child: Text(
                      'S1 Software Engineering',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            // Container untuk Information dan Skills
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // Background putih untuk container bagian bawah
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Efek bayangan agar lebih terpisah
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Posisi bayangan
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Information',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.public),
                              SizedBox(width: 8),
                              Text('Website'),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text('www.salmanalfarizzi.com'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.mail),
                              SizedBox(width: 8),
                              Text('Email'),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text('lucifersalman93@gmail.com'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('Phone'),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text('+62 83866033060'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 35), // Jarak antara Information dan Skills
                  Text(
                    'Skills',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.code),
                          SizedBox(height: 5),
                          Text('HTML'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.brush),
                          SizedBox(height: 5),
                          Text('CSS'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.android),
                          SizedBox(height: 5),
                          Text('Android'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Ganti dengan halaman lain untuk tab message dan settings
class YourSecondScreen extends StatelessWidget {
  const YourSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Messages Screen"));
  }
}

class YourThirdScreen extends StatelessWidget {
  const YourThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Settings Screen"));
  }
}
