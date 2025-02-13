import 'package:briefly/Services/show_category_news.dart';
import 'package:flutter/material.dart';

class CategoryNews extends StatefulWidget {
  String name;
  CategoryNews({required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryNews> categories = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  getNews() async {
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoryNews(widget.name.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
