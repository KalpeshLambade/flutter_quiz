import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColor, {super.key});

  final List<Color> gradientColor;

  onPressed() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradientColor,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
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
            OutlinedButton(
              onPressed: onPressed,
              child: const Text(
                'Start Quize',
                style: TextStyle(color: Colors.white, fontSize: 20.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
