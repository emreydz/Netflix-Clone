import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/view/widget/optionsheet.dart';

class OptionSheetRow extends StatelessWidget {
  const OptionSheetRow({
    Key? key,
    required this.optionsheetbottom,
  }) : super(key: key);

  final List<OptainSheet> optionsheetbottom;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OptainSheet(
            icon: optionsheetbottom[0].icon, title: optionsheetbottom[0].title),
        OptainSheet(
            icon: optionsheetbottom[1].icon, title: optionsheetbottom[1].title),
        OptainSheet(
            icon: optionsheetbottom[2].icon, title: optionsheetbottom[2].title),
        OptainSheet(
            icon: optionsheetbottom[3].icon, title: optionsheetbottom[3].title)
      ],
    );
  }
}
