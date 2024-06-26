import 'package:flutter/material.dart';
import 'package:music_player/pages/homepage.dart';
import 'package:music_player/pages/themeprovider.dart';
import 'package:music_player/theam/dark_mode.dart';
import 'package:music_player/theam/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create : (context) => ThemeProvider(),
    child: const MyApp(),
  )
      );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
