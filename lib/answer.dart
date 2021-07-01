import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressCB;
  final String buttonText;

  Answer({required this.onPressCB, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        onPressed: onPressCB,
        child: Text(buttonText),
      ),
    );
  }
}
