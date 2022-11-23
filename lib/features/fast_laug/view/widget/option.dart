import 'package:flutter/material.dart';

class optionwidget extends StatelessWidget {
  const optionwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        optionitem(
          titleicon: Icons.favorite_outline,
          subtitle: "600K",
        ),
        SizedBox(height: 20),
        optionitem(titleicon: Icons.add, subtitle: "My List"),
        SizedBox(height: 20),
        _transformicon(),
        SizedBox(height: 20),
        optionitem(titleicon: Icons.play_arrow, subtitle: "Play")
      ],
    );
  }

  Column _transformicon() {
    return Column(
      children: [
        Transform(
          transform: Matrix4.rotationZ(5.8),
          child: Icon(
            Icons.send,
            color: Colors.white,
            size: 30,
          ),
        ),
        Text(
          "2.80 B",
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
