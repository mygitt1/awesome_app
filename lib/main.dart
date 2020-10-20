import 'package:awesome_app/quiz.dart';
import 'package:awesome_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'question': 'What\'s your favourite Color ?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 6},
        {'text': 'White', 'score': 1},
        {'text': 'purple', 'score': 4}
      ],
    },
    {
      'question': 'What\'s your favourite Animal ?',
      'answer': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 6},
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Goat', 'score': 4}
      ],
    },
    {
      'question': 'What\'s your favourite Sports ?',
      'answer': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'Football', 'score': 6},
        {'text': 'Hockey', 'score': 1},
        {'text': 'Rugby', 'score': 4}
      ],
    }
  ];

  void resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    if (_quesIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Quiz',
          ),
        ),
        body: _quesIndex < _questions.length
            ? Quiz(
                answerQues: _answerQues,
                quesIndex: _quesIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
