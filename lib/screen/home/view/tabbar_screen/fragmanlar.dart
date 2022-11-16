import 'package:flutter/material.dart';

class trailers extends StatefulWidget {
  trailers({Key? key}) : super(key: key);

  @override
  State<trailers> createState() => _trailersState();
}

class _trailersState extends State<trailers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              width: 600,
              height: 200,
              child: Image.asset("assets/images/fragman.png")),
          Text(
            "Age of Samurai: Season 1 (Trailer)",
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
