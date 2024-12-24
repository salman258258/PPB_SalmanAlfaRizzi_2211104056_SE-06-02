import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_14/service/api_service.dart';

class PostController extends GetxController {
  final ApiService _apiService = ApiService();
  var posts = <dynamic>[].obs;
  var isLoading = false.obs;

  Future<void> fetchPosts() async {
    isLoading.value = true;
    try {
      await _apiService.fetchPosts();
      posts.assignAll(_apiService.posts);
      Get.snackbar('Berhasil', 'Data berhasil diambil!',
      backgroundColor: Colors.green[400]);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> createPost() async {
    isLoading.value = true;
    try {
      await _apiService.createPost();
      posts.assignAll(_apiService.posts);
      Get.snackbar('Berhasil', 'Data berhasil ditambahkan!',
      backgroundColor: Colors.green[400]);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updatePost() async {
    isLoading.value = true;
    try {
      await _apiService.updatePost();
      posts.assignAll(_apiService.posts);
      Get.snackbar('Berhasil', 'Data berhasil diupdate!',
      backgroundColor: Colors.green[400]);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> deletePost() async {
    isLoading.value = true;
    try {
      await _apiService.deletePost();
      posts.assignAll(_apiService.posts);
      Get.snackbar('Berhasil', 'Data berhasil dihapus!',
      backgroundColor: Colors.green[400]);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
