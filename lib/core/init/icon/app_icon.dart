import 'package:flutter/material.dart';

class AppIcon {
  static AppIcon? _instance;
  static AppIcon get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppIcon.init();
      return _instance!;
    }
  }

  AppIcon.init();

  List itemsbottem = [
    Icons.home,
    Icons.play_circle_outline_outlined,
    Icons.my_library_books_rounded,
    Icons.search,
    Icons.download
  ];

  List itemsfastoption = [
    Icons.favorite_outline,
    Icons.add,
    Icons.send,
    Icons.play_arrow
  ];

  List itemsdownloadappbar = [
    Icons.connected_tv,
    Icons.search,
    Icons.person,
  ];

  List itemshomeappbar = [
    Icons.connected_tv,
    Icons.person,
  ];
  List optionseet = [
    Icons.play_arrow,
    Icons.download,
    Icons.add,
    Icons.share,
  ];
}
