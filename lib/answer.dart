import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  Answer({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 0, 18, 80),
      child: Text(
        answer,
        style: TextStyle(fontSize: 20.5),
        textAlign: TextAlign.center,
      ),
    );
  }
}
