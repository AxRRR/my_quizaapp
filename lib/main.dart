import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  // @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First App with Flutter'),
        backgroundColor: Color.fromRGBO(120, 21, 50, 1),
      ),
      body: Column(
        children: [
          Text(questions.elementAt(questionIndex)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: null,
          )
        ],
      ),
    ));
  }
}
