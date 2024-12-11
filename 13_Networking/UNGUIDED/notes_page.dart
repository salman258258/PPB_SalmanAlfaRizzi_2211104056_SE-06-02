import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view%20model/notes_controller.dart';

class AddNotePage extends StatelessWidget {
  final NotesController notesController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Catatan'),
        backgroundColor: Colors.cyanAccent[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
                TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Judul',
                hintText: 'Masukkan judul catatan',
                prefixIcon: Icon(Icons.title),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.cyanAccent, width: 1),
                ),
              ),
            ),
            SizedBox(height: 20),
            // TextField untuk Deskripsi
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Deskripsi',
                hintText: 'Masukkan deskripsi singkat',
                prefixIcon: Icon(Icons.description),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.cyanAccent, width: 1),
                ),
              ),
              maxLines: 2,
            ),
            SizedBox(height: 20),
           Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyanAccent, Colors.purple],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  if (titleController.text.isNotEmpty &&
                      descriptionController.text.isNotEmpty) {
                    notesController.addNote(
                        titleController.text, descriptionController.text);
                    Get.back();
                  } else {
                    Get.snackbar(
                      'Error',
                      'Judul dan Deskripsi tidak boleh kosong',
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.red
                    );
                  }
                },
                child: Text(
                  'Simpan Catatan',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,)
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
