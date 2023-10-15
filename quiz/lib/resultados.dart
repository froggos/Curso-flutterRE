import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/preguntas_respuestas.dart';
import 'package:quiz/resumen_preguntas.dart';

class Resultados extends StatelessWidget {
  final List<String> respuestasEscogidas;
  final void Function() reiniciarQuiz;

  const Resultados(
      {super.key,
      required this.respuestasEscogidas,
      required this.reiniciarQuiz});

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
    final dataResumen = obtenerResumenDatos();
    final numPreguntasTotales = preguntas.length;
    final numPreguntasCorrectas = dataResumen.where((data) {
      return data["respuesta_escogida"] == data["respuesta_correcta"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Haz respondido $numPreguntasCorrectas de $numPreguntasTotales preguntas correctamente",
                style: GoogleFonts.catamaran(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 30,
            ),
            ResumenPreguntas(dataResumen),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              icon: const Icon(
                Icons.refresh,
                size: 22,
                weight: 20,
                color: Colors.white,
              ),
              onPressed: reiniciarQuiz,
              label: Text(
                "Reiniciar quiz",
                style: GoogleFonts.catamaran(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
