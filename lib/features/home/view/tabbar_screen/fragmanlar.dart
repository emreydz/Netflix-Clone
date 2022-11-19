import 'package:flutter/material.dart';

class trailers extends StatelessWidget {
  final String img;
  final String name;

  trailers({Key? key, required this.img, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(height: 200, child: Image.asset(img)),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
