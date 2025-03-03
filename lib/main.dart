import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text('Dados'),
          ),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        ),
        body: Dados(),
      ),
    ),
  );
}

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numeroesquerda = 1;
  int numerodireita = 1;

  void AlterarDados() {
    setState(() {
      numeroesquerda = Random().nextInt(6) + 1;
      numerodireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                AlterarDados();
              },
              child: Image.asset('imagens/dado$numeroesquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                AlterarDados();
              },
              child: Image.asset('imagens/dado$numerodireita.png'),
            ),
          ),
        ],
      ),
    );
  }
}
