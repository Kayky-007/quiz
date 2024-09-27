import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/views/inicio_view.dart';
import 'package:quiz/views/perguntas_view.dart';
import 'package:quiz/views/resultado_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/perguntas': (context) => const PerguntasView(),
        '/resultado': (context) => const ResultadoView(),
        '/': (context) => const InicioView(),
      },
      initialRoute: '/',
    );
  }
}
