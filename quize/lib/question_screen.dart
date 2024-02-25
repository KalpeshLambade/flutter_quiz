import 'package:flutter/material.dart';
import 'package:quize/answer_button.dart';
import 'package:quize/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScrren extends StatefulWidget {
  const QuestionScrren({super.key});

  @override
  State<QuestionScrren> createState() {
    return _QuestionScrrenState();
  }
}

class _QuestionScrrenState extends State<QuestionScrren> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(questions.length > currentQuestionIndex+1){
        currentQuestionIndex++;
      }else{
        currentQuestionIndex = 0;
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestions.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight:FontWeight.bold,
              fontSize: 25, 
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestions.getShuffledAnswer().map((item) {
            return AnswerButton(text: item, onTap: answerQuestion);
          }),
        ],
      ),
    );
  }
}
