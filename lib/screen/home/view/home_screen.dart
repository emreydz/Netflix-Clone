import 'package:flutter/material.dart';
import 'package:netflix_clone/data/home_page_json.dart';
import 'package:netflix_clone/data/json/category.dart';
import 'package:netflix_clone/screen/bottom_bar.dart';

import 'package:netflix_clone/screen/home/view/home_detail.dart';
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
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 290,
                                color: Colors.black.withOpacity(0.9),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: (() {}),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 125,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 100,
                                                child: Image.asset(
                                                  "assets/images/img_6.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10, left: 10),
                                                child: Container(
                                                  width: 235,
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          "Age of Samurai: Battle for Japan",
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                      Text(
                                                        "It is a Canadian-American documentary television series that aired in 2021. ",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: CircleAvatar(
                                                      radius: 18,
                                                      backgroundColor:
                                                          Colors.black,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        icon: Center(
                                                          child: Icon(
                                                            Icons.close,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.black,
                                              ),
                                            ), //CircleA
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              "Play",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor: Colors.grey,
                                              child: Icon(
                                                Icons.download,
                                                color: Colors.black,
                                              ),
                                            ), //CircleA
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              "Download",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor: Colors.grey,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.black,
                                              ),
                                            ), //CircleA
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              "My List",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor: Colors.grey,
                                              child: Icon(
                                                Icons.share,
                                                color: Colors.black,
                                              ),
                                            ), //CircleA
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              "Share",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                      height: 2,
                                    ),
                                    GestureDetector(
                                      onTap: (() {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    HomeDetail())));
                                      }),
                                      child: Center(
                                        child: const ListTile(
                                          leading: Icon(Icons.info_outline,
                                              color: Colors.white),
                                          title: Text("More...",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          trailing: Icon(
                                              Icons.chevron_right_outlined,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Info",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
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
              HomeactionFilms(label: "Teens", filmList: teenMovie),
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
              HomeFilms(label: "Trending", filmList: trendingList)
            ],
          ),
        ),
      ),
    );
  }
}
