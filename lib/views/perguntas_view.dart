import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/components/titulo.dart';
import 'package:quiz/views/resultado_view.dart';

import '../components/espacamento_h.dart';

class PerguntasView extends StatefulWidget {
  const PerguntasView({super.key});

  @override
  State<PerguntasView> createState() => _PerguntasViewState();
}

class _PerguntasViewState extends State<PerguntasView> {
  List pergunta = Lista.perguntas;
  int cont = 0;
  int contp = 1;
  int pontos = 0;
  int respostaEscolhida = -1;

  void verificarResposta() {
    if (respostaEscolhida == pergunta[cont]['resposta correta']) {
      pontos++;
      print(pontos);
    } else {
      print('Errou');
    }
  }

  void proximaPergunta() {
    if (cont < pergunta.length - 1) {
      setState(() {
        cont++;
        contp++;
        respostaEscolhida = -1;
      });
    } else {
      Navigator.pushReplacementNamed(context, '/resultado', arguments: pontos);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Titulo1(texto: 'Pergunta $contp', tamanho: 30, ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pergunta[cont]['pergunta']),
            ],
          ),
          EspacamentoH(h: 20),
          // Primeira resposta
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    respostaEscolhida = 0;
                  });
                  verificarResposta();
                  proximaPergunta();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  elevation: 10,
                  child: Container(
                    width: 450,
                    height: 100,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          pergunta[cont]['respostas'][0],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          EspacamentoH(h: 20),
          // Segunda resposta
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    respostaEscolhida = 1;
                  });
                  verificarResposta();
                  proximaPergunta();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  elevation: 10,
                  child: Container(
                    width: 450,
                    height: 100,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          pergunta[cont]['respostas'][1],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          EspacamentoH(h: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    respostaEscolhida = 2;
                  });
                  verificarResposta();
                  proximaPergunta();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  elevation: 10,
                  child: Container(
                    width: 450,
                    height: 100,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          pergunta[cont]['respostas'][2],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          EspacamentoH(h: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    respostaEscolhida = 3;
                  });
                  verificarResposta();
                  proximaPergunta();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  elevation: 10,
                  child: Container(
                    width: 450,
                    height: 100,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          pergunta[cont]['respostas'][3],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Lista {
  static const perguntas = [
    {
      "pergunta": "Qual o maior números?",
      "respostas": ["9", "2", "7", "10"],
      "resposta correta": 3,
    },
    {
      "pergunta": "Quantos meses têm 31 dias?",
      "respostas": ["6", "7", "8", "9"],
      "resposta correta": 3,
    },
    {
      "pergunta": "Quantos planetas existem no Sistema Solar?",
      "respostas": ["7", "8", "9", "10"],
      "resposta correta": 1,
    }
  ];
}
