import 'package:app_questions/questao.dart';
import 'package:app_questions/resposta.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int totalScore;
  final Function() reset;
  const Resultado(this.totalScore, this.reset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao('A sua pontuação foi de: $totalScore'),
        Resposta('Retornar a primeira página.', reset),
      ],
    );
  }
}
