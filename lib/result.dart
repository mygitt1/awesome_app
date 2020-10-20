import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function tapHandler;

  Result(this.resultScore, this.tapHandler);

  String get lastResult {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awsome..!!!';
    } else if (resultScore <= 14) {
      resultText = 'Your are less Awesome';
    } else if (resultScore <= 16) {
      resultText = 'You are Bad';
    } else {
      resultText = 'You are BadAss';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            lastResult,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: tapHandler,
            child: Icon(
              Icons.settings_backup_restore,
            ),
          ),
        ],
      ),
    );
  }
}
