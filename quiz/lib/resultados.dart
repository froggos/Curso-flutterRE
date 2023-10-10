import 'package:flutter/material.dart';
import 'package:quiz/data/preguntas_respuestas.dart';
import 'package:quiz/resumen_preguntas.dart';

class Resultados extends StatelessWidget {
  final List<String> respuestasEscogidas;

  const Resultados({super.key, required this.respuestasEscogidas});

  List<Map<String, Object>> obtenerResumenDatos() {
    final List<Map<String, Object>> resumen = [];

    for (int i = 0; i < respuestasEscogidas.length; i++) {
      resumen.add({
        "indice": i,
        "pregunta": preguntas[i].pregunta,
        "respuesta_correcta": preguntas[i].respuestas[0],
        "respuesta_escogida": respuestasEscogidas[i],
      });
    }

    return resumen;
  }

  @override
  Widget build(BuildContext context) {
    final numPreguntasTotales = 0;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Haz respondido X de Y preguntas correctamente"),
            const SizedBox(
              height: 30,
            ),
            ResumenPreguntas(obtenerResumenDatos()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Reiniciar quiz"),
            )
          ],
        ),
      ),
    );
  }
}
