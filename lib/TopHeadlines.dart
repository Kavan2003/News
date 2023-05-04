import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

import 'api_services/api_req.dart';
import 'news/bottomNav.dart';

class TopHeadlines extends StatelessWidget {
  const TopHeadlines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        // backwardsCompatibility: false,
        primary: true,
        elevation: 0,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            // bottomLeft: Radius.circular(70.0),
            // bottomRight:
            Radius.circular(200.0),
          ),
        ),
        backgroundColor: const Color.fromARGB(
            255, 252, 252, 252), //Color(0xFFCC00), // /Color(),
        // centerTitle: true,

        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(width: 10),
            const Text(
              "News App",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),

        // actionsIconTheme:
        actions: const [
          Icon(
            // Typicons.flash,
            Typicons.bell,
            // Icons.notifications,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      bottomNavigationBar: bottomNav(0),
      body: apiReq(),
    );
  }
}
