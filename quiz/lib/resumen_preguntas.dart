import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumenPreguntas extends StatelessWidget {
  final List<Map<String, Object>> resumenDatos;

  const ResumenPreguntas(this.resumenDatos, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: resumenDatos.map((dato) {
            return Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(
                    right: 14,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:
                        dato["respuesta_correcta"] == dato["respuesta_escogida"]
                            ? const Color.fromARGB(255, 82, 169, 240)
                            : const Color.fromARGB(255, 241, 107, 97),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Text(
                    ((dato["indice"] as int) + 1).toString(),
                    style: GoogleFonts.catamaran(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
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
        ),
      ),
    );
  }
}
