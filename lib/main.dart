import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:news/TopHeadlines.dart';
import 'SearchScreen.dart';
import 'api_services/api_req.dart';
import 'news/Rectanglecard.dart';
import 'news/bottomNav.dart';
import 'api_services/api_req.dart';

// import 'package:fluttericon/fontelico_icons.dart';
// import 'package:fluttericon/linecons_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // ApiService a = ApiService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => TopHeadlines(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SearchScreen(),
      },
    );
  }
}
