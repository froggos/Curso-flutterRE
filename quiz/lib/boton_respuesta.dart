import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonRespuesta extends StatelessWidget {
  final String textoRespuesta;
  final void Function() enPresion;

  const BotonRespuesta({
    super.key,
    required this.textoRespuesta,
    required this.enPresion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 3.5,
        bottom: 3.5,
      ),
      child: ElevatedButton(
        onPressed: enPresion,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 102, 0),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          textoRespuesta,
          textAlign: TextAlign.center,
          style: GoogleFonts.catamaran(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
