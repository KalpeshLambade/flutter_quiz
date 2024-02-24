import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.text, required this.onTap, super.key});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          backgroundColor: const Color.fromARGB(229, 20, 23, 185),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white,fontSize: 15),
      ),
    );
  }
}
