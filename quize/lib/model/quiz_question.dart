class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text,this.answers);

  List<String> getShuffledAnswer(){
    final shuffledAnswer = List.of(answers);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}