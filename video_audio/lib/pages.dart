import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

//import 'dart:html' as html;
class FirstPage1 extends StatefulWidget {
  @override
  _FirstPage1State createState() => _FirstPage1State();
}

class _FirstPage1State extends State<FirstPage1> {
  AudioPlayer obj = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.amber,
              //child: Image.network(""),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.play_circle_filled),
                    onPressed: () {
                      setState(() {
                        obj.play("Jai_Jai_kara.mp3");
                      });
                    },
                  ),
                  RaisedButton(
                    child: Icon(Icons.pause_circle_filled),
                    onPressed: () {
                      setState(() {
                        obj.pause();
                      });
                    },
                  ),
                  RaisedButton(
                    child: Icon(Icons.subdirectory_arrow_right),
                    onPressed: () {
                      setState(() {
                        obj.resume();
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
    // Use the controller to loop the video.
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      backgroundColor: Colors.deepPurpleAccent,
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            // if (_controller.value.isPlaying) {
            //   _controller.pause();
            // } else {
            //   // If the video is paused, play it.
            //   _controller.play();
            // }
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "hello GD",
                style: TextStyle(color: Colors.white),
              ),
            ]),
      ),
    );
  }
}

class FouthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        width: 8,
                        color: Colors.pink,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/GagandeepGupta/demo1/master/IMG_20190710_113438.jpg'),
                        fit: BoxFit.cover,
                      )),
                  child: Text(
                    "Parents",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

// FivePage() {
//   String url = 'https://www.linkedin.com/in/gagan-deep-gupta-4608b715b/';
//   html.window.open(url, '_blank');
// }

class FivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "hello GD",
                style: TextStyle(color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
