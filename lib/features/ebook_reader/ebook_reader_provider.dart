import 'package:flutter/material.dart';

class EbookReaderProvider extends ChangeNotifier {
  String _currentBook = '';  // Private state

  String get currentBook => _currentBook;

  // Method untuk memperbarui buku yang sedang dibaca
  void updateBook(String book) {
    _currentBook = book;
    notifyListeners();  // Memberitahu widget yang terdaftar
  }
}
