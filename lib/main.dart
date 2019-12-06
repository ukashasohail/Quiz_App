import 'package:flutter/material.dart';
import './question.dart';


// main function
void main() => runApp(MyApp());

// main class
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question_index = 0;

  void _answer_of_question() {
    setState(() {
      _question_index = _question_index + 1;
    });

    print("question index: ${_question_index}");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite Color?",
      "What's your favorite Animal? ",
      "What's your favorite A? ",
      "What's your favorite B? ",
      "What's your favorite C? ",
      "What's your favorite D? ",
      "What's your favorite E? ",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_question_index],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answer_of_question,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("answer 2 chosen"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("answer 3 chosen");
              },
            ),
          ],
        ), //if we want more than one widget
        //then we use Column  /// list of widgets
      ),
    ); //scaffold gives theme
  }
}
