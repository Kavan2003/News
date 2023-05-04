import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:news/SearchScreen.dart';
import 'package:news/TopHeadlines.dart';

class bottomNav extends StatelessWidget {
  late int index;
  bottomNav(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(225, 255, 0, 0),
      height: 90,
      child: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,

            // primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: const TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          elevation: 9,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // backgroundColor: Color(0x00ffffff),
              icon: Icon(Typicons.home_outline // Icons.home
                  ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              // activeIcon: SearchScreen(),
              icon: Icon(
                Typicons.search_outline,
                // Icons.search,
                // color: Colors.black,
              ),
              // backgroundColor: Colors.black,
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Typicons.bookmark,
                // Icons.bookmark_add_outlined,
                // color: Colors.black,
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Typicons.facebook_circled,
                // Icons.circle_outlined,
                // color: Colors.black,
              ),
              label: 'School',
            )
          ],
          currentIndex: index,
          unselectedItemColor: Colors.black,
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          selectedIconTheme: IconThemeData(color: Colors.amber[800]),
          selectedItemColor: Colors.amber[800],
          onTap: ((value) => {
                if (value == 0)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TopHeadlines()),
                    )
                  },
                if (value == 1)
                  {
                    // currentIndex:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    )
                  }
              }),
        ),
      ),
    );
  }
}
