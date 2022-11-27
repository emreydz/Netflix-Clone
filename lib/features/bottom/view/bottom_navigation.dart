import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/features/bottom/model/bottom_navigater.dart';
import '../../../Cubit/bottomcubit/bottom_cubit.dart';
import '../../../core/constants/bottom/bottom_constant.dart';
import '../../../core/init/icon/app_icon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppIcon get _icons => AppIcon.init();
TabBarConstants get _item => TabBarConstants.init();

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<bottomnavigation> btmnavigtn = [
    bottomnavigation(icon: _icons.itemsbottem[0], title: _item.home),
    bottomnavigation(icon: _icons.itemsbottem[1], title: _item.comingSoon),
    bottomnavigation(icon: _icons.itemsbottem[2], title: _item.FastLaug),
    bottomnavigation(icon: _icons.itemsbottem[3], title: _item.search),
    bottomnavigation(icon: _icons.itemsbottem[4], title: _item.downloads),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomCubit(),
      child: BlocBuilder<BottomCubit, BottomState>(
        builder: (context, state) {
          var _context = context.watch<BottomCubit>();
          return Scaffold(
            body: _context.pages[_context.pageIndex],
            backgroundColor: Colors.black,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _context.pageIndex,
              backgroundColor: Colors.black,
              unselectedLabelStyle: const TextStyle(color: Colors.grey),
              unselectedIconTheme: const IconThemeData(
                color: Colors.grey,
              ),
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              selectedIconTheme: const IconThemeData(
                color: Colors.white,
              ),
              selectedLabelStyle: const TextStyle(
                color: Colors.white,
              ),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    btmnavigtn[0].icon,
                  ),
                  label: btmnavigtn[0].title,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    btmnavigtn[1].icon,
                  ),
                  label: btmnavigtn[1].title,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    btmnavigtn[2].icon,
                  ),
                  label: btmnavigtn[2].title,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    btmnavigtn[3].icon,
                  ),
                  label: btmnavigtn[3].title,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    btmnavigtn[4].icon,
                  ),
                  label: btmnavigtn[4].title,
                )
              ],
              onTap: (index) {
                context.read<BottomCubit>().changePage(index);
              },
            ),
          );
        },
      ),
    );
  }
}
