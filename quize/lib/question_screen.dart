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

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestions.text,
            style: const TextStyle(
                color: Color.fromARGB(255, 234, 240, 233), fontSize: 15),
            textAlign:TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestions.getShuffledAnswer().map((item) {
            return AnswerButton(text: item, onTap: () {});
          }),
        ],
      ),
    );
  }
}
