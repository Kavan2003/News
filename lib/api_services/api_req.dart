import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'apiJosnstructure.dart';

class apiReq extends StatefulWidget {
  apiReq({super.key});

  @override
  State<apiReq> createState() => _apiReqState();
}

String apibody = " ";
Map apiData = {};
List ApiArticle = [];

class _apiReqState extends State<apiReq> {
  late ScrollController _controller;
  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        //you can do anything here
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        //you can do anything here
      });
    }
  }

  Future apiRequest() async {
    http.Response response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=5e34fffb71e24edfb3584d7e5074bd92'));
    if (response.statusCode == 200) {
      setState(() {
        apibody = response.body;
        apiData = json.decode(response.body);
        ApiArticle = apiData['articles'];
        // print(ApiArticle[0]['title']);
      });
    } else {
      // print(response.statusCode);
    }
  }

  @override
  void initState() {
    // print("hwl");
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    apiRequest();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // initState();
    return Container(
        color: Colors.amber,
        height: double.infinity, // child: Column(
        child: ListView.separated(
          physics: AlwaysScrollableScrollPhysics(),
          controller: _controller,
          itemCount: ApiArticle.length,
          itemBuilder: (context, index) {
            return NewsCard(
              headline: ApiArticle[index]['title'].toString(),
              description: ApiArticle[index]['description'].toString(),
              urlToImage: ApiArticle[index]['urlToImage'].toString(),
              url: ApiArticle[index]['url'].toString(),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
        ));
  }
}
