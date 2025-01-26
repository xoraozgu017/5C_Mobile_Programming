import 'package:flutter/material.dart';

class MediaManagementProvider extends ChangeNotifier {
  List<String> _mediaList = [];

  List<String> get mediaList => _mediaList;

  void addMedia(String media) {
    _mediaList.add(media);
    notifyListeners();
  }

  void removeMedia(String media) {
    _mediaList.remove(media);
    notifyListeners();
  }
}
