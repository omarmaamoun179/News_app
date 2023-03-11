import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';

import 'package:news_app/model/news_model.dart';

Future<NewsModel> getData(String category) async {
  Uri url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=208f7c906e8a46b58eb6296f74c1f326');
  http.Response res = await http.get(url);
  if (res.statusCode == 400) {
    var data = jsonDecode(res.body);
    throw Exception(data['error']['message']);
  }
  Map<String, dynamic> data = jsonDecode(res.body);
  NewsModel newsModel = NewsModel.fromJson(data);
  return newsModel;
}

// class ApiService {
//   String baseUrl = 'https://newsapi.org';

//   String apiKey = '208f7c906e8a46b58eb6296f74c1f326';
//   Future<NewsModel> getData({required String category}) async {
//     Uri url =
//         Uri.parse('$baseUrl/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey');
//     http.Response response = await http.get(url);

//     if (response.statusCode == 400) {
//       var data = jsonDecode(response.body);
//       throw Exception(data['error']['message']);
//     }
//     Map<String, dynamic> data = jsonDecode(response.body);

//   NewsModel newsModel= NewsModel.fromJson(data);

//     return newsModel;
//   }
// }



//https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=208f7c906e8a46b58eb6296f74c1f326
