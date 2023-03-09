import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/news_model.dart';

// class ApiServcies {
//   String baseUrl = 'https://newsapi.org/v2/top-headlines';
//   Uri url = Uri.parse('$baseUrl');
// }
//https://newsapi.org/v2/top-headlines?country=eg&apiKey=208f7c906e8a46b58eb6296f74c1f326
class ApiServcies {
  String baseUrl = 'https://newsapi.org/v2';

  String apiKey = '208f7c906e8a46b58eb6296f74c1f326';
  Future<NewsModel> getNews({required String category}) async {
    Uri url =
        Uri.parse('$baseUrl/top-headlines?country=eg&category=$category/&$apiKey');
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
    var data  = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);

   NewsModel newsModel = NewsModel.fromJson(data);

    return newsModel;
  }
}

//https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=208f7c906e8a46b58eb6296f74c1f326
