import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void questionAnswer(){
    setState(() { // needed to update interface, higher order funciton?
      questionIndex = questionIndex + 1;
    });
    
    
  }
  @override
  Widget build(BuildContext context){
    var questions = ['Q1', 'Q2', 'Q3'];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My App'),),
      body: Column(children: <Widget>[
        Text(questions[questionIndex]),
        RaisedButton(child: Text('Answer 1'), onPressed: questionAnswer), // pointer to function not called
        RaisedButton(child: Text('Answer 2'), onPressed: () => print('answer 2')), // anomous function lambda
        RaisedButton(child: Text('Answer 3'), onPressed: () { // break our syntex of the same, adding () at the end would implement the function on creation
          print('answer 3');
        }),

      ],),
    ),);
  }
}