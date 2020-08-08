import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp() {
  mybody() {
    return Center(
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
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }

  mytoast_add() {
    return Fluttertoast.showToast(
        msg: "Working on it ...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  mytoast_profile() {
    return Fluttertoast.showToast(
        msg: "This is parents profile...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  mytoast_camera() {
    return Fluttertoast.showToast(
        msg: "Camera trying to launch...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var Add_button_icon = IconButton(
    icon: Icon(Icons.add, color: Colors.pink),
    color: Colors.pink,
    onPressed: mytoast_add,
  );
  var camera_button_icon = IconButton(
    icon: Icon(Icons.camera, color: Colors.pink),
    color: Colors.pink,
    onPressed: mytoast_camera,
  );

  var design = Scaffold(
    appBar: AppBar(
      title: Text("Profile"),
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(Icons.account_circle, color: Colors.green),
        onPressed: mytoast_profile,
      ),
      actions: <Widget>[
        camera_button_icon,
        Add_button_icon,
      ],
    ),
    body: mybody(),
  );
  return MaterialApp(
    home: design,
    debugShowCheckedModeBanner: false,
  );
}
