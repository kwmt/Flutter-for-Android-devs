import 'dart:async' show Future;

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
                if (title == 'Location') {
                  return Navigator
                      .of(context)
                      .pop({"lat": 43.821757, "lon": -79.226392});
                }
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

class MyAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MyAppHome();
}

class _MyAppHome extends State<MyAppHome> {
  String _text;

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
            new Container(
                margin: EdgeInsets.only(top: 16.0),
                child: new RaisedButton(
                    child: new Text('location'),
                    onPressed: () {
                      startActivity(context);
                    })),
            new Container(
              margin: EdgeInsets.only(top: 32.0),
              child: new Text(_text),
            )
          ],
        ),
      ),
    );
  }

  Future startActivity(BuildContext context) async {
    Map result = await Navigator
        .of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new MyPage(title: 'Location');
    }));
    if (result != null && result.containsKey('lat')) {
      setState(() {
        _text = '$result';
      });
    }
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
