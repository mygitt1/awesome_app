import 'package:awesome_app/answers.dart';
import 'package:awesome_app/questions.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quesIndex;
  final Function answerQues;
  Quiz({
    this.quesIndex,
    this.questions,
    this.answerQues,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quesIndex]['question'],
        ),
        ...(questions[quesIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQues(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
