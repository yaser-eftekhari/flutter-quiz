import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  void onPressAction() {
    setState(() {
      _questionIndex++;
    });
  }

  var _questionIndex = 0;
  final _qaList = const [
    {
      "question": "What is your favorite sport?",
      "answers": ["Volleyball", "Hockey", "Basketball", "Soccer"],
    },
    {
      "question": "What is your favorite city?",
      "answers": ["Ottawa", "Paris", "Rome", "Amsterdam"],
    },
    {
      "question": "What is your favorite movie?",
      "answers": ["If Only", "Lupin", "Dark Knight", "God Father"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: _questionIndex < _qaList.length
            ? Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Question(_qaList[_questionIndex]["question"] as String),
                  // The three dots here spreads the list of Answer widgets to individual Answers to be included as children
                  // The map operates on the list of answers and dynamically generates the Answer widgets
                  ...(_qaList[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(
                      onPressCB: onPressAction,
                      buttonText: answer,
                    );
                  })
                ],
              )
            : Center(
                child: Text(
                  "You finished the quiz!",
                  style: TextStyle(fontSize: 25),
                ),
              ),
      ),
    );
  }
}
