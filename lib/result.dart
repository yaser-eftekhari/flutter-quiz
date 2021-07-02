import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetAction;

  Result({required this.totalScore, required this.resetAction});

  String get textResult {
    if (totalScore < 10) return "We are not alike!";
    if (totalScore < 20) return "We are kind of similar";

    return "We are alike!";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 350,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Your score is $totalScore",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            textResult,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetAction, child: Text("Reset Quiz")),
        ],
      ),
    );
  }
}
