import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tutorial/apps/webtoon/models/webtoon.dart';

class ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';

  static Future<List<Webtoon>> getTodaysToons() async {
    List<Webtoon> result = [];
    final url = Uri.parse('$baseUrl/today');
    final response = await http.get(url);
    final data = _handleResponse<List<dynamic>>(response);

    for (var json in data) {
      result.add(Webtoon.fromJson(json));
    }

    return result;
  }

  static T _handleResponse<T>(http.Response response) {
    if (response.statusCode == 200) {
      final T data = jsonDecode(response.body);
      return data;
    }

    throw Error();
  }
}
