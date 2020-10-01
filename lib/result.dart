import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  Result(this.finalScore, this.resetHandler);

  String get resultPhrase {
    if (finalScore <= 8) {
      return 'You are awesome and innocent!';
    } else if (finalScore <= 12) {
      return 'Pretty likeable!';
    } else if (finalScore <= 16) {
      return 'You are ... strange!';
    } else {
      return 'You are bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
