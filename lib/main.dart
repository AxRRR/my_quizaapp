import 'package:flutter/material.dart';

import './question.dart';
import './aswner.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  // @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'question': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Blue', 'Yellow']
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': ['Cocodrile', 'Lion', 'Flamingo', 'Snake']
      },
      {
        'question': 'What\'s your age range?',
        'answers': ['0-5 yeas', '6-12 years', '13-17 years', '+18 years']
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First App with Flutter'),
        backgroundColor: Color.fromRGBO(120, 21, 50, 1),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(),
    ));
  }
}
