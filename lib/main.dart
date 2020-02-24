import "package:flutter/material.dart";
import 'package:quiz/questao.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntasSelecionada = 0;
  final _perguntas = const [
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
  void _responder() {
    setState(() {
      _perguntasSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntasSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntasSelecionada]["respostas"]
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_perguntasSelecionada]["texto"]),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Center(
                child: Text(
                  'PARA-BÉNS',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
