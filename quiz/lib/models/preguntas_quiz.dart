class PreguntaQuiz {
  final String pregunta;
  final List<String> respuestas;

  const PreguntaQuiz(this.pregunta, this.respuestas);

  List<String> obtenerRespuestasAleatorias() {
    final listaRandomizada = List.of(respuestas);
    listaRandomizada.shuffle();
    return listaRandomizada;
  }
}
