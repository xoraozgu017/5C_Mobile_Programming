import 'package:flutter/material.dart';

class ContentUploadProvider extends ChangeNotifier {
  bool _isUploading = false;  // Private state

  bool get isUploading => _isUploading;

  // Method untuk memulai upload
  void startUpload() {
    _isUploading = true;
    notifyListeners();  // Memberitahu widget bahwa status upload berubah
  }

  // Method untuk menyelesaikan upload
  void finishUpload() {
    _isUploading = false;
    notifyListeners();  // Memberitahu widget bahwa status upload selesai
  }
}
