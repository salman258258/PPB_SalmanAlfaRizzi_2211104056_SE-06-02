import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_14/controller/post_controller.dart';

class HomepageScreen extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian untuk menampilkan loading atau data
            Obx(() {
              if (postController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (postController.posts.isEmpty) {
                return const Text(
                  "Tekan tombol GET untuk mengambil data",
                  style: TextStyle(fontSize: 14),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: postController.posts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            title: Text(
                              postController.posts[index]['title'] ?? 'No Title',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            subtitle: Text(
                              postController.posts[index]['body'] ?? 'No Content',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }),
            const SizedBox(height: 16),
            // Tombol API
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: postController.createPost,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('POST'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: postController.fetchPosts,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('GET'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: postController.updatePost,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text('PUT'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: postController.deletePost,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('DELETE'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
