import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  // Widget은 항상 `build` 메서드를 가져야 함
  @override
  Widget build(BuildContext context) {
    /** 최상위 위젯에서는 MaterialApp(android style) vs CupertinoApp(iOS style)을 선택할 수 있음 */
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Hello Flutter!')),
            body: const Center(
              child: Text('hello world!'),
            )));
  }
}
