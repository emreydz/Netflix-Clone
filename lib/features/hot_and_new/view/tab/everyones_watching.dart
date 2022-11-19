import 'package:flutter/material.dart';
import 'package:netflix_clone/core/data/json/category.dart';
import 'package:netflix_clone/features/hot_and_new/view/widget/everonewatch.dart';

class Everywatch extends StatelessWidget {
  const Everywatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return EveronewatchWidget(
              everyonewatch: everyonewatch,
              index: index,
            );
          }),
          itemCount: everyonewatch.length,
        ),
      ),
    );
  }
}
