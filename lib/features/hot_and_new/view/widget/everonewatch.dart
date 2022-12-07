import 'package:flutter/material.dart';
import 'package:netflix_clone/core/components/Container/everone_watch_container.dart';
import 'package:netflix_clone/core/components/Icon/everyone_watch_icon.dart';
import 'package:netflix_clone/core/components/Text/text_tabsview_everyonewatch_detail.dart';
import 'package:netflix_clone/core/components/stack/tabsview_stack.dart';

class EveronewatchWidget extends StatelessWidget {
  final List everyonewatch;
  final int index;
  const EveronewatchWidget(
      {super.key, required this.everyonewatch, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Everyone_Watch_Container(
          img: everyonewatch[index]["img"],
        ),
        _height15(),
        everyonewatch[index]["duration"]
            ? Row(
                children: [
                  const Tabsview_stack(),
                ],
              )
            : Container(),
        _height15(),
        Padding(
          padding: const EdgeInsets.only(
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _everone_watch_titleimg(),
              Everone_Watch_Icon(
                icon: Icons.share,
              ),
              Everone_Watch_Icon(
                icon: Icons.done,
              ),
              Everone_Watch_Icon(
                icon: Icons.play_arrow,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text_Tabsview_Detail(
            everyonewatch: everyonewatch,
            index: index,
            colors: Colors.white,
            name: _ite,
            size: 24,
          ),
        ),
        Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
            child: Text_Tabsview_Detail(
              index: index,
              everyonewatch: everyonewatch,
              colors: Colors.grey,
              name: "description",
              size: 18,
            )),
        Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, right: 5),
            child: Text_Tabsview_Detail(
              everyonewatch: everyonewatch,
              index: index,
              name: "type",
              colors: Colors.white,
              size: 18,
            )),
        _height15()
      ],
    );
  }

  Padding _everone_watch_titleimg() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Image.asset(
        everyonewatch[index]["title_img"],
        width: 170,
      ),
    );
  }

  SizedBox _height15() {
    return const SizedBox(
      height: 15,
    );
  }
}
