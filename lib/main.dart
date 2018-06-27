import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Sample App',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new SampleApp(),
  ));
}

class SampleApp extends StatefulWidget {
  @override
  SampleAppState createState() => new SampleAppState();
}

class SampleAppState extends State<SampleApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView(children: _getListDate()),
    );
  }

  _getListDate() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(GestureDetector(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Row $i"),
        ),
        onTap: () {
          print("Row Tapped $i");
        },
      ));
    }
    return widgets;
  }
}
