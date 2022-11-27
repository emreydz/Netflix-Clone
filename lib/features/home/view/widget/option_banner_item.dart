import 'package:flutter/material.dart';

class optionbanneritem extends StatelessWidget {
  final VoidCallback ontap;
  final IconData icon;
  final String title;
  optionbanneritem(
      {Key? key, required this.icon, required this.title, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
