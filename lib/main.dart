import 'package:flutter/material.dart';
import 'package:tutorial/apps/webtoon/services/api_service.dart';
import 'package:tutorial/apps/webtoon/webtoon_app.dart';

void main() {
  ApiService.getTodaysToons().then(print);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // Widget은 항상 `build` 메서드를 가져야 함
  @override
  Widget build(BuildContext context) {
    return const WebtoonApp();
  }
}
