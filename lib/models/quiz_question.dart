class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctAnswer;

  const QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  List<String> get shuffledAnswers {
    final newAnswers = List.of(answers);
    newAnswers.shuffle();
    return newAnswers;
  }
}
