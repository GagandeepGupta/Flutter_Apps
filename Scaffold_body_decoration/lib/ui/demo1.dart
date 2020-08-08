import 'package:flutter/material.dart';

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

  var Add_button_icon = IconButton(
    icon: Icon(Icons.add, color: Colors.pink),
    color: Colors.pink,
    onPressed: null,
  );
  var camera_button_icon = IconButton(
    icon: Icon(Icons.camera, color: Colors.pink),
    color: Colors.pink,
    onPressed: null,
  );

  var design = Scaffold(
    appBar: AppBar(
      title: Text("Profile"),
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(Icons.account_circle, color: Colors.green),
        onPressed: null,
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
