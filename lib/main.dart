import 'package:flutter/material.dart';
import './question.dart';


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
    var _questions = [
      "Whats your favorite colour?",
       "Whats your favorite animal?"
    ];
    
    return MaterialApp(home: Scaffold(
       appBar: AppBar(title: Text("My First App"),),
       body: Column(children: <Widget>[Question(_questions[_counter]),RaisedButton(child: Text('Answer'), onPressed: _answerQuestions, color: Colors.blue,)
       ,RaisedButton(child: Text('Answer'), onPressed: _answerQuestions,),])
       
    ));
  }

  void _answerQuestions(){
    setState(() {
      if(_counter<1){
        _counter++;
      }else{
        _counter--;
      }
    });
    
    print(_counter); 
  }
}

