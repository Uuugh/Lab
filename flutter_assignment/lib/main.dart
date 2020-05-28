// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './text_output.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textString = "Hi there good looking!";

  void _changeText(String textString) {
    setState(() {
      this._textString = textString;
    });
    print('_changeText');
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment 1'),
        ),
        body: Container( //Could have used Center(
          width: double.infinity,
          child: Column(
            children: [
              TextOuput(_textString),
              TextControl(_changeText,"What are you looking at?"),
            ],
            mainAxisSize: MainAxisSize.max,
          ),
        ));

    return MaterialApp(
      home: scaffold,
    );
  }
}
