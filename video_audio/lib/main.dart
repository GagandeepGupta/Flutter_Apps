import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_audio/audio_cp.dart';
import 'package:video_audio/pages.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Video Player Demo',
      home: MyhomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  var _selected = 0;
  var _pages = [
    FirstPage1(),
    VideoPlayerScreen(),
    ThirdPage(),
    FouthPage(),
    FivePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Player",
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: _pages[_selected],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        index: 2,
        backgroundColor: Colors.deepPurpleAccent,
        color: Colors.black,
        items: <Widget>[
          Icon(
            Icons.audiotrack,
            size: 20,
            color: Colors.pink,
          ),
          Icon(
            Icons.video_library,
            size: 20,
            color: Colors.pink,
          ),
          Icon(
            Icons.home,
            size: 20,
            color: Colors.pink,
          ),
          Icon(
            Icons.photo,
            size: 20,
            color: Colors.pink,
          ),
          Icon(
            Icons.account_circle,
            size: 20,
            color: Colors.pink,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selected = index;
          });
        },
      ),
    );
  }
}
