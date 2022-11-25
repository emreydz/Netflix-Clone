import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/fast_laug/fast_laug_constant.dart';
import 'package:netflix_clone/features/fast_laug/view/widget/content.dart';

FastLaugConstants get _item => FastLaugConstants.init();

class fast_laug extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ContentScreen(
                  src: _item.videos[index],
                );
              },
              itemCount: _item.videos.length,
              scrollDirection: Axis.vertical,
            ),
          ],
        ),
      ),
    );
  }
}
