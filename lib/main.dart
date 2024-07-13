import 'package:flutter/material.dart';
import 'package:tutorial/views/counter/counter-view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // Widget은 항상 `build` 메서드를 가져야 함
  @override
  Widget build(BuildContext context) {
    /** 최상위 위젯에서는 MaterialApp(android style) vs CupertinoApp(iOS style)을 선택할 수 있음 */
    return MaterialApp(
      home: const CounterView(),
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: TextStyle(color: Colors.green[700])),
      ),
    );
  }
}
