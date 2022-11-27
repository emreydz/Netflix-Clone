import 'package:flutter/foundation.dart';

class HomeConstants {
  static HomeConstants? _instance;
  static HomeConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = HomeConstants.init();
      return _instance!;
    }
  }

  HomeConstants.init();
  //img
  String banner = "assets/images/banner.webp";
  String logo = "assets/images/logo.ico";
  String bottemsheetimg = "assets/images/img_6.png";
  String bannertitle = "assets/images/title_img.webp";

  //categoryMovie
  String trend = "Trending";
  String list = "My List";
  String action = "Action & Adventure";
  String teen = "Teens";
  String romantic = "Romantic Comedies";
  String anime = "Anime Movies";
  String scifi = "Sci-Fi Movies";
  String Korean = "Korean  Movies";

  //bottemsheet
  String bottemsheettitle = "Age of Samurai: Battle for Japan";
  String bottemsheetsubtitle =
      "It is a Canadian-American documentary television series that aired in 2021. ";

  //homecatagory
  String movie = "Movies";
  String tv = "Tv Shows";
  String category = "Categories";

  String bannercategory = "Exiting - Sci-Fi Drama - Sci-Fi Adventure";

  String play = "Play";
  String download = "Download";
  String share = "Share";
  String info = "Info";
}
