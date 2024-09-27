import 'package:flutter/material.dart';

class Titulo1 extends StatelessWidget {
  final String texto;
  final double tamanho;
  const Titulo1({super.key, required this.texto, required this.tamanho, });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0),
        fontFamily: 'Nerko One',
        fontSize: tamanho,
      ),
    );
  }
}