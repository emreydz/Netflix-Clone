import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/features/fast_laug/view/widget/option.dart';
import 'package:video_player/video_player.dart';

class ContentScreen extends StatefulWidget {
  final String? src;

  const ContentScreen({Key? key, this.src}) : super(key: key);

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  bool iconvisible = false;
  bool isplayingbar = true;
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.asset(
      widget.src!,
    );
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      allowFullScreen: true,
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? _videoplayer(
                videoPlayerController: _videoPlayerController,
                chewieController: _chewieController)
            : _circularprogress(),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [_volume(), optionwidget()],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container _volume() {
    return Container(
      height: 250,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: iconvisible
            ? IconButton(
                onPressed: () {
                  setState(() {
                    iconvisible = !iconvisible;
                  });
                  _chewieController!.videoPlayerController.setVolume(1);
                },
                icon: Icon(
                  Icons.volume_off_sharp,
                  color: Colors.white,
                  size: 30,
                ))
            : IconButton(
                onPressed: () {
                  setState(() {
                    iconvisible = !iconvisible;
                  });
                  _chewieController!.videoPlayerController.setVolume(0);
                },
                icon: Icon(
                  Icons.volume_down,
                  color: Colors.white,
                  size: 30,
                )),
      ),
    );
  }
}

class _videoplayer extends StatelessWidget {
  const _videoplayer({
    Key? key,
    required VideoPlayerController videoPlayerController,
    required ChewieController? chewieController,
  })  : _videoPlayerController = videoPlayerController,
        _chewieController = chewieController,
        super(key: key);

  final VideoPlayerController _videoPlayerController;
  final ChewieController? _chewieController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _videoPlayerController.value.isPlaying
          ? _videoPlayerController.pause()
          : _videoPlayerController.play(),
      child: GestureDetector(
        child: Chewie(
          controller: _chewieController!,
        ),
      ),
    );
  }
}

class _circularprogress extends StatelessWidget {
  const _circularprogress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: Colors.white,
        ),
      ],
    );
  }
}
