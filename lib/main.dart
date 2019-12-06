import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      {
        "question_text": "What's your favorite Color?",
        "question_answers": ["Black", "Red", "Green", "Yellow"],
      },
      {
        "question_text": "What's your favorite Animal?",
        "question_answers": ["Rabbit", "Lion", "Snake", "Tiger"],
      },
      {
        "question_text": "Who is the founder of Pakistan?",
        "question_answers": ["Quaid e Azam", "Allama Iqbal", "SS", "ADAS"],
      },
      {
        "question_text": "What's your favorite cricketer?",
        "question_answers": ["Afridi", "AB", "Root", "Smith"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_question_index]["question_text"],
            ),
            ...(questions[_question_index]["question_answers"] as List<String>).map((answer){
              return Answer(_answer_of_question,answer);
            }).toList()
          ],
        ), //if we want more than one widget
        //then we use Column  /// list of widgets
      ),
    ); //scaffold gives theme
  }
}
