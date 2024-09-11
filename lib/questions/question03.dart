import 'package:flutter/material.dart';

class Question03 extends StatelessWidget {
  const Question03({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> faturamentoDiario = [
      1200.50,
      1500.30,
      0,
      0,
      1800.25,
      0,
      1700.75,
      2000.00,
      0,
    ];

    double menorFaturamento = _calcularMenorFaturamento(faturamentoDiario);
    double maiorFaturamento = _calcularMaiorFaturamento(faturamentoDiario);
    double mediaAnual = _calcularMediaAnual(faturamentoDiario);
    int diasAcimaDaMedia =
        _calcularDiasAcimaDaMedia(faturamentoDiario, mediaAnual);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolução da Questão 03'),
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
                  'Questão 03',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Menor faturamento do ano: R\$ ${menorFaturamento.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Maior faturamento do ano: R\$ ${maiorFaturamento.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),
             Align(
               alignment: Alignment.topLeft,
               child:  Text(
                 'Dias com faturamento superior à média anual: $diasAcimaDaMedia',
                 style: TextStyle(fontSize: 18),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }

  double _calcularMenorFaturamento(List<double> faturamentoDiario) {
    double menor = faturamentoDiario
        .where((valor) => valor > 0)
        .reduce((a, b) => a < b ? a : b);
    return menor;
  }

  double _calcularMaiorFaturamento(List<double> faturamentoDiario) {
    double maior = faturamentoDiario
        .where((valor) => valor > 0)
        .reduce((a, b) => a > b ? a : b);
    return maior;
  }

  double _calcularMediaAnual(List<double> faturamentoDiario) {
    List<double> diasComFaturamento =
        faturamentoDiario.where((valor) => valor > 0).toList();
    double somaFaturamento = diasComFaturamento.reduce((a, b) => a + b);
    return somaFaturamento / diasComFaturamento.length;
  }

  int _calcularDiasAcimaDaMedia(
      List<double> faturamentoDiario, double mediaAnual) {
    int diasAcima = faturamentoDiario
        .where((valor) => valor > 0 && valor > mediaAnual)
        .length;
    return diasAcima;
  }
}
