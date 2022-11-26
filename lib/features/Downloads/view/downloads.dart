import 'package:flutter/material.dart';

import '../../../core/constants/downloads/downloads.dart';
import '../../../core/init/icon/app_icon.dart';

class DownloadsPage extends StatelessWidget {
  DownloadsPage({Key? key}) : super(key: key);

  AppIcon get _icons => AppIcon.init();
  TabBarDownloads get _item => TabBarDownloads.init();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _downappbar(),
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
                    _item.smartdown,
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  )
                ],
              ),
              _height50(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  _item.title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              _height20(),
              Text(
                _item.subtitle,
                style: TextStyle(color: Colors.white.withOpacity(0.6)),
              ),
              _height50(),
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
              _height20(),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                height: 40,
                child: Center(
                    child: Text(
                  _item.setbuton,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
              _height50(),
              Container(
                color: Color.fromARGB(163, 66, 64, 64),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _item.otherbuton,
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

  AppBar _downappbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Downloads"),
      actions: [
        Icon(_icons.itemsdownloadappbar[0]),
        _width16(),
        Icon(_icons.itemsdownloadappbar[1]),
        _width16(),
        Icon(_icons.itemsdownloadappbar[2]),
        _width16(),
      ],
    );
  }

  SizedBox _width16() {
    return SizedBox(
      width: 16,
    );
  }

  SizedBox _height20() {
    return SizedBox(
      height: 20,
    );
  }

  SizedBox _height50() {
    return SizedBox(
      height: 50,
    );
  }
}
