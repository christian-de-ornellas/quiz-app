import "package:flutter/material.dart";
import 'package:quiz/questionario.dart';
import 'package:quiz/resultado.dart';

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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntasSelecionada: _perguntasSelecionada,
                  responder: _responder)
              : Resultado()),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
