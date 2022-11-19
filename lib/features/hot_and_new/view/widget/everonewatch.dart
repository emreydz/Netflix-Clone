import 'package:flutter/material.dart';

class EveronewatchWidget extends StatelessWidget {
  final List everyonewatch;
  final int index;
  const EveronewatchWidget(
      {super.key, required this.everyonewatch, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.35,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                everyonewatch[index]["img"],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        everyonewatch[index]["duration"]
            ? Row(
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        height: 2.5,
                        width: size.width,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 2.5,
                        width: size.width * 0.35,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              )
            : Container(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  everyonewatch[index]["title_img"],
                  width: 170,
                ),
              ),
              Icon(
                Icons.share,
                color: Colors.white,
              ),
              Icon(
                Icons.done,
                color: Colors.white,
              ),
              Icon(
                Icons.play_arrow,
                color: Colors.white,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            everyonewatch[index]['title'],
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
          child: Text(
            everyonewatch[index]['description'],
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5),
          child: Text(
            everyonewatch[index]['type'],
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
