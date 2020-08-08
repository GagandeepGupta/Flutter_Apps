import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var cmd;
myweb() async {
  var url = "http://192.168.43.76/cgi-bin/web.py?x=${cmd}";
  var response = await http.get(url);
  print(response.body);
}

mybody() {
  return Center(
    child: Container(
      width: 300,
      height: 100,
      color: Colors.grey.shade400,
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              cmd = value;
            },
            autocorrect: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Enter the cmd",
              prefixIcon: Icon(Icons.move_to_inbox),
            ),
          ),
          FlatButton(
            onPressed: () {
              myweb();
              //print(cmd);
            },
            child: Text("Search"),
          )
        ],
      ),
    ),
  );
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Technical_App"),
      ),
      body: mybody(),
    ),
  ));
}
