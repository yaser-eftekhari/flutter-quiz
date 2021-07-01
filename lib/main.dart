import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  void onPressAction() => print("Button was pressed");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: Column(
          children: [
            Text("First question"),
            ElevatedButton(
              onPressed: onPressAction,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: onPressAction,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
                onPressed: null,
                child: Text('Answer 3'),
            ),
          ],
        ),
      )
    );
  }
}
