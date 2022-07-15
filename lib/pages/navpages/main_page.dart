import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/navpages/bookmark_page.dart';
import 'package:helloworld/pages/navpages/book_page.dart';
import 'package:helloworld/pages/navpages/event_page.dart';
import 'package:helloworld/pages/navpages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  _MainPageState createState() => _MainPageState();
}

List pages = [
  HomePage(),
  BookPage(),
  EventPage(),
  BookmarkPage(),
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Book"),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Event"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: "Bookmark"),
        ],
      ),
    );
  }
}
