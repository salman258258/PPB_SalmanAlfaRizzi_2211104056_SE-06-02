import 'package:flutter/material.dart';

class MyDatabaseUnguidedView extends StatefulWidget {
  const MyDatabaseUnguidedView({super.key});

  @override
  State<MyDatabaseUnguidedView> createState() => _MyDatabaseUnguidedViewState();
}

class _MyDatabaseUnguidedViewState extends State<MyDatabaseUnguidedView> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _hobiController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _alamatController.dispose();
    _nimController.dispose();
    _hobiController.dispose();
    super.dispose();
  }

  void _saveData() {
    final Map<String, dynamic> newData = {
      'nama': _namaController.text,
      'alamat': _alamatController.text,
      'nim': _nimController.text,
      'hobi': _hobiController.text,
    };
    Navigator.pop(context, newData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Biodata Mahasiswa"),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildStyledTextField(
              controller: _namaController,
              label: 'Nama',
              icon: Icons.person,
            ),
            const SizedBox(height: 16.0),
            _buildStyledTextField(
              controller: _nimController,
              label: 'NIM',
              icon: Icons.format_list_numbered_rtl,
            ),
            const SizedBox(height: 16.0),
            _buildStyledTextField(
              controller: _alamatController,
              label: 'Alamat',
              icon: Icons.home,
            ),
            const SizedBox(height: 16.0),
            _buildStyledTextField(
              controller: _hobiController,
              label: 'Hobi',
              icon: Icons.star,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _saveData,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 12.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStyledTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black54),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black54),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.black12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.black54, width: 1.5),
        ),
      ),
    );
  }
}
