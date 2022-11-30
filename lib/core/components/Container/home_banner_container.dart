import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/home/home_constant.dart';

class HomeBannerContainer extends StatelessWidget {
  final Widget column;
  HomeConstants get _item => HomeConstants.init();
  HomeBannerContainer({Key? key, required this.column}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              _item.banner,
            ),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.55,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.1),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
          ),
          column
        ],
      ),
    );
  }
}
