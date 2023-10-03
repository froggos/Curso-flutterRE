import 'package:flutter/material.dart';
import 'package:quiz/inicio.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange,
              Color.fromARGB(255, 255, 141, 34),
            ],
          ),
        ),
        child: const Inicio(),
      ),
    ),
  ));
}
