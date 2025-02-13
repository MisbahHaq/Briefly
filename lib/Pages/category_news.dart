import 'package:briefly/Models/show_category.dart';
import 'package:briefly/Services/show_category_news.dart';
import 'package:flutter/material.dart';

class CategoryNews extends StatefulWidget {
  String name;
  CategoryNews({required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryModel> categories = [];
  bool loading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  getNews() async {
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoryNews(widget.name.toLowerCase());
    categories = showCategoryNews.categories;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3280ef),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.5,
                  ),
                  Text(
                    "Business",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
