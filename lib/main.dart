import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/view/bannenrdetail.dart';
import 'package:netflix_clone/features/home/view/home_screen.dart';
import 'package:netflix_clone/features/onStartPage/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
        ),
        home: ScreenSplash());
  }
}
