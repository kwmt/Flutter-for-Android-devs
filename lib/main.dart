import 'package:flutter/material.dart';

void main() {
  runApp(new LinearLayoutSample());
}

class LinearLayoutSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'LinearLayoutSample',
        home: new Scaffold(
          body: new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  "Row Sample",
                  style: new TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                new Container(
                    padding: EdgeInsets.only(bottom: 32.0),
                    // 以下がRowのサンプル
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text('Row One,'),
                        new Text('Row Two,'),
                        new Text('Row Three,'),
                        new Text('Row Four'),
                      ],
                    )),
                new Text(
                  "Column Sample",
                  style: new TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                // 以下がColumnのサンプル
                new Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text('Column One'),
                    new Text('Column Two'),
                    new Text('Column Three'),
                    new Text('Column Four'),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
