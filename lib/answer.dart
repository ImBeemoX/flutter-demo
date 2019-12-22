import 'dart:collection';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
   Function selectedHandle;
   String answerText;
   
   Answer(this.selectedHandle, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(child: Text(this.answerText),textColor: Colors.white, onPressed: this.selectedHandle, color: Colors.blue,),
    );
  }
}