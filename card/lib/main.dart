import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:draggable_scrollbar/draggable_scrollbar.dart';

void main() {
  runApp(x());
}

class x extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 400,
                height: 100,
                child: Card(
                  color: Colors.redAccent.shade100,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("congress.jpg"),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.redAccent.shade400,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(50))),
                    Container(
                      child: Center(
                          child: Text(
                        "Congress Party",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.amberAccent.shade400,
                        child: Text("Select"),
                        onPressed: () => print("AAP Party"),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                width: 400,
                height: 100,
                child: Card(
                  color: Colors.pinkAccent.shade100,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("kamal.png"),
                              fit: BoxFit.fitWidth,
                            ),
                            color: Colors.pinkAccent,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(50))),
                    Container(
                      child: Center(
                          child: Text(
                        "BJP",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.amberAccent.shade400,
                        child: Text("Select"),
                        onPressed: () => print("AAP Party"),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                width: 400,
                height: 100,
                child: Card(
                  color: Colors.amberAccent.shade100,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("App.jpg"),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.amberAccent.shade400,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(50))),
                    Container(
                      child: Center(
                          child: Text(
                        "AAP Party",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.amberAccent.shade400,
                        child: Text("Select"),
                        onPressed: () => print("AAP Party"),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                width: 400,
                height: 100,
                child: Card(
                  color: Colors.blueAccent.shade100,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("BSP.png"),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blueAccent.shade400,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(50))),
                    Container(
                      child: Center(
                          child: Text(
                        "BSP Party",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.amberAccent.shade400,
                        child: Text("Select"),
                        onPressed: () => print("AAP Party"),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                width: 400,
                height: 100,
                child: Card(
                  color: Colors.orangeAccent.shade100,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("shiv.png"),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.orange,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(50))),
                    Container(
                      child: Center(
                          child: Text(
                        "Shiv Senna",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.amberAccent.shade400,
                        child: Text("Select"),
                        onPressed: () => print("AAP Party"),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                width: 400,
                height: 100,
                child: Card(
                  color: Colors.green.shade200,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Nota.png"),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.greenAccent.shade400,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(50))),
                    Container(
                      child: Center(
                          child: Text(
                        "NOTA",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.amberAccent.shade400,
                        child: Text("Select"),
                        onPressed: () => print("AAP Party"),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ));
  }
}
