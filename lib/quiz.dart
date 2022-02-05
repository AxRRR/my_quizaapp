import 'package:flutter/cupertino.dart';

import './aswner.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Aswer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
