import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/features/bottom/model/bottom_navigater.dart';
import '../../../core/constants/bottom/bottom_constant.dart';
import '../../../core/init/icon/app_icon.dart';

AppIcon get _icons => AppIcon.init();
TabBarConstants get _item => TabBarConstants.init();

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<bottomnavigation> btmnavigtn = [
    bottomnavigation(icon: _icons.items[0], title: _item.home),
    bottomnavigation(icon: _icons.items[1], title: _item.comingSoon),
    bottomnavigation(icon: _icons.items[2], title: _item.FastLaug),
    bottomnavigation(icon: _icons.items[3], title: _item.search),
    bottomnavigation(icon: _icons.items[4], title: _item.downloads),
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
      body: _item.screens[selectedIndex],
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
              btmnavigtn[0].icon,
            ),
            label: btmnavigtn[0].title,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              btmnavigtn[1].icon,
            ),
            label: btmnavigtn[1].title,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              btmnavigtn[2].icon,
            ),
            label: btmnavigtn[2].title,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              btmnavigtn[3].icon,
            ),
            label: btmnavigtn[3].title,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              btmnavigtn[4].icon,
            ),
            label: btmnavigtn[4].title,
          )
        ],
        onTap: (value) {
          onChange(value);
        },
      ),
    );
  }
}
