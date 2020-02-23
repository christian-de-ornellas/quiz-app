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
      {
        "texto": "Qual a sua cor favorita?",
        "respostas": ["Azul", "Verde", "Amarelo", "Preto"]
      },
      {
        "texto": "Qual o seu animal favorito?",
        "respostas": ["gato", "cachorro", "coelho", "tartaruga"]
      },
      {
        "texto": "Qual o seu instrutor favorito?",
        "respostas": ["Ana", "João", "Leo", "Pedro"]
      },
    ];

    List<String> respostas = perguntas[_perguntasSelecionada]["respostas"];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            body: Column(
              children: <Widget>[
                Questao(perguntas[_perguntasSelecionada]["texto"]),
                ...respostas.map((t) => Resposta(t, _responder)).toList(),
              ],
            )));
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
