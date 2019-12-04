import 'package:flutter/material.dart';

// main function
void main() => runApp(MyApp());

// main class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite Color?",
      "What's your favorite Animal? ",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Text("The Qustion"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: null,
            ),
          ],
        ), //if we want more than one widget
        //then we use Column  /// list of widgets
      ),
    ); //scaffold gives theme
  }
}
