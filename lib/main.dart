import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  void onPressAction(int score) {
    setState(() {
      _questionIndex++;
    });
    _totalScore += score;
  }

  void onResetAction() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;
  var _totalScore = 0;

  final _qaList = const [
    {
      "question": "What is your favorite sport?",
      "answers": [
        {"text": "Volleyball", "score": 10},
        {"text": "Hockey", "score": 6},
        {"text": "Basketball", "score": 3},
        {"text": "Soccer", "score": 1}
      ],
    },
    {
      "question": "What is your favorite city?",
      "answers": [
        {"text": "Ottawa", "score": 10},
        {"text": "Paris", "score": 6},
        {"text": "Rome", "score": 3},
        {"text": "Amsterdam", "score": 1}
      ],
    },
    {
      "question": "What is your favorite movie?",
      "answers": [
        {"text": "If Only", "score": 10},
        {"text": "Lupin", "score": 6},
        {"text": "Dark Knight", "score": 3},
        {"text": "God Father", "score": 1}
      ],
    },
  ];

  final _scores = const [10, 6, 3, 1];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: _questionIndex < _qaList.length
            ? Quiz(
                questionIndex: _questionIndex,
                onPressCB: onPressAction,
                qaList: _qaList,
              )
            : Result(totalScore: _totalScore, resetAction: onResetAction,),
      ),
    );
  }
}
