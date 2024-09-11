import 'package:flutter/material.dart';

class Question02 extends StatelessWidget {
  const Question02({super.key});

  @override
  Widget build(BuildContext context) {
    // Resolvendo cada uma das sequências
    // a) Sequência de números ímpares: 1, 3, 5, 7, ...
    final nextA = 9; // (incremento de 2)

    // b) Sequência de potências de 2: 2, 4, 8, 16, 32, 64, ...
    final nextB = 128; // (multiplica por 2)

    // c) Sequência de quadrados perfeitos: 0^2, 1^2, 2^2, 3^2, 4^2, ...
    final nextC = 49; // (7^2)

    // d) Sequência de quadrados de números pares: 2^2, 4^2, 6^2, 8^2, ...
    final nextD = 100; // (10^2)

    // e) Sequência de Fibonacci: 1, 1, 2, 3, 5, 8, ...
    final nextE = 13; // (soma dos dois anteriores)

    // f) Sequência personalizada: 2, 10, 12, 16, 17, 18, 19, ...
    final nextF = 20; // (adiciona valores de acordo com o padrão observado)

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolução da Questão 02'),
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
                 'Questão 02',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
              const SizedBox(height: 20),
              _buildSequenceText('a) 1, 3, 5, 7, ___', nextA),
              const SizedBox(height: 10),
              _buildSequenceText('b) 2, 4, 8, 16, 32, 64, ____', nextB),
              const SizedBox(height: 10),
              _buildSequenceText('c) 0, 1, 4, 9, 16, 25, 36, ____', nextC),
              const SizedBox(height: 10),
              _buildSequenceText('d) 4, 16, 36, 64, ____', nextD),
              const SizedBox(height: 10),
              _buildSequenceText('e) 1, 1, 2, 3, 5, 8, ____', nextE),
              const SizedBox(height: 10),
              _buildSequenceText('f) 2, 10, 12, 16, 17, 18, 19, ____', nextF),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSequenceText(String sequence, int nextValue) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            sequence,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Próximo valor: $nextValue',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
