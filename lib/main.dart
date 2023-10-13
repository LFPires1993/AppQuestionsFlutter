import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() => runApp(const Perguntas());

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  final _questions = const [
    {
      'question': 'Qual sua cor favorita?',
      'response': [
        {
          'option': 'Azul',
          'score': 1,
        },
        {
          'option': 'Verde',
          'score': 2,
        },
        {
          'option': 'Preto',
          'score': 3,
        },
        {
          'option': 'Vermelho',
          'score': 4,
        },
      ]
    },
    {
      'question': 'Qual sua fruta favorita?',
      'response': [
        {
          'option': 'Pêra',
          'score': 1,
        },
        {
          'option': 'Banana',
          'score': 2,
        },
        {
          'option': 'Mamão',
          'score': 3,
        },
        {
          'option': 'Maçã',
          'score': 4,
        },
      ]
    },
    {
      'question': 'Qual o carro mais bonito?',
      'response': [
        {
          'option': 'Gol',
          'score': 1,
        },
        {
          'option': 'Onix',
          'score': 2,
        },
        {
          'option': 'HB20S',
          'score': 3,
        },
        {
          'option': 'Ka Sedan',
          'score': 4,
        },
      ]
    }
  ];

  var _totalScore = 0;

  var state = 0;
  _response(int score) {
    if (hasMoreQuestions) {
      setState(() {
        _totalScore += score;
        state++;
      });
    }
  }

  _reset() {
    setState(() {
      _totalScore = 0;
      state = 0;
    });
  }

  bool get hasMoreQuestions => state < _questions.length;

  @override
  Widget build(BuildContext context) {
    var responses =
        hasMoreQuestions ? _questions[state]['response'] as List<dynamic> : [];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'App Perguntas',
        ),
      ),
      body: hasMoreQuestions
          ? Questionario(
              question: _questions[state]['question'].toString(),
              dynamicResponses: responses,
              response: _response)
          : Resultado(_totalScore, _reset),
    ));
  }
}
