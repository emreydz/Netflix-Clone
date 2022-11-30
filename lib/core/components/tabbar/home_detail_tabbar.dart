import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/home/home_detail_constant.dart';

class HomeDetailTabBar extends StatelessWidget {
  HomeDetailConstants get _item => HomeDetailConstants.init();
  const HomeDetailTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(controller: _tabController, tabs: [
      HomeDetailTabItem(
        tabtext: _item.Sections,
      ),
      HomeDetailTabItem(
        tabtext: _item.Trailers,
      ),
      HomeDetailTabItem(
        tabtext: _item.Similar,
      ),
    ]);
  }
}

class HomeDetailTabItem extends StatelessWidget {
  final String tabtext;
  const HomeDetailTabItem({
    Key? key,
    required this.tabtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: tabtext,
    );
  }
}
