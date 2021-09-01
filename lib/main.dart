import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var question = ['Q1', 'Q2', 'Q3'];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My App'),),
      body: Column(children: <Widget>[
        Text('question 1'),
        RaisedButton(child: Text('Answer 1'), onPressed: null),
        RaisedButton(child: Text('Answer 2'), onPressed: null),
        RaisedButton(child: Text('Answer 3'), onPressed: null),

      ],),
    ),);
  }
}