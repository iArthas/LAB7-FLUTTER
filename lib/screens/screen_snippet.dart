import 'package:flutter/material.dart';

// Este es un ejemplo de un snippet de pantalla genérico que puedes personalizar según tus necesidades
class ScreenSnippet extends StatelessWidget {
  const ScreenSnippet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Generada'),
      ),
      body: Center(
        child: const Text('Esta es una pantalla generada utilizando un snippet.'),
      ),
    );
  }
}
