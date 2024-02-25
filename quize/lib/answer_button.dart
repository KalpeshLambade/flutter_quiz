import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.text, required this.onTap, super.key});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            backgroundColor: const Color.fromRGBO(8, 10, 109, 0.918),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        onPressed: onTap,
        child: Text(
          text,
          style:  GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
