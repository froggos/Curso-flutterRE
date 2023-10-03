import 'dart:math';

import 'package:flutter/material.dart';

final randomizador = Random();

class Randomizador extends StatefulWidget {
  const Randomizador({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EstadoRandomizador();
  }
}

class _EstadoRandomizador extends State<Randomizador> {
  List<String> listaNumeros = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png",
  ];
  String valorActualDado = "assets/images/dice-1.png";

  void _lanzarDado() {
    setState(() {
      valorActualDado = listaNumeros[randomizador.nextInt(6)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          valorActualDado,
          width: 150,
        ),
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
          onPressed: _lanzarDado,
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 18,
            ),
          ),
          child: const Text("Lanzar dado"),
        )
      ],
    );
  }
}
