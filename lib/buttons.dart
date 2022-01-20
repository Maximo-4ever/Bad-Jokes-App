import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function(String) changeJokeIndex;

  Buttons({required this.changeJokeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 30),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("prev");
            },
            child: Icon(
              Icons.arrow_left_rounded,
              size: 45,
            ),
            backgroundColor: Color.fromRGBO(236, 32, 79, 1),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            changeJokeIndex("next");
          },
          child: Icon(
            Icons.arrow_right_rounded,
            size: 45,
          ),
        ),
      ],
    );
  }
}
