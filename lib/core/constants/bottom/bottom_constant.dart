import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';

import '../../../features/hot_and_new/view/hot_and_new.dart';
import '../../../features/hot_and_new/view/tab/cominsoon.dart';
import '../../../features/Downloads/downloads.dart';
import '../../../features/Search/search_screen.dart';
import '../../../features/bottom/model/bottom_navigater.dart';
import '../../../features/home/view/home_screen.dart';

class TabBarConstants {
  static TabBarConstants? _instance;
  static TabBarConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = TabBarConstants.init();
      return _instance!;
    }
  }

  TabBarConstants.init();

  List<Widget> screens = <Widget>[
    Home(),
    HotAndNew(),
    SearchPage(),
    DownloadsPage(),
  ];

  final String home = "Home";
  final String comingSoon = "Coming Soon";
  final String search = "Search";
  final String downloads = "Downloads";
}
