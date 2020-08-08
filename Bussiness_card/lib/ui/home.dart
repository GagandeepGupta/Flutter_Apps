import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

avtar() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black38);
  myprint() {
    print("heelo there");
  }

  myt() {
    Fluttertoast.showToast(
        msg: "This is Gagan !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  getavtar() {
    return Container(
      width: 100,
      height: 100,
      //color: Colors.orange,
      decoration: BoxDecoration(
          color: Colors.redAccent.shade100,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: Colors.redAccent,
            width: 3,
          ),
          image: DecorationImage(
            image: NetworkImage(
                "https://raw.githubusercontent.com/GagandeepGupta/demo1/master/website_logo.png"),
            fit: BoxFit.cover,
          )),
    );
  }

  getcard() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "GD Gupta",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text("gagandeepgupta520@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.email),
              Text("@gagandeepgupta520"),
            ],
          ),
        ],
      ),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.redAccent,
          width: 3,
        ),
      ),
    );
  }

  var mybody = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade400,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          getcard(),
          InkWell(onDoubleTap: myt, child: getavtar()),
        ],
      ));

  var design = Scaffold(
    appBar: AppBar(
      title: Center(child: Text("Buissness Card")),
      backgroundColor: Colors.pink,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
        IconButton(icon: Icon(Icons.account_circle), onPressed: null)
      ],
    ),
    body: mybody,
    backgroundColor: Colors.red.shade300,
  );
  return MaterialApp(
    home: design,
    debugShowCheckedModeBanner: false,
  );
}
