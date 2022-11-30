import 'package:flutter/material.dart';

class HomeDetailVideoButon extends StatelessWidget {
  final double num;
  final IconData icon;
  final String text;
  final Color color;
  const HomeDetailVideoButon({
    Key? key,
    required this.num,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        color: color,
        child: Padding(
          padding: EdgeInsets.only(left: num),
          child: Row(
            children: [
              Icon(
                icon,
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
