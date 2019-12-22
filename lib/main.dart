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
  @override
  Widget build(BuildContext context) {
    final _questions = [
      {'questionText': "Whats your favorite colour?", 'answers': ["Black", "Red", "Green"]},
      {'questionText': "Whats your favorite animal?", 'answers': ["Cat", "Dog", "Cow"]},
      {'questionText': "Whats your favorite food?", 'answers': ["Pizza", "Burger", "Sandwich"]}   
    ];
    
    return MaterialApp(home: Scaffold(
       appBar: AppBar(title: Text("My First App"),),
       body: Column(children: <Widget>
       [Question(_questions[_counter]['questionText']),
      ...(_questions[_counter]['answers'] as List<String>).map((answer) {
        return Answer(_answerQuestions, answer);
      }).toList()
      ])
       
    ));
  }

  void _answerQuestions(){
    setState(() {
      if(_counter< 2){
        _counter++;
      }else{
        _counter--;
      }
    });
    
    print(_counter); 
  }
}

