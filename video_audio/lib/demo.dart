import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

mypress() {
  var player = AudioCache();
  player.play('Pain-sound-effect.mp3');
}

//var mybd = FlatButton(onPressed: mypress, color: Colors.redAccent);

mybody() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 300,
          child: Card(
            child: Image.asset("images/gg.jpg"),
          ),
        ),
        Container(
            child: Center(
                child:
                    FlatButton(onPressed: mypress, color: Colors.redAccent))),
      ],
    ),
  );
}
