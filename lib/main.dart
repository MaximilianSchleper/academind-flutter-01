import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'Purple', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 8},
        {'text': 'Dog', 'score': 6},
        {'text': 'Fish', 'score': 4},
        {'text': 'Bird', 'score': 2},
      ]
    },
    {
      'questionText': 'Choose your class!',
      'answers': [
        {'text': 'Mage', 'score': 8},
        {'text': 'Rouge', 'score': 6},
        {'text': 'Warrior', 'score': 4},
        {'text': 'Hunter', 'score': 2},
      ]
    },
  ];
  var _qIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
     _qIndex = 0;
     _totalScore = 0; 
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print('totalscore:' + _totalScore.toString());
    setState(() {
      _qIndex = _qIndex + 1;
    });
    if (_qIndex < _questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _qIndex,
              )
            : Result(_totalScore, _resetQuiz,),
      ),
    );
  }
}

//shortcuts strg + k, strg + s
//autoformat shift + alt + f
// if onpressed is null, button is automatically disabled
// pass name of funktion without () instead of result with ()
// refactor strg + shift + r
// _ means private
// one file per widget general rule

// manage state in shared parent
