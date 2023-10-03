import "package:flutter/material.dart";
import "contenedor_gradiente.dart";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: ContenedorGradiente(
        Color.fromARGB(255, 198, 191, 240),
        Color.fromARGB(255, 198, 191, 240),
      ),
    ),
  ));
}
