import 'dart:convert';
import 'package:briefly/Models/show_category.dart';
import 'package:http/http.dart' as http;

class ShowCategoryNews {
  List<ShowCategoryModel> categories = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=f330ef1f67634cec871eebf7ea97b79d";

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);

        if (jsonData['status'] == 'ok') {
          jsonData["articles"].forEach((element) {
            if (element["urlToImage"] != null &&
                element["description"] != null) {
              ShowCategoryModel showCategoryModel = ShowCategoryModel(
                urlToImage: element["urlToImage"],
                desc: element["description"],
                title: element["title"],
              );
              categories.add(showCategoryModel);
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
