import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/home/view/tabbar_screen/B%C3%B6l%C3%BCmler.dart';
import 'package:netflix_clone/screen/home/view/tabbar_screen/benzerler.dart';
import 'package:netflix_clone/screen/home/view/tabbar_screen/fragmanlar.dart';
import 'package:video_player/video_player.dart';

class HomeDetail extends StatefulWidget {
  final String name;
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
      required this.age})
      : super(key: key);

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> with TickerProviderStateMixin {
  late final VideoPlayerController _controller;
  bool iconvisible = false;
  bool isplayingbar = true;

  void playvideo({bool init = false}) async {
    if (!init) {
      _controller.pause();
    }
    _controller = VideoPlayerController.asset("assets/videos/video_2.mp4")
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
    // TODO: implement initState
    super.initState();
    playvideo(init: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_rounded,
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Icon(Icons.person)
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              child: _controller.value.isInitialized
                  ? Column(
                      children: [
                        Stack(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    iconvisible = !iconvisible;
                                    isplayingbar = !isplayingbar;
                                  });
                                },
                                child: SizedBox(
                                    height: 275,
                                    child: VideoPlayer(_controller))),
                            Positioned(
                              child: Container(
                                color: Colors.black.withOpacity(0.6),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 12, left: 12, bottom: 6, top: 6),
                                  child: Text(
                                    "Özel Video",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                              left: 8,
                              bottom: 30,
                            ),
                            Positioned(
                              left: 175,
                              top: 120,
                              child: Center(
                                child: iconvisible
                                    ? IconButton(
                                        onPressed: (() =>
                                            _controller.value.isPlaying
                                                ? _controller.pause()
                                                : _controller.play()),
                                        icon: Icon(
                                          _controller.value.isPlaying
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                          color: Colors.white,
                                          size: 40,
                                        ))
                                    : SizedBox(),
                              ),
                            ),
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
                Text(
                  widget.date,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.age,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "season 2",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Color.fromARGB(255, 49, 49, 49),
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Icon(
                      Icons.file_download_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Download:S1:E1",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
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
              "Type: ${widget.type}",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.done_outline,
                      color: Colors.white,
                    ),
                    Text(
                      "Rate",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.download,
                      color: Colors.white,
                    ),
                    Text(
                      "season 1",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: Colors.white.withOpacity(0.5),
          ),
          Container(
            child: TabBar(controller: _tabController, tabs: [
              Tab(
                text: "Sections",
              ),
              Tab(
                text: "Trailers",
              ),
              Tab(
                text: "Similar",
              )
            ]),
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
}
