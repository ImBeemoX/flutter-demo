import 'package:flutter/material.dart';

class Question extends StatelessWidget {
   String questionText;

  Question(String question){
    this.questionText = question;
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(questionText, style: TextStyle(fontSize: 28), textAlign: TextAlign.center,), width: double.infinity, margin: EdgeInsets.only(top: 10, bottom: 10));
  }
}