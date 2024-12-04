import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  static const LatLng _kMapCenter = LatLng(-7.505613, 108.785022);

  static final CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 11.0,
  );

  // Menampilkan Place Picker
  void showPlacePicker() async {
    // Navigasi ke PlacePicker dan ambil hasilnya
    LocationResult result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlacePicker(
          "AIzaSyB4VwuUqREiRP_hDop1cmoQjnEtXh-MdFk", // Ganti dengan API key Anda
        ),
      ),
    );

    // Menampilkan hasil dari pemilihan lokasi
    if (result != null) {
      print('Picked location: ${result.latLng}');
      // Lakukan sesuatu dengan lokasi yang dipilih, seperti update marker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Demo'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
        onTap: (LatLng location) {
          // Anda bisa menambahkan fungsionalitas untuk menambahkan marker saat lokasi dipilih
          print("Tapped on map: $location");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showPlacePicker,
        child: const Icon(Icons.place),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
