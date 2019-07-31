import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _qIndex = 0;

  void _answerQuestion() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color',
      'what\' your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  questions[_qIndex],
                ),
              ),
              RaisedButton(
                child: Text('a 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('a 2'),
                onPressed: () => print('a2 chosen'),
              ),
              RaisedButton(
                child: Text('a 3'),
                onPressed: () {
                  print('a3 chosen');
                },
              ),
            ],
          ),
        ),
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
// one file per widget