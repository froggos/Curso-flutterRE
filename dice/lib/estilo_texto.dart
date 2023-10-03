import 'package:flutter/material.dart';

class EstiloTexto extends StatelessWidget {
  final String textoSalida;

  const EstiloTexto(this.textoSalida, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textoSalida,
      style: const TextStyle(
        color: Color.fromARGB(255, 94, 94, 94),
        fontSize: 28,
      ),
    );
  }
}
