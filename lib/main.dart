import 'package:flutter/material.dart';

void main() => runApp(new FadeAppTest());

class FadeAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fade Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyFadeTest(title: 'Fade Demo'),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  final String title;

  MyFadeTest({Key key, this.title}) : super(key: key);

  @override
  _MyFadeTest createState() => new _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          child: new FadeTransition(
            opacity: curve,
            child: new FlutterLogo(
              size: 100.0,
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Fade',
          child: new Icon(Icons.brush),
          onPressed: () {
            controller.forward();
          }),
    );
  }
}
