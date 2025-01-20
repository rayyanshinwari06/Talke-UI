import 'package:flutter/material.dart';
import 'package:talkee/homescreen.dart';
import 'package:talkee/notificationscreen.dart';
import 'package:talkee/historyscreen.dart';
import 'package:talkee/profilescreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currenindex = 0;
  List pages = [
    HomeScreen(),
    NotificationScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'User'),
        ],
        currentIndex: currenindex,
        onTap: (index) {
          setState(() {
            currenindex = index;
          });
        },
      ),
      body: pages[currenindex],
    );
  }
}
