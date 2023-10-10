import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/boton_respuesta.dart';
import 'package:quiz/data/preguntas_respuestas.dart';

class Preguntas extends StatefulWidget {
  final void Function(String respuesta) enEleccionRespuesta;

  const Preguntas({super.key, required this.enEleccionRespuesta});

  @override
  State<Preguntas> createState() {
    return _PreguntasState();
  }
}

class _PreguntasState extends State<Preguntas> {
  var indicePreguntas = 0;

  void responderPregunta(String respuestaeElegida) {
    widget.enEleccionRespuesta(respuestaeElegida);
    setState(() {
      indicePreguntas += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final preguntaActual = preguntas[indicePreguntas];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              preguntaActual.pregunta,
              style: GoogleFonts.catamaran(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...preguntaActual.obtenerRespuestasAleatorias().map((item) {
              return BotonRespuesta(
                textoRespuesta: item,
                enPresion: () {
                  responderPregunta(item);
                },
              );
            }),
            // BotonRespuesta(
            //   textoRespuesta: preguntaActual.respuestas[0],
            //   enPresion: () {},
            // ),
            // BotonRespuesta(
            //   textoRespuesta: preguntaActual.respuestas[1],
            //   enPresion: () {},
            // ),
            // BotonRespuesta(
            //   textoRespuesta: preguntaActual.respuestas[2],
            //   enPresion: () {},
            // ),
            // BotonRespuesta(
            //   textoRespuesta: preguntaActual.respuestas[3],
            //   enPresion: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
