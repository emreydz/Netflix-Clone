import 'package:flutter/material.dart';

class ListTileBottomSheet extends StatelessWidget {
  final IconData iconlead;
  final String text;
  final IconData icontrail;
  const ListTileBottomSheet({
    Key? key,
    required this.iconlead,
    required this.text,
    required this.icontrail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconlead, color: Colors.white),
      title: Text(text, style: TextStyle(color: Colors.white)),
      trailing: Icon(icontrail, color: Colors.white),
    );
  }
}
