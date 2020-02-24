import 'package:flutter/material.dart';
import 'package:quiz/questao.dart';
import 'package:quiz/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntasSelecionada;
  final void Function() responder;

  bool get temPerguntaSelecionada {
    return perguntasSelecionada < perguntas.length;
  }

  Questionario(
      {@required this.perguntas,
      @required this.perguntasSelecionada,
      @required this.responder});
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntasSelecionada]["respostas"]
        : null;
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntasSelecionada]["texto"]),
        ...respostas.map((t) => Resposta(t, responder)).toList(),
      ],
    );
  }
}
