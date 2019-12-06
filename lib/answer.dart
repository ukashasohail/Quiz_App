import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function select_handler;
  final String answer_text;


  Answer(this.select_handler,this.answer_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer_text),
        onPressed: select_handler,
      ),
    );
  }
}
