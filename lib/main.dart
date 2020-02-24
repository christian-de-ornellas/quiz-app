import "package:flutter/material.dart";
import 'package:quiz/questionario.dart';
import 'package:quiz/resultado.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntasSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      "texto": "Qual a sua cor favorita?",
      "respostas": [
        {'texto': "Azul", 'pontuacao': 8},
        {'texto': "Verde", 'pontuacao': 3},
        {'texto': "Amarelo", 'pontuacao': 2},
        {'texto': "Preto", 'pontuacao': 1}
      ]
    },
    {
      "texto": "Qual o seu animal favorito?",
      "respostas": [
        {"texto": "gato", "pontuacao": 8},
        {"texto": "cachorro", "pontuacao": 3},
        {"texto": "coelho", "pontuacao": 2},
        {"texto": "tartaruga", "pontuacao": 1}
      ]
    },
    {
      "texto": "Qual o seu instrutor favorito?",
      "respostas": [
        {"texto": "Ana", "pontuacao": 10},
        {"texto": "João", "pontuacao": 6},
        {"texto": "Leo", "pontuacao": 3},
        {"texto": "Pedro", "pontuacao": 1}
      ]
    },
  ];
  void _responder(int pontuacao) {
    setState(() {
      _perguntasSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntasSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntasSelecionada: _perguntasSelecionada,
                  quandoResponder: _responder)
              : Resultado(_pontuacaoTotal)),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
