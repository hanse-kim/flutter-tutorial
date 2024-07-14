import 'package:flutter/material.dart';
import 'package:tutorial/apps/webtoon/models/webtoon.dart';
import 'package:tutorial/apps/webtoon/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Webtoon> webtoons = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchWebtoons();
  }

  void fetchWebtoons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 2,
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: isLoading
              ? [
                  const Text('Loading....'),
                ]
              : List.from(webtoons.map((e) => Text(e.title))),
        ),
      ),
    );
  }
}
