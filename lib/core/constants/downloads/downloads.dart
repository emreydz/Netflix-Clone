class TabBarDownloads {
  static TabBarDownloads? _instance;
  static TabBarDownloads get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = TabBarDownloads.init();
      return _instance!;
    }
  }

  TabBarDownloads.init();

  final String smartdown = "Smart Download";
  final String title = "Downloads for you feature";
  final String subtitle =
      "We will download some content that we have specially selected for you from TV shows and movies so that you always have something to watch on your phone.";
  final String setbuton = "Set";
  final String otherbuton = "Other content you can download";
}
