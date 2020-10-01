import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MosqueDashboardApp());
}

class MosqueDashboardApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MosqueDashboardAppState();
  }
}

class _MosqueDashboardAppState extends State<MosqueDashboardApp> {
  var _index = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 4},
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Cat', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s your favourite bird?',
      'answers': [
        {'text': 'Sparrow', 'score': 8},
        {'text': 'Crow', 'score': 5},
        {'text': 'Eagle', 'score': 2},
      ]
    },
  ];

  onClick(int score) {
    setState(() {
      _index++;
      _totalScore += score;
    });
  }

  onReset() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Personality Quiz'),
        backgroundColor: Colors.green,
      ),
      body: _index < 3
          ? Quiz(
              questions: _questions,
              index: _index,
              onClick: onClick,
            )
          : Result(_totalScore, onReset),
    ));
  }
}
