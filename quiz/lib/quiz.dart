import 'package:flutter/material.dart';
import 'package:quiz/inicio.dart';
import 'package:quiz/preguntas.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizEstado();
  }
}

class _QuizEstado extends State<Quiz> {
  Widget? pantallaActiva;

  @override
  void initState() {
    pantallaActiva = Inicio(cambiarPantalla);
    super.initState();
  }

  void cambiarPantalla() {
    setState(() {
      pantallaActiva = const Preguntas();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
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
          child: pantallaActiva,
        ),
      ),
    );
  }
}
