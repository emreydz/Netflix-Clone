import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/Coming_Soon/ComingSoon.dart';
import 'package:netflix_clone/screen/Downloads/downloads.dart';
import 'package:netflix_clone/screen/Search/search_screen.dart';
import 'package:netflix_clone/screen/home/view/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List items = [
    {"icon": AntIcons.homeOutlined, "text": "Home"},
    {"icon": AntIcons.playCircleOutlined, "text": "Coming Soon"},
    {"icon": AntIcons.searchOutlined, "text": "Search"},
    {"icon": AntIcons.downOutlined, "text": "Downloads"},
  ];
  List<Widget> screens = <Widget>[
    Home(),
    ComingSoonPage(),
    SearchPage(),
    DownloadsPage(),
  ];
  int selectedIndex = 0;
  void onChange(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              items[0]["icon"],
            ),
            label: items[0]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[1]["icon"],
            ),
            label: items[1]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[2]["icon"],
            ),
            label: items[2]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[3]["icon"],
            ),
            label: items[3]["text"],
          )
        ],
        onTap: (value) {
          onChange(value);
        },
      ),
    );
  }
}
