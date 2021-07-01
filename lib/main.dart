import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  void onPressAction() {
    print("Button was pressed");
    setState(() {
      questionIndex++;
    });
    if(questionIndex >= questionList.length) {
      questionIndex = 0;
    }
  }

  var questionIndex = 0;
  var questionList = [
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
            Text(questionList[questionIndex]),
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
