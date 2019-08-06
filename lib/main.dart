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
      'answers': ['Blue', 'Red', 'Green', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Bird', 'Fish']
    },
    {
      'questionText': 'Choose your class!',
      'answers': ['Knight', 'Mage', 'Hunter', 'Rouge']
    },
  ];
  int _qIndex = 0;

  void _answerQuestion() {
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
            : Result(),
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
