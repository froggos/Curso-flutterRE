import 'package:flutter/material.dart';

class ResumenPreguntas extends StatelessWidget {
  final List<Map<String, Object>> resumenDatos;

  const ResumenPreguntas(this.resumenDatos, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: resumenDatos.map((dato) {
        return Row(
          children: [
            Text(
              ((dato["indice"] as int) + 1).toString(),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(dato["pregunta"] as String),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(dato["respuesta_escogida"] as String),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(dato["respuesta_correcta"] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
