import 'package:flutter/material.dart';

class Question05 extends StatelessWidget {
  const Question05({super.key});

  @override
  Widget build(BuildContext context) {

    double distanciaTotal = 125;
    double velocidadeCarro = 90;
    double velocidadeCaminhao = 80;
    int numeroPedagios = 3;
    double tempoAtrasoCarro = (5 * numeroPedagios) / 60;

    double tempoEncontroSemAtraso = distanciaTotal / (velocidadeCarro + velocidadeCaminhao);

    double tempoRealCarro = tempoEncontroSemAtraso + tempoAtrasoCarro;

    double distanciaCarro = velocidadeCarro * tempoEncontroSemAtraso;
    double distanciaCaminhao = distanciaTotal - distanciaCarro;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolução da Questão 05'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
             const Align(
               alignment: Alignment.topLeft,
               child:  Text(
                 'Questão 05',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
                 textAlign: TextAlign.center,
               ),
             ),
              const SizedBox(height: 20),
              const Text(
                'Dois veículos, um carro e um caminhão, estão viajando entre '
                    'Ribeirão Preto e Barretos. Qual estará mais próximo de Ribeirão '
                    'Preto quando se cruzarem?',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Resolução:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Distância percorrida pelo carro: ${distanciaCarro.toStringAsFixed(2)} km',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                'Distância percorrida pelo caminhão: ${distanciaCaminhao.toStringAsFixed(2)} km',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                _determinarVeiculoMaisProximo(distanciaCarro, distanciaCaminhao),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _determinarVeiculoMaisProximo(double distanciaCarro, double distanciaCaminhao) {
    return 'Quando os veículos se cruzarem, o caminhão estará mais próximo de Ribeirão Preto. Isso ocorre porque o caminhão sai de Barretos, e como ele não tem atrasos nos pedágios, ele estará mais perto do ponto de origem de Ribeirão Preto no momento do cruzamento.';
  }
}
