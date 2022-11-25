class FastLaugConstants {
  static FastLaugConstants? _instance;
  static FastLaugConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = FastLaugConstants.init();
      return _instance!;
    }
  }

  FastLaugConstants.init();

  final List<String> videos = [
    "assets/shorts/short_1.mp4",
    "assets/shorts/short_2.mp4",
    "assets/shorts/short_3.mp4",
    "assets/shorts/short_4.mp4",
    "assets/shorts/short_5.mp4",
    "assets/shorts/short_6.mp4",
    "assets/shorts/short_7.mp4",
    "assets/shorts/short_8.mp4",
  ];

  final String send = "2.80 B";
  final String mylist = "My List";
  final String play = "Play";
  final String fav = "600K";
}
