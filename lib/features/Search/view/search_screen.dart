import 'package:flutter/material.dart';
import 'package:netflix_clone/features/Search/view/widgets/searchbar.dart';
import 'package:netflix_clone/features/Search/view/widgets/searched.dart';

import '../../../core/data/home_page_json.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: _searchAppbar(),
        backgroundColor: Colors.black,
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SearchBar(), _texttitle(), _searchitem(), _height30()],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _searchAppbar() {
    return AppBar(backgroundColor: Colors.black, centerTitle: false, actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.connected_tv_rounded,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.person),
      ),
    ]);
  }

  Column _searchitem() {
    return Column(
      children: List.generate(
        searchJson.length,
        (index) => GestureDetector(
          onTap: (() {}),
          child: SearchedItems(
            searched: searchJson,
            index: index,
          ),
        ),
      ),
    );
  }

  Padding _texttitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 30),
      child: Text(
        "Top Searches",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  SizedBox _height30() {
    return const SizedBox(
      height: 30,
    );
  }
}
