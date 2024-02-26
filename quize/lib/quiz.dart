import 'package:flutter/material.dart';
import 'package:quize/question_screen.dart';
import 'package:quize/result_screen.dart';
import 'package:quize/start_screen.dart';
import 'package:quize/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var activeScreen = 'start-screen';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = const ResultsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 143, 10, 196),
              Color.fromARGB(255, 55, 55, 210),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Center(child: screenWidget),
        ),
      ),
    );
  }
}
