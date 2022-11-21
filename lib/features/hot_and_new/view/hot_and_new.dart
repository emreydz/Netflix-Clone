import 'package:flutter/material.dart';
import 'package:netflix_clone/features/hot_and_new/view/tab/cominsoon.dart';
import 'package:netflix_clone/features/hot_and_new/view/tab/everyones_watching.dart';

class HotAndNew extends StatefulWidget {
  HotAndNew({Key? key}) : super(key: key);

  @override
  State<HotAndNew> createState() => _HotAndNewState();
}

class _HotAndNewState extends State<HotAndNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: false,
            title: const Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 28,
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
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorPadding: const EdgeInsets.all(5),
              indicator: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "assets/images/popcorn.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Coming Soon",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "assets/images/fire.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Everyone's Watching",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ComingSoonPage(),
              Everywatch(),
            ],
          ),
        ),
      ),
    );
  }
}
