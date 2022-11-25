import 'package:flutter/material.dart';
import 'package:netflix_clone/features/fast_laug/model/fast_laug_model.dart';

import '../../../../core/constants/fast_laug/fast_laug_constant.dart';
import '../../../../core/init/icon/app_icon.dart';

AppIcon get _icons => AppIcon.init();
FastLaugConstants get _item => FastLaugConstants.init();

class optionwidget extends StatefulWidget {
  const optionwidget({
    Key? key,
  }) : super(key: key);

  @override
  State<optionwidget> createState() => _optionwidgetState();
}

class _optionwidgetState extends State<optionwidget> {
  List<LaugOption> fastlaugoption = [
    LaugOption(icon: _icons.itemsfastoption[0], subtitle: _item.fav),
    LaugOption(icon: _icons.itemsfastoption[1], subtitle: _item.mylist),
    LaugOption(icon: _icons.itemsfastoption[2], subtitle: _item.send),
    LaugOption(icon: _icons.itemsfastoption[3], subtitle: _item.play),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        optionitem(
          titleicon: fastlaugoption[0].icon,
          subtitle: fastlaugoption[0].subtitle,
        ),
        _heighht20(),
        optionitem(
          titleicon: fastlaugoption[1].icon,
          subtitle: fastlaugoption[1].subtitle,
        ),
        _heighht20(),
        _transformicon(),
        _heighht20(),
        optionitem(
          titleicon: fastlaugoption[3].icon,
          subtitle: fastlaugoption[3].subtitle,
        )
      ],
    );
  }

  SizedBox _heighht20() => SizedBox(height: 20);

  Column _transformicon() {
    return Column(
      children: [
        Transform(
          transform: Matrix4.rotationZ(5.8),
          child: Icon(
            fastlaugoption[2].icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        Text(
          fastlaugoption[2].subtitle,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

class optionitem extends StatelessWidget {
  final IconData titleicon;
  final String subtitle;
  const optionitem({
    Key? key,
    required this.titleicon,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          titleicon,
          color: Colors.white,
          size: 30,
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
