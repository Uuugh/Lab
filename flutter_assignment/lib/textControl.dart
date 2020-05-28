import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String questionText;
  final Function handler;

  TextControl(this.handler, this.questionText);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: ()=>handler(questionText),
      child: Text('New Test'),
      textColor: Colors.blue,
    );
  }
}