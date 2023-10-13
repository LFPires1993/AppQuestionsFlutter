import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String pergunta;

  const Questao(this.pergunta, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        pergunta,
        style: const TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
