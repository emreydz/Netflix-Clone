import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  DownloadsPage({Key? key}) : super(key: key);

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Downloads"),
        actions: [
          Icon(
            Icons.connected_tv,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.person,
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Smart Download",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Downloads for you feature",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We will download some content that we have specially selected for you from TV shows and movies so that you always have something to watch on your phone.",
                style: TextStyle(color: Colors.white.withOpacity(0.6)),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  padding: const EdgeInsets.all(35),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(163, 66, 64, 64),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.download,
                    size: 90,
                    color: Color.fromARGB(161, 153, 148, 148),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                height: 40,
                child: Center(
                    child: Text(
                  "Set",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                color: Color.fromARGB(163, 66, 64, 64),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Other content you can download",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
