import 'package:flutter/material.dart';
import 'package:netflix_clone/data/json/category.dart';

class similer extends StatefulWidget {
  similer({Key? key}) : super(key: key);

  @override
  State<similer> createState() => _similerState();
}

class _similerState extends State<similer> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: action.length,
        itemBuilder: (BuildContext ctx, index) {
          return SizedBox(
              height: 250,
              width: 200,
              child: Image.asset(action[index]["img"]));
        });
  }
}
