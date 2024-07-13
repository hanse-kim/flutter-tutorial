// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  void onClicked() {
    /** setState -> 변경된 state와 함께 build 메서드를 다시 실행시킨다 */
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountDisplay(count: count),
            const SizedBox(height: 8),
            IconButton(
              onPressed: onClicked,
              icon: const Icon(Icons.add_box),
            ),
          ],
        ),
      ),
    );
  }
}

class CountDisplay extends StatelessWidget {
  const CountDisplay({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Click count",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        Text(
          count.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
