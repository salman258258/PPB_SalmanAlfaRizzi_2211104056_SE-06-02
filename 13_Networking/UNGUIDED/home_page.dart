import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view%20model/notes_controller.dart';
import 'package:praktikum_13/view/notes_page.dart';
class HomePage extends StatelessWidget {
  final NotesController notesController = Get.put(NotesController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Catatan'),
        backgroundColor: Colors.cyanAccent[400],
        centerTitle: true,
      ),
      body: Obx(() {
        return notesController.notes.isEmpty
            ? Center(
                child: Text(
                  'Belum ada catatan.',
                  style: TextStyle(fontSize: 16),
                ),
              )
            : ListView.builder(
                itemCount: notesController.notes.length,
                itemBuilder: (context, index) {
                  final note = notesController.notes[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text(note['title']!),
                      subtitle: Text(note['description']!),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => notesController.deleteNote(index),
                      ),
                    ),
                  );
                },
              );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.cyanAccent[400],
        onPressed: () => Get.to(AddNotePage()),
      ),
    );
  }
}
