import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _text;
  final Function function;

  Answer(this._text, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.maxFinite,
      child: RaisedButton(
        color: Colors.green,
        textColor: Colors.white,
        child: Text(_text),
        onPressed: function,
      ),
    );
  }
}
