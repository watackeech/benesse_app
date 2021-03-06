import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:template_app/high-five/screens/dummy_screen1.dart';
import 'package:template_app/high-five/screens/firends_list_screen.dart';
import 'package:template_app/high-five/screens/question_post_screen.dart';
import 'package:template_app/high-five/screens/question_thread_screen.dart';
import 'package:template_app/high-five/screens/study_post_screen.dart';
import 'package:template_app/high-five/screens/study_thread_screen.dart';
import 'package:template_app/high-five/screens/your_info_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = "design_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _pageWidgets = [
    YourInfoScreen(),
    FriendsListScreen(),
    QuestionThreadScreen(),
    StudyThreadScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pageWidgets.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("GridView", style: TextStyle(fontSize: 18),), activeColor: Colors.lightBlueAccent, textAlign: TextAlign.center),
          BottomNavyBarItem(icon: Icon(Icons.chat_outlined), title: Text("Chat", style: TextStyle(fontSize: 18),), activeColor: Colors.deepPurple, textAlign: TextAlign.center),
          BottomNavyBarItem(icon: Icon(Icons.help), title: Text("質問スレ", style: TextStyle(fontSize: 18),), activeColor: Colors.deepOrange, textAlign: TextAlign.center),
          BottomNavyBarItem(icon: Icon(Icons.auto_stories), title: Text("学習記録", style: TextStyle(fontSize: 18),), activeColor: Colors.blueGrey, textAlign: TextAlign.center),
        ],
        selectedIndex: _currentIndex,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        itemCornerRadius: 24,
        showElevation: true,
      ),
    );
  }
}
