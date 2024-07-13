import 'package:flutter/material.dart';
import 'package:tutorial/views/first/first-view.dart';

import 'views/first/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // Widget은 항상 `build` 메서드를 가져야 함
  @override
  Widget build(BuildContext context) {
    /** 최상위 위젯에서는 MaterialApp(android style) vs CupertinoApp(iOS style)을 선택할 수 있음 */
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: FirstView(),
      ),
    );
  }
}
