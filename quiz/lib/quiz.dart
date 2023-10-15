import 'package:flutter/material.dart';
import 'package:quiz/data/preguntas_respuestas.dart';
import 'package:quiz/inicio.dart';
import 'package:quiz/preguntas.dart';
import 'package:quiz/resultados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizEstado();
  }
}

class _QuizEstado extends State<Quiz> {
  List<String> respuestasElegidas = [];
  var pantallaActiva = "inicio-pantalla";

  @override
  void initState() {
    pantallaActiva = "inicio-pantalla";
    super.initState();
  }

  void cambiarPantalla() {
    setState(() {
      pantallaActiva = "preguntas-pantalla";
    });
  }

  void escogerRespuesta(String respuesta) {
    respuestasElegidas.add(respuesta);

    if (respuestasElegidas.length == preguntas.length) {
      setState(() {
        pantallaActiva = "resultados-pantalla";
      });
    }
  }

  void reiniciarQuiz() {
    setState(() {
      respuestasElegidas = [];
      pantallaActiva = "preguntas-pantalla";
    });
  }

  @override
  Widget build(context) {
    Widget pantallaWidget = Inicio(cambiarPantalla);

    if (pantallaActiva == "preguntas-pantalla") {
      pantallaWidget = Preguntas(
        enEleccionRespuesta: escogerRespuesta,
      );
    }

    if (pantallaActiva == "resultados-pantalla") {
      pantallaWidget = Resultados(
        respuestasEscogidas: respuestasElegidas,
        reiniciarQuiz: reiniciarQuiz,
      );
    }

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
          child: pantallaWidget,
        ),
      ),
    );
  }
}
