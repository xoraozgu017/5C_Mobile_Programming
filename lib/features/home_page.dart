import 'package:flutter/material.dart';
import 'ebook_reader/ebook_reader_page.dart';
import 'content_upload/content_upload_page.dart';
import 'content_protection/content_protection_page.dart';
import 'media_management/media_management_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Digital Library')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            FeatureCard(
              title: 'E-Book Reader',
              icon: Icons.book,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EbookReaderPage()),
              ),
            ),
            FeatureCard(
              title: 'Content Upload',
              icon: Icons.upload_file,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ContentUploadPage()),
              ),
            ),
            FeatureCard(
              title: 'Content Protection',
              icon: Icons.security,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ContentProtectionPage()),
              ),
            ),
            FeatureCard(
              title: 'Media Management',
              icon: Icons.video_library,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MediaManagementPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  FeatureCard({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4.0,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48, color: Colors.blue),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}