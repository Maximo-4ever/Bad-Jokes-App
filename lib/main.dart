import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _jokes = [
    {
      "question": "¿Cuál es el café más peligroso del mundo?",
      "answer": "El ex-preso"
    },
    {
      "question": "Mamá, mamá, los spaghetti se están pegando.",
      "answer": "Déjalos que se maten"
    },
    {"question": "Soy Rosa.", "answer": "Ah, perdóname, es que soy daltónico."},
    {
      "question": "Oye, ¿cuál es tu plato favorito y por qué?",
      "answer": "Pues el hondo, porque cabe más comida…"
    },
    {"question": "¿Qué pasa si tiras un pato al agua?.", "answer": "Nada."},
    {
      "question": "¿Qué le dice la foca a su madre?",
      "answer": "I love you, mother foca."
    },
    {
      "question": "Mamá, en el cole me llaman despistado.",
      "answer": "Niño, que esta no es tu casa."
    },
    {
      "question": "Mamá, ¿América está muy lejos?",
      "answer": "Calla y sigue nadando."
    },
    {
      "question": "Parece que su tos está mejor.",
      "answer": "Sí, estuve practicando toda la noche."
    },
    {
      "question": "¡Camarero! Este filete tiene muchos nervios.",
      "answer": "Normal, es que es la primera vez que se lo comen."
    },
  ];

  var _jokeIndex = 0;

  void _changeJokeIndex(String direction) {
    if (direction == "next") {
      if (_jokeIndex != _jokes.length - 1) {
        setState(() {
          _jokeIndex++;
        });
      } else {
        setState(() {
          _jokeIndex = 0;
        });
      }
    } else if (direction == "prev") {
      if (_jokeIndex != 0) {
        setState(() {
          _jokeIndex--;
        });
      } else {
        setState(() {
          _jokeIndex = _jokes.length - 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(question: _jokes[_jokeIndex]["question"] as String),
              Answer(answer: _jokes[_jokeIndex]["answer"] as String),
              Buttons(changeJokeIndex: _changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }
}
