import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:news/news/bottomNav.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Screen"),
      ),
      body: Container(

          // ignore: prefer_const_literals_to_create_immutables
          child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter a keyword to search for news',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // setState(() {
                //   _searchText = value;
                // }
                // );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              // Perform search operation here using _searchText
            },
            child: Text('Search'),
          ),
        ],
      )),
      bottomNavigationBar: bottomNav(1),
    );
  }
}
