import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class ContentUploadPage extends StatelessWidget {
  Future<void> pickFiles() async {
    FilePickerResult? result =
    await FilePicker.platform.pickFiles(allowMultiple: true, type: FileType.any);
    if (result != null) {
      print('Files selected: ${result.files.map((e) => e.name).join(', ')}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Content Upload')),
      body: Center(
        child: ElevatedButton(
          onPressed: pickFiles,
          child: Text('Upload Files'),
        ),
      ),
    );
  }
}
