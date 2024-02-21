import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  
  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color:const Color.fromARGB(126, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          'Learn Flutter the fun way !',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quize',
          ),
        )
      ],
    );
  }
}
