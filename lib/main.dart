import 'package:flutter/material.dart';

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
            Text(_questionList[_questionIndex]),
            ElevatedButton(
              onPressed: onPressAction,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: onPressAction,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
                onPressed: onPressAction,
                child: Text('Answer 3'),
            ),
          ],
        ),
      )
    );
  }
}
