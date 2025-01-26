import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:provider/provider.dart';
import 'media_management_provider.dart';

class MediaManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Media Management')),
      body: Consumer<MediaManagementProvider>(
        builder: (context, provider, _) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  final result =
                  await FilePicker.platform.pickFiles(type: FileType.media);
                  if (result != null) {
                    provider.addMedia(result.files.single.name);
                  }
                },
                child: Text('Add Media'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: provider.mediaList.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(provider.mediaList[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => provider.removeMedia(provider.mediaList[index]),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}