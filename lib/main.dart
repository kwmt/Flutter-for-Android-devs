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
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 10; i++) {
      widgets.add(_getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Container(child: Column(
        children: <Widget>[ ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (BuildContext context, int position) {
            return _getRow(position);
          }),]),
    ));
  }

  Widget _getRow(int i) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Row $i"),
      ),
      onTap: () {
        print("Row Tapped $i");
        setState(() {
          widgets.add(_getRow(widgets.length));
        });
      },
    );
  }
}
