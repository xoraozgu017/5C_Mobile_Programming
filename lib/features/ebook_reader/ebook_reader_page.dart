import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class EbookReaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-Book Reader')),
      body: Center(
        child: PDFView(filePath: 'assets/sample.pdf'), // Replace with dynamic path
      ),
    );
  }
}