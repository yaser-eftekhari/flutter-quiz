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
    print("Button was pressed");
    setState(() {
      _questionIndex++;
    });
    if(_questionIndex >= _qaList.length) {
      _questionIndex = 0;
    }
  }

  var _questionIndex = 0;
  var _qaList = [
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
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Question(_qaList[_questionIndex]["question"] as String),
            ...(_qaList[_questionIndex]["answers"] as List<String>).map((answer) {
              return Answer(
                onPressCB: onPressAction,
                buttonText: answer,
              );
            })
          ],
        ),
      )
    );
  }
}
