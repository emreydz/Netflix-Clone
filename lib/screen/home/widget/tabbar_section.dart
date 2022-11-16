import 'package:flutter/material.dart';

class tabsection extends StatelessWidget {
  final String webimage;
  final String textname;
  final String min;
  final String descrip;
  tabsection(
      {Key? key,
      required this.webimage,
      required this.textname,
      required this.min,
      required this.descrip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: Image.asset(webimage),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textname,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          min,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.download,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                  child: Text(
                descrip,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 16),
              )),
            )
          ],
        )
      ],
    );
  }
}
