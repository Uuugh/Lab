import 'package:flutter/material.dart';

class PrintText extends StatelessWidget {
  final String textString;

  PrintText(this.textString);

  @override
  Widget build(BuildContext context) {
    return Text(
      textString,
      textScaleFactor: 5,
      style: TextStyle(
        fontSize: 5,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.1,
      ),
      textAlign: TextAlign.center,
      textWidthBasis: TextWidthBasis.parent,
    );
  }
}