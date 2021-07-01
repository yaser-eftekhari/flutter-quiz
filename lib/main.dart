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
    if(_questionIndex >= _questionList.length) {
      _questionIndex = 0;
    }
  }

  var _questionIndex = 0;
  var _questionList = [
    "First Question",
    "Second Question"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: Column(
          children: [
            Question(_questionList[_questionIndex]),
            Answer(
              onPressCB: onPressAction,
              buttonText: 'Answer 1',
            ),
            Answer(
              onPressCB: onPressAction,
              buttonText: 'Answer 2',
            ),
            Answer(
              onPressCB: onPressAction,
              buttonText: 'Answer 3',
            ),
          ],
        ),
      )
    );
  }
}
