import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onTap;
  final String ansText;
  Answer(this.onTap, this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        onPressed: onTap,
        textColor: Colors.white,
        child: Text(
          ansText,
        ),
      ),
    );
  }
}
