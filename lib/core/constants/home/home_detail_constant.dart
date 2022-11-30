class HomeDetailConstants {
  static HomeDetailConstants? _instance;
  static HomeDetailConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = HomeDetailConstants.init();
      return _instance!;
    }
  }

  HomeDetailConstants.init();
  //Movieoptionitem
  String list = "My List";
  String rate = "Rate";
  String share = "Share";
  String season1 = "season 1";
  //tabıtemname
  String Sections = "Sections";
  String Trailers = "Trailers";
  String Similar = "Similar";

  String play = "Play";
  String Download = "Download:S1:E1";
  String type = "Type";
  String ozelvideo = "Özel Video";
  String season2 = "season 2";
}
