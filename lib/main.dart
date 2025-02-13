import 'package:briefly/Pages/category_news.dart';
import 'package:briefly/Pages/home.dart';
import 'package:briefly/Pages/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryNews(
        name: "yeyeyey",
      ),
    );
  }
}
