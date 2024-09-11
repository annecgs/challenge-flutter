import 'package:challengeflutter/questions/question01.dart';
import 'package:challengeflutter/questions/question02.dart';
import 'package:challengeflutter/questions/question03.dart';
import 'package:challengeflutter/questions/question05.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Desenvolvedor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desafio Desenvolvedor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _buildCard(
                    context,
                    'Questão 01',
                    'assets/soma.png', // Insira a imagem correta na pasta assets
                    'Soma dos números',
                    const Question01(),
                  ),
                  _buildCard(
                    context,
                    'Questão 02',
                    'assets/logica.png', // Insira a imagem correta na pasta assets
                    'Sequências lógicas',
                    const Question02(),
                  ),
                  _buildCard(
                    context,
                    'Questão 03',
                    'assets/fatura.png', // Insira a imagem correta na pasta assets
                    'Faturamento anual',
                    const Question03(),
                  ),
                  _buildCard(
                    context,
                    'Questão 05',
                    'assets/estrada.png', // Insira a imagem correta na pasta assets
                    'Veículos na estrada',
                    const Question05(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String imagePath, String subtitle, Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

