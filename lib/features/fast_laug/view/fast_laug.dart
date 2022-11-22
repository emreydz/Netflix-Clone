import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/features/fast_laug/view/widget/content.dart';

class fast_laug extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
