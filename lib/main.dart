import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myCounter = 100;

  void increamentCounter() {
    setState(() {
      myCounter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Counter App'),
        ),
        body: Center(
          child: Text('You\'ve Chicked $myCounter times.'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increamentCounter,
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
