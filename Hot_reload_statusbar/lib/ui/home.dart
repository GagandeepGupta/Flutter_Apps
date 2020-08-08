import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

view() {
  Fluttertoast.showToast(
      msg: "This is Bottom Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red.shade900,
      textColor: Colors.white,
      fontSize: 16.0);
  FlutterStatusbarcolor.setStatusBarColor(Colors.red.shade900);
  var src =
      'https://raw.githubusercontent.com/GagandeepGupta/demo1/master/website_logo.png';
  var column = Column(
    children: <Widget>[
      Text('Hiii',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      Text(
        'GD_Gupta Here',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      Image(
        image: NetworkImage(src),
        fit: BoxFit.cover,
      ),
    ],
  );
  // var border = Border.all(
  //   color: Colors.red.shade900,
  //   width: 100,
  // );
  var decorate = BoxDecoration(
      color: Colors.red.shade300,
      //border: border,
      borderRadius: BorderRadius.vertical());
  var contain = Container(
    width: 360,
    height: 430,
    decoration: decorate,
    child: column,
    alignment: Alignment.bottomCenter,
  );

  var bar = AppBar(
    title: Text('Toasts'),
    backgroundColor: Colors.black,
  );
  var ui = Scaffold(
    appBar: bar,
    body: Center(child: contain),
  );
  var design = MaterialApp(
    home: ui,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
