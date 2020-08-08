import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  mybody1() async {
    var url = "http://192.168.43.76/cgi-bin/date.py";
    var response = await http.get(url);
    print(response.statusCode);
    //print('Response status: ${response.statusCode}');
    print(response.body);

    //print(await http.read('https://example.com/foobar.txt'));
  }

  mybody2() async {
    var url = "http://192.168.43.76/cgi-bin/cal.py";
    var response = await http.get(url);
    print(response.statusCode);
    //print('Response status: ${response.statusCode}');
    print(response.body);

    //print(await http.read('https://example.com/foobar.txt'));
  }

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date_app"),
        ),
        body: Center(
            child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(child: Text("For date"), onPressed: mybody1),
              RaisedButton(child: Text("For cal "), onPressed: mybody2),
            ],
          ),
        )),
      ),
    ),
  );
}
