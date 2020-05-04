import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Background Changer",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Random Background",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.grey,
    Colors.teal,
    Colors.cyan,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
  ];

  var currentColor = Colors.white;

  randomizeBackground() {
    var rndm = Random().nextInt(colors.length);

    setState(() {
      currentColor = colors[rndm];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          color: currentColor,
          elevation: 8.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          onPressed: randomizeBackground,
          child: Text(
            "Change it!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
