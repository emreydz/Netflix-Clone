import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(163, 66, 64, 64),
      ),
      child: const TextField(
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.mic,
            color: Color.fromARGB(255, 167, 164, 164),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 167, 164, 164),
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 167, 164, 164),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
