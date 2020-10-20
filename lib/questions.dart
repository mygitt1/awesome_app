import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;

  Question(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Text(
        quesText,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
