import 'package:flutter/material.dart';

class Question01 extends StatelessWidget {
  const Question01({super.key});

  @override
  Widget build(BuildContext context) {
    // Resolvendo a questão
    int INDICE = 12;
    int SOMA = 0;
    int K = 1;

    while (K < INDICE) {
      K = K + 1;
      SOMA = SOMA + K;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolução da Questão 01'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Questão 01',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Observe o trecho de código:\n\n'
                      'int INDICE = 12, SOMA = 0, K = 1;\n\n'
                      'enquanto K < INDICE faça\n\n'
                      '{ K = K + 1; SOMA = SOMA + K; }\n\n'
                      'imprimir(SOMA);',
                  style: TextStyle(fontSize: 16),
                ),
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'O valor final de SOMA é: $SOMA',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
