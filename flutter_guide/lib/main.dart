import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Howdy?',
      'answers': [
        {'text': 'hi', 'score': 10},
        {'text': 'hola', 'score': 5},
        {'text': 'shalom', 'score': 1},
      ]
    },
    {
      'questionText': 'favorite animal?',
      'answers': [
        {'text': 'ant', 'score': 10},
        {'text': 'bat', 'score': 5},
        {'text': 'cow', 'score': 1},
      ]
    },
    {
      'questionText': 'age?',
      'answers': [
        {'text': '3', 'score': 10},
        {'text': '18', 'score': 5},
        {'text': '22', 'score': 3},
        {'text': '38', 'score': 1},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print('resetQuiz');
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
    print('questionIndex:' + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
