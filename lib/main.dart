import 'package:flutter/material.dart';

void main() {
  runApp(new ScrollViewSample());
}

class ScrollViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'ScrollViewSample',
        home: new Scaffold(
          body: new ListView(
            children: createSampleList(),
          ),
        ));
  }

  createSampleList() {
    List<Widget> list = new List();
    for (var i = 0; i < 100; i++) {
      list.add(new Text('Row $i'));
    }
    return list;
  }
}
