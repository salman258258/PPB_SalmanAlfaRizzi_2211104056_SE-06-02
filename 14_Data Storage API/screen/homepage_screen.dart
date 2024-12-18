import 'package:flutter/material.dart';
import 'package:praktikum_14/service/api_service.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  List<dynamic> _posts = []; // List to store posts
  bool _isLoading = false; // Loading indicator
  final ApiService _apiService = ApiService(); // Instance of ApiService

  // Function to show SnackBar
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Function to handle API operation
  Future<void> _handleApiOperation(
      Future<void> operation, String successMessage) async {
    setState(() {
      _isLoading = true;
    });
    try {
      await operation; // Execute the API operation
      setState(() {
        _posts = _apiService.posts; // Assuming posts are fetched here
      });
      _showSnackBar(successMessage);
    } catch (e) {
      _showSnackBar('Error: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _posts.isEmpty
                      ? const Text(
                          "Tekan tombol GET untuk mengambil data",
                          style: TextStyle(fontSize: 14),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: _posts.length,
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
                                      _posts[index]['title'] ?? 'No Title',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    subtitle: Text(
                                      _posts[index]['body'] ?? 'No Content',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      Row(
                        children: [
                          ElevatedButton(
                                        onPressed: () => _handleApiOperation(
                                            _apiService.createPost(), 'Data berhasil ditambahkan!'),
                                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                        child: const Text('POST'),
                                      ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () => _handleApiOperation(
                                _apiService.fetchPosts(), 'Data berhasil diambil!'),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            child: const Text('GET'),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () => _handleApiOperation(
                                _apiService.updatePost(), 'Data berhasil diupdate!'),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                            child: const Text('PUT'),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () => _handleApiOperation(
                                _apiService.deletePost(), 'Data berhasil dihapus!'),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                            child: const Text('DELETE'),)
                        ],
                      ),
            
            ],
          ),
        ),
      ),
    );
  }
}
