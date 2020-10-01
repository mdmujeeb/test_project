import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final onClick;
  final index;

  Quiz({this.questions, this.index, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => onClick(answer['score']));
        }).toList(),
      ],
    );
  }
}
