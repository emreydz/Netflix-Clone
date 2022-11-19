import 'package:flutter/material.dart';
import 'package:netflix_clone/data/json/category.dart';
import 'package:netflix_clone/screen/home/widget/cominsoon.dart';

class ComingSoonPage extends StatefulWidget {
  ComingSoonPage({Key? key}) : super(key: key);

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "Coming Soon",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.collections_bookmark,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
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
