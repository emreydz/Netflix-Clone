import 'package:flutter/material.dart';

class TextDetailMovie extends StatelessWidget {
  final String text;
  const TextDetailMovie({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 16),
    );
  }
}
