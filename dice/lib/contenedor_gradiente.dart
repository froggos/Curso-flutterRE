import "package:dice/randomizador.dart";
import "package:flutter/material.dart";

const Alignment inicio = Alignment.topCenter;
const Alignment fin = Alignment.bottomCenter;

class ContenedorGradiente extends StatelessWidget {
  final Color colorInicial;
  final Color colorFinal;

  const ContenedorGradiente(this.colorInicial, this.colorFinal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorInicial,
            colorFinal,
          ],
          begin: inicio,
          end: fin,
        ),
      ),
      child: const Center(
        child: Randomizador(),
      ),
    );
  }
}
