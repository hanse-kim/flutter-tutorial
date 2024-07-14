import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';

  Future getTodaysToons() async {
    final url = Uri.parse('$baseUrl/today');
    final response = await http.get(url);
    handleResponse(response);
  }

  void handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }

    throw Error();
  }
}
