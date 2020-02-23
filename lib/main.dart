import "package:flutter/material.dart";

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntasSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntasSelecionada++;
    });
    print(_perguntasSelecionada);
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
                Text(perguntas[_perguntasSelecionada]),
                RaisedButton(
                  child: Text('Resposta 1'),
                  onPressed: _responder,
                ),
                RaisedButton(
                  child: Text('Resposta 2'),
                  onPressed: _responder,
                ),
                RaisedButton(
                  child: Text('Resposta 3'),
                  onPressed: _responder,
                )
              ],
            )));
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
