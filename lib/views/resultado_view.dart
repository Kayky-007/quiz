import 'package:flutter/material.dart';
import 'package:quiz/components/titulo.dart';

class ResultadoView extends StatefulWidget {
  const ResultadoView({super.key});

  @override
  State<ResultadoView> createState() => _ResultadoViewState();
}

class _ResultadoViewState extends State<ResultadoView> {
  @override
  Widget build(BuildContext context) {
    // A variável 'pontos' deve ser obtida dentro do 'build' para garantir que o 'context' esteja disponível.
    final int pontos = ModalRoute.of(context)!.settings.arguments as int;
String msg = '';

if (pontos == 0) {
  msg = 'Parabéns, você errou todas as questões. Tente novamente!';
}else if( pontos == 3){
  msg = 'Parabéns, você acertou 3 questões. Continue assim!';

}else{
  msg = 'Parabéns, você acertou $pontos de 3 questões. Ta no caminho!';
}

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tela de resultado',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nerko One',
            ),
          ),
        ),
        backgroundColor: const Color(0xFF5734e2),
      ),
      body: Column(
        
        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Titulo1(texto: msg, tamanho: 15)
          ],
         )
        
        ],
      ),
    );
  }
}

