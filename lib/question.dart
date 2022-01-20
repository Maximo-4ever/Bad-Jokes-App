import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 0, 18, 15),
      child: Text(
        question,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
