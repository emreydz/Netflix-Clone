import 'package:flutter/material.dart';

class text_category extends StatelessWidget {
  final String title;
  const text_category({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}
