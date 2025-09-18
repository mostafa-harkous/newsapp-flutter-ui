import 'package:flutter/material.dart';
import 'package:news_app_ui/features/news/views/screens/news_home/news_homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsHomescreen()
    );
  }
}
