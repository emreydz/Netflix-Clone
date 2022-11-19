import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/home/view/bannenrdetail.dart';
import 'package:netflix_clone/screen/home/view/home_screen.dart';
import 'package:netflix_clone/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
