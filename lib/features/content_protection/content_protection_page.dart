import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ContentProtectionPage extends StatelessWidget {
  final storage = FlutterSecureStorage();

  Future<void> protectContent() async {
    await storage.write(key: 'content_access', value: 'allowed');
    String? access = await storage.read(key: 'content_access');
    print('Access: $access');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Content Protection')),
      body: Center(
        child: ElevatedButton(
          onPressed: protectContent,
          child: Text('Enable Protection'),
        ),
      ),
    );
  }
}