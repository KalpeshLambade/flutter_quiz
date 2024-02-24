import 'package:flutter/material.dart';
import 'package:quize/answer_button.dart';
import 'package:quize/data/questions.dart';

class QuestionScrren extends StatefulWidget {
  const QuestionScrren({super.key});

  @override
  State<QuestionScrren> createState() {
    return _QuestionScrrenState();
  }
}

class _QuestionScrrenState extends State<QuestionScrren> {
  @override
  Widget build(context) {
    final currentQuestions = questions[0];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestions.text,
          style: const TextStyle(
              color: Color.fromARGB(255, 234, 240, 233), fontSize: 15),
        ),
        const SizedBox(
          height: 30,
        ),
        ...currentQuestions.answers.map((item) {
          return AnswerButton(text: item, onTap: () {});
        }),
      ],
    );
  }
}
