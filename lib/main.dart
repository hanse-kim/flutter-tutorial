import 'package:flutter/material.dart';
import 'package:tutorial/apps/pomodoro/pomodoro_app.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // Widget은 항상 `build` 메서드를 가져야 함
  @override
  Widget build(BuildContext context) {
    return const PomodoroApp();
  }
}
