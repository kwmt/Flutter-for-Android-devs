import 'package:flutter/material.dart';

void main() {
  runApp(new GestureSample());
}

class GestureSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'GestureSample',
        home: new Scaffold(
          body: new ListView(
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  print("click");
                },
                child: new Text("Button"),
              ),
              new GestureDetector(
                child: new FlutterLogo(
                  size: 200.0,
                ),
                onTap: () {
                  print("tap");
                },
              )
            ],
          ),
        ));
  }
}
