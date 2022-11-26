import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/view/home_detail.dart';

class HomeactionFilms extends StatelessWidget {
  final String label;
  final List filmList;
  const HomeactionFilms(
      {super.key, required this.label, required this.filmList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 175,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      _infodetailfilm(context, index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 190,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              filmList[index]["img"],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                itemCount: filmList.length,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Future<void> _infodetailfilm(BuildContext context, int index) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 290,
          color: Colors.black.withOpacity(0.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => HomeDetail(
                            video: filmList[index]["video"],
                            name: filmList[index]["title"],
                            date: filmList[index]["date"],
                            age: filmList[index]["age"],
                            describ: filmList[index]["description"],
                            min: filmList[index]["time"],
                            img: filmList[index]["img"],
                            type: filmList[index]["type"],
                          ))));
                }),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 125,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Image.asset(
                            filmList[index]["img"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Container(
                            width: 235,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    filmList[index]["title"],
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Text(
                                  filmList[index]["description"],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
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
                                backgroundColor: Colors.black,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        style: TextStyle(color: Colors.grey),
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
                        style: TextStyle(color: Colors.grey),
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
                        style: TextStyle(color: Colors.grey),
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
                        style: TextStyle(color: Colors.grey),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => HomeDetail(
                            video: filmList[index]["video"],
                            name: filmList[index]["title"],
                            date: filmList[index]["date"],
                            age: filmList[index]["age"],
                            describ: filmList[index]["description"],
                            min: filmList[index]["time"],
                            img: filmList[index]["img"],
                            type: filmList[index]["type"],
                          ))));
                }),
                child: Center(
                  child: const ListTile(
                    leading: Icon(Icons.info_outline, color: Colors.white),
                    title:
                        Text("More...", style: TextStyle(color: Colors.white)),
                    trailing:
                        Icon(Icons.chevron_right_outlined, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
