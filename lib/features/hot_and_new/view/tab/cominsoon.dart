import 'package:flutter/material.dart';
import 'package:netflix_clone/core/data/json/category.dart';
import 'package:netflix_clone/features/hot_and_new/view/widget/cominsoon.dart';

class ComingSoonPage extends StatefulWidget {
  ComingSoonPage({Key? key}) : super(key: key);

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return ComingSoonWidget(
              comingSoon: comingSoonJson,
              index: index,
            );
          }),
          itemCount: comingSoonJson.length,
        ),
      ),
    );
  }
}
