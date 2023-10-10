import "package:quiz/models/preguntas_quiz.dart";

const preguntas = [
  PreguntaQuiz(
      "Cuales son los principales bloques de construccion de Flutter?", [
    "Widgets",
    "Components",
    "Blocks",
    "Functions",
  ]),
  PreguntaQuiz("Como son construidas las IU de Flutter?", [
    "Combinando widgets en codigo",
    "Combinando widgets en un editor visual",
    "Definiendo widgets en archivos de configuracion",
    "Utilizando XCode para iOS y Android Studio para Android",
  ]),
  PreguntaQuiz("Cual es el proposito de un StatefulWidget?", [
    "Actualizar la IU cuando la informacion cambia",
    "Actualizar la informacion cuando la IU cambia",
    "Ignorar los cambios de informacion",
    "Renderizar IU que no depende de informacion",
  ]),
];
