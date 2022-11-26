import 'package:flutter/material.dart';
import 'package:netflix_clone/core/data/home_page_json.dart';
import 'package:netflix_clone/core/data/json/category.dart';
import 'package:netflix_clone/features/bottom/view/bottom_navigation.dart';
import 'package:netflix_clone/features/home/view/bannenrdetail.dart';

import 'package:netflix_clone/features/home/view/home_detail.dart';
import 'package:netflix_clone/features/home/view/widget/action.dart';
import 'package:netflix_clone/features/home/view/widget/homefilmsheet.dart';
import 'package:netflix_clone/features/home/view/widget/my_list.dart';
import 'package:netflix_clone/features/home/view/widget/optionsheet.dart';

import '../../../core/components/ListTile/home_bottem_sheet.dart';
import '../../../core/constants/home/home_constant.dart';
import '../../../core/init/icon/app_icon.dart';
import '../model/home_catagory_model.dart';

HomeConstants get _item => HomeConstants.init();
AppIcon get _icons => AppIcon.init();

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<showimg> listcatagory = [
    showimg(title: _item.trend, listname: mylist),
    showimg(title: _item.list, listname: action),
    showimg(title: _item.action, listname: popularList),
    showimg(title: _item.teen, listname: teenMovie),
    showimg(title: _item.romantic, listname: romantic),
    showimg(title: _item.anime, listname: animeList),
    showimg(title: _item.scifi, listname: sciMovie),
    showimg(title: _item.Korean, listname: trendingList),
  ];
  final List<optionsheet> optionsheetbottom = [
    optionsheet(icon: Icons.play_arrow, title: "Play"),
    optionsheet(icon: Icons.download, title: "Download"),
    optionsheet(icon: Icons.add, title: "My List"),
    optionsheet(icon: Icons.share, title: "Share"),
  ];

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
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        _item.banner,
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
                        _appbarhome(),
                        _catagoryhome(),
                        _bannertext(size)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _optionbanner(context)),
              SizedBox(
                height: 20,
              ),
              HomeFilms(
                label: listcatagory[0].title,
                filmList: listcatagory[0].listname,
              ),
              HomeactionFilms(
                label: listcatagory[1].title,
                filmList: listcatagory[1].listname,
              ),
              HomeFilms(
                label: listcatagory[2].title,
                filmList: listcatagory[2].listname,
              ),
              HomeactionFilms(
                  label: listcatagory[3].title,
                  filmList: listcatagory[3].listname),
              HomeactionFilms(
                label: listcatagory[4].title,
                filmList: listcatagory[4].listname,
              ),
              HomeFilms(
                label: listcatagory[5].title,
                filmList: listcatagory[5].listname,
              ),
              HomeactionFilms(
                label: listcatagory[6].title,
                filmList: listcatagory[6].listname,
              ),
              HomeFilms(
                  label: listcatagory[7].title,
                  filmList: listcatagory[7].listname)
            ],
          ),
        ),
      ),
    );
  }

  Row _optionbanner(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _optionbannerlist(),
        _optionbannerplay(),
        _optionbannerinfo(context),
      ],
    );
  }

  GestureDetector _optionbannerinfo(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _bannersheetinfo(context);
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
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  GestureDetector _optionbannerplay() {
    return GestureDetector(
      onTap: (() {}),
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
    );
  }

  Column _optionbannerlist() {
    return Column(
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
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Container _bannertext(Size size) {
    return Container(
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
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Row _catagoryhome() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Tv Shows",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          "Movies",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          "Categories",
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }

  AppBar _appbarhome() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(height: 50, child: Image.asset(_item.logo)),
      ),
      actions: [
        Icon(
          _icons.itemshomeappbar[0],
          size: 32,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            _icons.itemshomeappbar[1],
            size: 32,
          ),
        )
      ],
    );
  }

  Future<void> _bannersheetinfo(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 290,
          color: Colors.black.withOpacity(0.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              detailsheetinfoto(
                  ontop: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => BannerVideo())));
                  }),
                  img: _item.bottemsheetimg,
                  title: _item.bottemsheettitle,
                  subtitle: _item.bottemsheetsubtitle),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  optionsheet(
                      icon: optionsheetbottom[0].icon,
                      title: optionsheetbottom[0].title),
                  optionsheet(
                      icon: optionsheetbottom[1].icon,
                      title: optionsheetbottom[1].title),
                  optionsheet(
                      icon: optionsheetbottom[2].icon,
                      title: optionsheetbottom[2].title),
                  optionsheet(
                      icon: optionsheetbottom[3].icon,
                      title: optionsheetbottom[3].title)
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
                      MaterialPageRoute(builder: ((context) => BannerVideo())));
                }),
                child: Center(
                  child: Listtile_home_bottemsheet(
                      iconlead: Icons.info_outline,
                      text: "More...",
                      icontrail: Icons.chevron_right_outlined),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
