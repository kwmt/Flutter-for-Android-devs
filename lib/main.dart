import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Fade Demo',
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

class SampleAppState extends State<SampleApp> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new GestureDetector(
        child: new RotationTransition(
            turns: curve,
            child: new FlutterLogo(
              size: 200.0,
            )),
        onDoubleTap: () {
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
      ),
    ));
  }
}
