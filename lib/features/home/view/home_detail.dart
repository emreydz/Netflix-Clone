import 'package:flutter/material.dart';
import 'package:netflix_clone/core/components/Text/text_detail_movie.dart';
import 'package:netflix_clone/core/components/tabbar/home_detail_tabbar.dart';
import 'package:netflix_clone/core/constants/home/home_detail_constant.dart';
import 'package:netflix_clone/core/init/icon/app_icon.dart';
import 'package:netflix_clone/features/home/view/widget/home_detail_option_movie.dart';
import 'package:netflix_clone/features/home/view/widget/home_detail_video_buton.dart';
import 'package:netflix_clone/features/home/view/widget/optionsheet.dart';
import 'package:netflix_clone/features/home/view/widget/tabbar_screen/B%C3%B6l%C3%BCmler.dart';
import 'package:netflix_clone/features/home/view/widget/tabbar_screen/benzerler.dart';
import 'package:netflix_clone/features/home/view/widget/tabbar_screen/fragmanlar.dart';
import 'package:video_player/video_player.dart';

HomeDetailConstants get _item => HomeDetailConstants.init();
AppIcon get _icons => AppIcon.init();

class HomeDetail extends StatefulWidget {
  final String name;
  final String video;
  final String img;
  final String describ;
  final String date;
  final String min;
  final String type;
  final String age;
  HomeDetail(
      {Key? key,
      required this.name,
      required this.img,
      required this.describ,
      required this.date,
      required this.min,
      required this.type,
      required this.age,
      required this.video})
      : super(key: key);

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> with TickerProviderStateMixin {
  final List<OptainSheet> optionsdetaillist = [
    OptainSheet(icon: _icons.optiondetail[0], title: _item.list),
    OptainSheet(icon: _icons.optiondetail[1], title: _item.rate),
    OptainSheet(icon: _icons.optiondetail[2], title: _item.share),
    OptainSheet(icon: _icons.optiondetail[3], title: _item.season1),
  ];
  late final VideoPlayerController _controller;
  bool iconvisible = false;
  bool isplayingbar = true;

  void playvideo({bool init = false}) async {
    if (!init) {
      _controller.pause();
    }
    _controller = VideoPlayerController.asset(widget.video)
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((value) => _controller.play());
  }

  String _videoDuration(Duration duration) {
    String twoDigitis(int n) => n.toString().padLeft(2, "0");
    final hours = twoDigitis(duration.inHours);
    final minutes = twoDigitis(duration.inMinutes.remainder(60));
    final seconds = twoDigitis(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minutes, seconds].join(":");
  }

  @override
  void initState() {
    super.initState();
    playvideo(init: true);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        appBar: _detailappbar(),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              child: _controller.value.isInitialized
                  ? Column(
                      children: [
                        Stack(
                          children: [
                            _VideoPlayer(),
                            PositionedVideoPlayer(),
                            PositionedVideoControllerIcon(),
                          ],
                        ),
                        isplayingbar
                            ? SizedBox(
                                height: 4,
                                child: VideoProgressIndicator(
                                  _controller,
                                  colors: VideoProgressColors(
                                      bufferedColor:
                                          Colors.red.withOpacity(0.3),
                                      backgroundColor:
                                          Colors.red.withOpacity(0.3)),
                                  allowScrubbing: true,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 12),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: SizedBox(
                                    height: 8,
                                    child: VideoProgressIndicator(
                                      _controller,
                                      colors: VideoProgressColors(
                                          bufferedColor:
                                              Colors.red.withOpacity(0.3),
                                          backgroundColor:
                                              Colors.red.withOpacity(0.3)),
                                      allowScrubbing: true,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 12),
                                    ),
                                  )),
                                  ValueListenableBuilder(
                                    valueListenable: _controller,
                                    builder: (BuildContext context,
                                        VideoPlayerValue value, Widget? child) {
                                      return Text(
                                        _videoDuration(
                                          value.position,
                                        ),
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      );
                                    },
                                  ),
                                ],
                              ),
                      ],
                    )
                  : Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                TextDetailMovie(text: widget.date),
                _width10(),
                TextDetailMovie(text: widget.age),
                _width10(),
                TextDetailMovie(text: _item.season2)
              ],
            ),
          ),
          HomeDetailVideoButon(
            num: 150,
            icon: Icons.play_arrow,
            text: _item.play,
            color: Colors.white,
          ),
          HomeDetailVideoButon(
            icon: Icons.file_download_outlined,
            num: 100,
            text: _item.Download,
            color: Color.fromARGB(255, 49, 49, 49),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text(
              widget.describ,
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${_item.type}: ${widget.type}",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
            ),
          ),
          _height10(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeDetailOptionMovie(
                    icon: optionsdetaillist[0].icon,
                    text: optionsdetaillist[0].title),
                HomeDetailOptionMovie(
                    icon: optionsdetaillist[1].icon,
                    text: optionsdetaillist[1].title),
                HomeDetailOptionMovie(
                    icon: optionsdetaillist[2].icon,
                    text: optionsdetaillist[2].title),
                HomeDetailOptionMovie(
                    icon: optionsdetaillist[3].icon,
                    text: optionsdetaillist[3].title),
              ],
            ),
          ),
          _height10(),
          _divider(),
          Container(
            child: HomeDetailTabBar(tabController: _tabController),
          ),
          Container(
            width: double.maxFinite,
            height: 1200,
            child: TabBarView(controller: _tabController, children: [
              sections(),
              trailers(
                img: widget.img,
                name: widget.name,
              ),
              similer(),
            ]),
          )
        ])));
  }

  Positioned PositionedVideoControllerIcon() {
    return Positioned(
      left: 175,
      top: 120,
      child: Center(
        child: iconvisible
            ? IconButton(
                onPressed: (() => _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play()),
                icon: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                ))
            : SizedBox(),
      ),
    );
  }

  Positioned PositionedVideoPlayer() {
    return Positioned(
      left: 8,
      bottom: 30,
      child: VideoplayerTextContainer(),
    );
  }

  Container VideoplayerTextContainer() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      child: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, bottom: 6, top: 6),
        child: Text(
          _item.ozelvideo,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  InkWell _VideoPlayer() {
    return InkWell(
        onTap: () {
          setState(() {
            iconvisible = !iconvisible;
            isplayingbar = !isplayingbar;
          });
        },
        child: SizedBox(height: 275, child: VideoPlayer(_controller)));
  }

  Divider _divider() {
    return Divider(
      height: 10,
      color: Colors.white.withOpacity(0.5),
    );
  }

  SizedBox _height10() {
    return SizedBox(
      height: 10,
    );
  }

  SizedBox _width10() {
    return SizedBox(
      width: 10,
    );
  }

  AppBar _detailappbar() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_rounded,
      ),
      backgroundColor: Colors.black,
      elevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        Icon(Icons.person)
      ],
    );
  }
}
