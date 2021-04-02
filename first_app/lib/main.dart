// import 'dart:html';

import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What is your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What is your favourite animal?',
        'answers': [
          {'text': 'Cat', 'score': 1},
          {'text': 'Dog', 'score': 5},
          {'text': 'Horse', 'score': 10},
        ],
      },
      {
        'questionText': 'What is your favourite music?',
        'answers': [
          {'text': 'Rap', 'score': 1},
          {'text': 'Heavy Rock', 'score': 5},
          {'text': 'Classical Music', 'score': 10},
        ],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
