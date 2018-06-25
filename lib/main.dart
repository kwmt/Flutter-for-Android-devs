import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyAppHome(),
    routes: <String, WidgetBuilder>{
      '/a': (BuildContext context) => new MyPage(title: 'Page A'),
      '/b': (BuildContext context) => new MyPage(title: 'Page B'),
      '/c': (BuildContext context) => new MyPage(title: 'Page C'),
    },
  ));
}

class MyPage extends StatelessWidget {
  final String title;

  MyPage({this.title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text('go back'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ButtonWidget('Go to Page A', '/a'),
            new ButtonWidget('Go to Page B', '/b'),
            new ButtonWidget('Go to Page C', '/c'),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String title;
  final String destination;

  ButtonWidget(this.title, this.destination);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(destination);
        },
        child: new Text(title),
      ),
    );
  }
}
