import 'package:flutter/material.dart';
import 'package:quiz/components/espacamento_h.dart';
import 'package:quiz/components/fab.dart';

class InicioView extends StatefulWidget {
  const InicioView({super.key});

  @override
  State<InicioView> createState() => _InicioViewState();
}

class _InicioViewState extends State<InicioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tela inicial',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nerko One',
            ),
          ),
        ),
        backgroundColor: Color(0xFF5734e2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logoQuiz.png',
              width: 200,
            ),
            EspacamentoH(h: 20),
            Text(
              'Clique no botão para iniciar a aplicação!',
              style: TextStyle(fontSize: 18),
            ),
            EspacamentoH(h: 20),
            Fab(),
          ],
        ),
      ),
    );
  }
}