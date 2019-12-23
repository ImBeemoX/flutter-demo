import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


var _counter = 0;
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
  
}
class _MyAppState extends State{
  final questions = [
      {'questionText': "Whats your favorite colour?", 'answers': ["Black", "Red", "Green"]},
      {'questionText': "Whats your favorite animal?", 'answers': ["Cat", "Dog", "Cow"]},
      {'questionText': "Whats your favorite food?", 'answers': ["Pizza", "Burger", "Sandwich"]}   
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
       appBar: AppBar(title: Text("My First App"),),
       body: _counter < questions.length ? Column(children: <Widget>
       [Question(questions[_counter]['questionText']),
      ...(questions[_counter]['answers'] as List<String>).map((answer) {
        return Answer(_answerQuestions, answer);
      }).toList()
      ])
       : Center(child: Text("Final result"))
    ));
  }

  void _answerQuestions(){
    setState(() {
      // if(_counter < questions.length - 1){
      //   _counter++;
      // }else{
      //   _counter--;
      // }
      _counter++;
    });
    
    print(_counter); 
  }
}

