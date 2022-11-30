import 'package:flutter/material.dart';

class HomeDetailOptionMovie extends StatelessWidget {
  final IconData icon;
  final String text;
  const HomeDetailOptionMovie({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
        )
      ],
    );
  }
}
