import 'package:flutter/material.dart';

class ContentProtectionProvider extends ChangeNotifier {
  bool _isProtected = false;  // Private state

  bool get isProtected => _isProtected;

  // Method untuk mengaktifkan proteksi
  void enableProtection() {
    _isProtected = true;
    notifyListeners();  // Memberitahu widget bahwa status proteksi berubah
  }

  // Method untuk menonaktifkan proteksi
  void disableProtection() {
    _isProtected = false;
    notifyListeners();  // Memberitahu widget bahwa status proteksi berubah
  }
}
