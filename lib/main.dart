import "package:flutter/material.dart";
import 'package:quiz/questao.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntasSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntasSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            body: Column(
              children: <Widget>[
                Questao(perguntas[_perguntasSelecionada]),
                Resposta('Resposta 1', _responder),
                Resposta('Resposta 2', _responder),
                Resposta('Resposta 3', _responder),
              ],
            )));
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
