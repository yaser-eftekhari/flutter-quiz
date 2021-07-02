import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetAction;

  Result({required this.totalScore, required this.resetAction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Your score is $totalScore",
          style: TextStyle(fontSize: 25),
        ),
        ElevatedButton(onPressed: resetAction, child: Text("Reset Quiz")),
      ],
    );
  }
}
