import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/screen/home/view/home_screen.dart';
import 'package:netflix_clone/screen/onStartPage/scrren_onboarding.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    navigatorHome();
  }

  navigatorHome() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ScreenOnStart(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Lottie.asset("assets/images/data.json"),
          ),
        ],
      ),
    );
  }
}
