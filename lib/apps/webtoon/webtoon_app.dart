import 'package:flutter/material.dart';
import 'package:tutorial/apps/webtoon/screens/home_screen.dart';

class WebtoonApp extends StatelessWidget {
  const WebtoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
