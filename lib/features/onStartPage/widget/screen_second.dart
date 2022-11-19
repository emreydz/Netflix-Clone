import 'package:flutter/material.dart';
import 'package:netflix_clone/features/onStartPage/widget/screen_bottom_section.dart';

import 'screen_appBar_top.dart';

class ScreenComman extends StatelessWidget {
  const ScreenComman({
    Key? key,
    required this.imageAssets,
    required this.title,
  }) : super(key: key);

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppBarTop(),
          SizedBox(height: 350, child: Image.asset(imageAssets)),
          BottomSection(title: title)
        ],
      ),
    );
  }
}
