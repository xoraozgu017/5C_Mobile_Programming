import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/ebook_reader/ebook_reader_provider.dart';
import 'features/content_upload/content_upload_provider.dart';
import 'features/content_protection/content_protection_provider.dart';
import 'features/media_management/media_management_provider.dart';
import 'features/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EbookReaderProvider()),
        ChangeNotifierProvider(create: (_) => ContentUploadProvider()),
        ChangeNotifierProvider(create: (_) => ContentProtectionProvider()),
        ChangeNotifierProvider(create: (_) => MediaManagementProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.system,
        home: HomePage(),
      ),
    );
  }
}
