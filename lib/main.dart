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
      body: Center(
          child: Text(
        'This is a custom font text',
        style: TextStyle(fontFamily: 'MyCustomFont'),
      )),
    );
  }
}
