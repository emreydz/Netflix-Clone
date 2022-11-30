import 'package:flutter/material.dart';

class OptionBannerPlayContainer extends StatelessWidget {
  final Widget row;
  const OptionBannerPlayContainer({Key? key, required this.row})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: row);
  }
}
