import 'package:flutter/material.dart';

myapp() {
  my() {
    print("email clicked");
  }

  myprint() {
    print("Cal is clicked.......");
  }

  var url =
      "https://raw.githubusercontent.com/GagandeepGupta/demo1/master/Gagan.jpg";
  var url_lend =
      "https://raw.githubusercontent.com/GagandeepGupta/demo1/master/website_logo.png";

  var cal_button = IconButton(icon: Icon(Icons.add_call), onPressed: myprint);

  var myiconbuttonemail = IconButton(
    icon: Icon(
      Icons.email,
      color: Colors.black,
    ),
    onPressed: my,
  );

  return Scaffold(
    appBar: AppBar(
      title: Text("GD_Gupta"),
      backgroundColor: Colors.amber,
      leading: Image.network(url_lend),
      actions: <Widget>[cal_button, myiconbuttonemail],
    ),
    body: Image.network(
      url,
      width: double.infinity,
      height: double.infinity,
    ),
    backgroundColor: Colors.green,
  );
}
