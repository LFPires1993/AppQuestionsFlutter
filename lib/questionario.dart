import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final String question;
  final List dynamicResponses;
  final Function(int) response;
  const Questionario(
      {required this.question,
      required this.dynamicResponses,
      required this.response,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questao(question),
      ...dynamicResponses.map((t) => Resposta(
            t['option'].toString(),
            () => response(t['score']),
          )),
    ]);
  }
}
