import 'package:flutter/material.dart';

class optionsheet extends StatelessWidget {
  final IconData icon;
  final String title;
  const optionsheet({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
