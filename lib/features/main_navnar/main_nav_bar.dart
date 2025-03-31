import 'package:flutter/material.dart';
import 'package:instgram_clone/features/home/ui/home_screen.dart';
import 'package:instgram_clone/features/post_add/post_add_screen.dart';
import 'package:instgram_clone/features/profile/profile_screen.dart';
import 'package:instgram_clone/features/reels/reels_screen.dart';
import 'package:instgram_clone/features/searsh/search_screen.dart';


class MainNavBarScreen extends StatefulWidget {
  const MainNavBarScreen({super.key});

  @override
  State<MainNavBarScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<MainNavBarScreen> {
  /// here we create list of screen
  /// list of screen call here
  List screen = [
    const HomeScreen(),
    const SearchScreen(),
    const PostAddScreen(),
    const ReelsScreen(),
    const ProfileScreen()
  ];

  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreen,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          iconSize: 30,
          selectedFontSize: 35,
          onTap: (value) {
            currentScreen = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: ""),
          ]),
      body: screen[currentScreen],
    );
  }
}

/// DASHBOARD SCREEN => DONE