import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> qaList;
  final void Function(int) onPressCB;

  Quiz({required this.questionIndex, required this.onPressCB, required this.qaList});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(qaList[questionIndex]["question"] as String),
        // The three dots here spreads the list of Answer widgets to individual Answers to be included as children
        // The map operates on the list of answers and dynamically generates the Answer widgets
        ...(qaList[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            onPressCB: () => onPressCB(answer["score"] as int),
            buttonText: answer["text"] as String,
          );
        })
      ],
    );
  }
}
