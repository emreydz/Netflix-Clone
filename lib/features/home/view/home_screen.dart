import 'package:flutter/material.dart';
import 'package:netflix_clone/core/components/Container/home_banner_container.dart';
import 'package:netflix_clone/core/components/Container/option_banner_play_container.dart';
import 'package:netflix_clone/core/components/Text/text_category.dart';
import 'package:netflix_clone/core/components/listtile/home_bottem_sheet.dart';
import 'package:netflix_clone/core/components/row/option_sheet_row.dart';
import 'package:netflix_clone/core/constants/home/home_constant.dart';
import 'package:netflix_clone/core/data/home_page_json.dart';
import 'package:netflix_clone/core/data/json/category.dart';
import 'package:netflix_clone/core/init/icon/app_icon.dart';
import 'package:netflix_clone/features/home/model/home_catagory_model.dart';
import 'package:netflix_clone/features/home/view/bannenrdetail.dart';
import 'package:netflix_clone/features/home/view/widget/action.dart';
import 'package:netflix_clone/features/home/view/widget/homefilmsheet.dart';
import 'package:netflix_clone/features/home/view/widget/my_list.dart';
import 'package:netflix_clone/features/home/view/widget/option_banner_item.dart';
import 'package:netflix_clone/features/home/view/widget/optionsheet.dart';

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
  final List<OptainSheet> optionsheetbottom = [
    OptainSheet(icon: _icons.optionseet[0], title: _item.play),
    OptainSheet(icon: _icons.optionseet[1], title: _item.download),
    OptainSheet(icon: _icons.optionseet[2], title: _item.list),
    OptainSheet(icon: _icons.optionseet[3], title: _item.share),
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
              _homebannercontainer(size),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _optionbanner(context)),
              _height20(),
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

  SizedBox _height20() {
    return SizedBox(
      height: 20,
    );
  }

  HomeBannerContainer _homebannercontainer(Size size) {
    return HomeBannerContainer(
        column: Column(
      children: [_appbarhome(), _catagoryhome(), _bannertext(size)],
    ));
  }

  Row _optionbanner(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        optionbanneritem(
          icon: Icons.info_outline,
          title: _item.info,
          ontap: () {
            _bannersheetinfo(context);
          },
        ),
        _optionbannerplay(),
        optionbanneritem(icon: Icons.add, title: _item.list, ontap: () {}),
      ],
    );
  }

  GestureDetector _optionbannerplay() {
    return GestureDetector(
      onTap: (() {}),
      child: OptionBannerPlayContainer(
        row: Row(
          children: [
            Icon(
              Icons.play_arrow,
              color: Colors.black,
              size: 27,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              _item.play,
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

  Container _bannertext(Size size) {
    return Container(
      height: size.height * 0.43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            _item.bannertitle,
            height: size.height * 0.15,
            width: size.width * 0.75,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            _item.bannercategory,
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
        TextCategory(title: _item.tv),
        TextCategory(title: _item.movie),
        TextCategory(title: _item.category),
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
              OptionSheetRow(optionsheetbottom: optionsheetbottom),
              const SizedBox(
                height: 12,
              ),
              _divider(),
              GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => BannerVideo())));
                }),
                child: const Center(
                  child: ListTileBottomSheet(
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

  Divider _divider() {
    return const Divider(
      color: Colors.grey,
      height: 2,
    );
  }
}
