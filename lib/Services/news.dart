import 'dart:convert';
import 'package:briefly/Models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f330ef1f67634cec871eebf7ea97b79d";
    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        if (jsonData['status'] == 'ok') {
          jsonData["articles"].forEach((element) {
            if (element["urlToImage"] != null &&
                element["description"] != null) {
              ArticleModel articleModel = ArticleModel(
                urlToImage: element["urlToImage"],
                desc: element["description"],
                title: element["title"],
              );
              news.add(articleModel);
            }
          });
        }
      } else {
        print("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching news: $e");
    }
  }
}
