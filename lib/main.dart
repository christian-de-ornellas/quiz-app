import "package:flutter/material.dart";

main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            body: Text('Minhas perguntas')));
  }
}
