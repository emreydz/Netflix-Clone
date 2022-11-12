import 'package:flutter/material.dart';
import 'package:netflix_clone/data/home_page_json.dart';
import 'package:netflix_clone/data/json/category.dart';
import 'package:netflix_clone/screen/bottom_bar.dart';
import 'package:netflix_clone/screen/home/widget/action.dart';
import 'package:netflix_clone/screen/home/widget/my_list.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.55,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/banner.webp",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.55,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.1),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                    ),
                    Column(
                      children: [
                        AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                                height: 50,
                                child: Image.asset("assets/images/logo.ico")),
                          ),
                          actions: [
                            Icon(
                              Icons.connected_tv,
                              size: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.person,
                                size: 32,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Tv Shows",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "Movies",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: size.height * 0.43,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/title_img.webp",
                                height: size.height * 0.15,
                                width: size.width * 0.75,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Exiting - Sci-Fi Drama - Sci-Fi Adventure",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "My List",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (() {}),
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 27,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "My List",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              HomeFilms(
                label: "Trending Now",
                filmList: mylist,
              ),
              HomeactionFilms(
                label: "My List",
                filmList: action,
              ),
              HomeFilms(
                label: "Action & Adventure",
                filmList: popularList,
              ),
              HomeactionFilms(
                label: "Romantic Comedies",
                filmList: romantic,
              ),
              HomeFilms(
                label: "Anime Movies",
                filmList: animeList,
              ),
              HomeactionFilms(
                label: "Sci-Fi Movies",
                filmList: sciMovie,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
